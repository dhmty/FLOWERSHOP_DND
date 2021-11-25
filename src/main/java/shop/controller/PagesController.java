package shop.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.bean.Mailer;
import shop.dao.UserDAO;
import shop.entity.User;

@Transactional
@Controller
@RequestMapping("/pages")
public class PagesController {
	
	@Autowired
	UserDAO userDao;
	
	@Autowired
	Mailer mailer;
	
	
	final String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+(?:\\.[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+)*@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$";
	Pattern pattern = Pattern.compile(regex);
	// Mapping jsp
	
	// login User
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("detailUser", new User());
		return "pages/login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginValidation(HttpSession session, ModelMap model,@ModelAttribute("detailUser") User user,
			BindingResult errors) {
		
		Matcher matcher = pattern.matcher(user.getEmail().trim());
		
		if (!matcher.matches()) {
			System.out.println(user.getEmail());
			errors.rejectValue("email", "user", "Email invalidate");
		}
		if (user.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "user", "Email cannot be blank");
		}
		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Password cannot be blank");
		}

		if (errors.hasErrors()) {
			return "pages/login";
		} else {
			if (userDao.login(user.getEmail(), user.getPassword()) == null) {
				model.addAttribute("message", "Invalid Email or Password");
				model.addAttribute("detailUser", new User());
				return "pages/login";
			} else {
				User _user = userDao.login(user.getEmail(), user.getPassword());
				System.out.println("fullname...." + _user.getName());
				session.setAttribute("userLogin", _user);
				return "pages/my_account";
			}
		}

	}
	
	// logout
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		// remove all session
//
//			FilmSession _film_Session = (FilmSession) session.getAttribute("listFilm");
//			if (_film_Session != null) {
//				session.removeAttribute("listFilm");
//			}

		User user = (User) session.getAttribute("userLogin");
		if (user != null) {
			session.removeAttribute("userLogin");
		}

//			// show film by day
//			String day = (String) session.getAttribute("chooseDay");
//			if (day != null) {
//				session.removeAttribute("chooseDay");
//			}
//
//			// show time by film
//			Film film = (Film) session.getAttribute("nameFilm");
//			if (film != null) {
//				session.removeAttribute("nameFilm");
//			}
//
//			HourSession listHour = (HourSession) session.getAttribute("listHour");
//			if (listHour != null) {
//				session.removeAttribute("listHour");
//			}

		return "redirect:/";

		}
	
	
	// forgotPassword
	@RequestMapping(value="forgotPassword", method = RequestMethod.GET)
	public String forgotPassword() {
		return "pages/forgotPassword";
	}
	
	@RequestMapping(value = "forgotPassword", method = RequestMethod.POST)
	public String sendEmail(ModelMap model, @RequestParam("email") String email) {
		
		Matcher matcher = pattern.matcher(email.trim());
		
		if (!matcher.matches()) {
			System.out.println(email);
			model.addAttribute("message", "Email invalidate");
		 
		}
		else {
			User user = userDao.getDetailByEmail(email.trim());
			if (user != null) {
				
				int random = (int) Math.floor(((Math.random() * 899999) + 100000));/// random sinh số có 6 chữ số
				String passReset=String.valueOf(random);
				
				String from = "DND_FLOWER_SHOP_2021";
				String subject = "RESET USER'S PASSWORD";
				String body = "User's Email: "+ email.trim() + "\nYour New Password: "+passReset;
				
				user.setPassword(passReset);
				userDao.createOrUpdate(user);
				mailer.send(from, email, subject, body);
				model.addAttribute("success", "Send Success. Check your email to reset password.");
			}
			else {
				model.addAttribute("message", "User's account with this Email does not exists");
			}
		}
		return "pages/forgotPassword";

	}
	
	
	//register
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		model.addAttribute("detailUser", new User());
		return "pages/register";
	}
	// create -register
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String create(ModelMap model, @Validated @ModelAttribute("detailUser") User user,
		 BindingResult errors) {
	

			if (errors.hasErrors()) {
				return "pages/register";

			} else {
				if (userDao.getDetailByEmail(user.getEmail().trim())!=null) {
					model.addAttribute("message","User's account with this Email already exists");
					return "pages/register";
				} 
				if (userDao.getDetailByPhone(user.getPhone().trim())!=null) {
					model.addAttribute("message","User's account with this Phone Number already exists");
					return "pages/register";
				} 
				user.setAddress("");
				userDao.createOrUpdate(user);
				return "pages/login";
			}
	}
	
	
	@RequestMapping("my_account")
	public String my_account() {
		return "pages/my_account";
	}
	
	@RequestMapping("error")
	public String error() {
		return "pages/error404";
	}
	
	@RequestMapping("about_us")
	public String about_us() {
		return "pages/about_us";
	}
	
	// send mail contact_us
	@RequestMapping(value="contact_us",method = RequestMethod.GET)
	public String contact_us() {
		return "pages/contact_us";
	}
	
	@RequestMapping(value="contact_us",method = RequestMethod.POST)
	public String contact_us(ModelMap model,
							@RequestParam("con_name") String con_name,
							@RequestParam("con_email") String con_email,
							@RequestParam("con_content") String subject,
							@RequestParam("con_message") String body) {
		
		try {
			Matcher matcher = pattern.matcher(con_email.trim());
			if (!matcher.matches()) {
				System.out.println(con_email);
				model.addAttribute("message", "Email invalidate");
			}
			else if(con_name.trim().isEmpty()) {
				model.addAttribute("message", "Name cannot be blank");
			}
			else if(subject.trim().isEmpty()) {
				model.addAttribute("message", "Subject cannot be blank");
			}
			else if(body.trim().isEmpty()) {
				model.addAttribute("message", "Message Body cannot be blank");
			}
			else {
				//Send Mail
				String from=con_email.trim();
				body="From Name: "+ con_name+" - Email: "+con_email+body;
				subject="Chăm Sóc Khách Hàng - "+subject;
			    String to="dndflowershop@gmail.com"; // mã hóa vào file conf sau
				mailer.send(from, to, subject, body);
				model.addAttribute("message", "Send Email Sucess !");
			}
		}
		catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			model.addAttribute("message", "Can not Send Email !");
		}
		
		return "pages/contact_us";
	}
	
	@RequestMapping("frequently_questions")
	public String frequently_questions() {
		return "pages/frequently_questions";
	}
	
	
}
