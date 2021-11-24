package shop.controller;

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

import shop.dao.UserDAO;
import shop.entity.User;

@Transactional
@Controller
@RequestMapping("/pages")
public class PagesController {
	
	@Autowired
	UserDAO userDao;
	// Mapping jsp
	
	// login User
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("detailUser", new User());
		return "pages/login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginValidation(HttpSession session, ModelMap model, @Validated @ModelAttribute("detailUser") User user,
			BindingResult errors) {
//		if (account.getUsername().trim().length() == 0) {
//			errors.rejectValue("username", "account", "Vui lòng không để trống username!");
//		}
//		if (account.getPassword().trim().length() == 0) {
//			errors.rejectValue("password", "account", "Vui lòng không để trống password!");
//		}

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
	
	@RequestMapping("forgotPassword")
	public String forgotPassword() {
		return "pages/forgotPassword";
	}
	
	@RequestMapping("register")
	public String register() {
		return "pages/register";
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
	
	@RequestMapping("contact_us")
	public String contact_us() {
		return "pages/contact_us";
	}
	
	@RequestMapping("frequently_questions")
	public String frequently_questions() {
		return "pages/frequently_questions";
	}
	
	
}
