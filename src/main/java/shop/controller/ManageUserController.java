package shop.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.xml.bind.DatatypeConverter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.dao.ManageUserDAO;
import shop.entity.User;

@Controller
@RequestMapping("/admin/user")
public class ManageUserController {
	@Autowired
	ManageUserDAO manageUserDAO;
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String home(ModelMap model) {
		model.addAttribute("listUser", manageUserDAO.getListUser());
		return "admin/user";
	}
	
	@ModelAttribute("userNew")
	public User userNew() {
		return new User();
	}
	@ModelAttribute("userEdit")
	public User userEdit() {
		return new User();
	}
	
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("userNew") User userNew, BindingResult errors) {
		System.out.println("has errors " + errors.hasErrors());
		model.addAttribute("them_saidinhdang", errors.hasErrors());
		model.addAttribute("userNew", userNew);
		if(userNew.getName().trim().length() == 0) {
			errors.rejectValue("name", "userNew", "Vui lòng nhập họ tên");
		}
		if(userNew.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "userNew", "Vui lòng nhập email");
		}
		if(userNew.getPhone().trim().length() != 10) {
			errors.rejectValue("phone", "userNew", "Vui lòng nhập đủ số điện thoại (10 số)");
		}
		if(userNew.getAddress().trim().length() == 0) {
			errors.rejectValue("address", "userNew", "Vui lòng nhập địa chỉ");
		}
		if(userNew.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "userNew", "Vui lòng nhập password");
		}
		if(errors.hasErrors()) {
			return home(model);
		}
		userNew.setPassword(encryptPassword(userNew.getPassword()));
		model.addAttribute("insert", manageUserDAO.saveOrUpdate(userNew));
		return home(model);
	}
	
	@RequestMapping(value = "edit/{id}", method=RequestMethod.GET)
	public String showFormEdit(ModelMap model, @ModelAttribute("userEdit") User userEdit, @PathVariable Integer id) {
		model.addAttribute("form_edit", true);
		model.addAttribute("userEdit", manageUserDAO.getUserById(id));
		return home(model);
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("userEdit") User userEdit, BindingResult errors) {
		model.addAttribute("sua_saidinhdang", errors.hasErrors());
		model.addAttribute("userEdit", userEdit);
		if(userEdit.getName().trim().length() == 0) {
			errors.rejectValue("name", "userEdit", "Vui lòng nhập họ tên");
		}
		if(userEdit.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "userEdit", "Vui lòng nhập email");
		}
		if(userEdit.getPhone().trim().length() != 10) {
			errors.rejectValue("phone", "userEdit", "Vui lòng nhập đủ số điện thoại (10 số)");
		}
		if(userEdit.getAddress().trim().length() == 0) {
			errors.rejectValue("address", "userEdit", "Vui lòng nhập địa chỉ");
		}
		if(userEdit.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "userEdit", "Vui lòng nhập password");
		}
		/*if(errors.hasErrors()) {
			return home(model);
		}*/
		userEdit.setPassword(encryptPassword(userEdit.getPassword()));
		model.addAttribute("update", manageUserDAO.updated(userEdit));
		return home(model);
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(ModelMap model, @RequestParam("id") Integer id) {
		User user = new User();
		user.setId(id);
		model.addAttribute("delete", manageUserDAO.delete(user));
		return home(model);
	}
	
	public static String encryptPassword(String password) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(password.getBytes());
			byte[] digest = md.digest();
			String myHash = DatatypeConverter.printHexBinary(digest).toUpperCase();
			return myHash;
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public static boolean descryptPassword(String inputPassword, String hashPassword) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(inputPassword.getBytes());
			byte[] digest = md.digest();
			String myCheck = DatatypeConverter.printHexBinary(digest).toUpperCase();
			return hashPassword.equals(myCheck);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
}
