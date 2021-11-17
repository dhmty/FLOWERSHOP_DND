package shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dao.AdminDAO;
import shop.dao.FlowerDAO;
import shop.dao.UserDAO;
import shop.entity.Admin;
import shop.entity.Flower;
import shop.entity.User;


@Controller
public class TestController {
	
	@Autowired
	AdminDAO adminDao;
	
	@Autowired
	FlowerDAO flowerDao;
	
	@Autowired
	UserDAO userDao;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		List<Admin> listAdmin=adminDao.getListAdmin();
		for (Admin a:listAdmin) {
			System.out.println(a.toString());
		}
		
		List<Flower> listFlower=flowerDao.getListFlower();
		for (Flower f:listFlower) {
			System.out.println(f.toString());
		}
		
		List<User> listUser=userDao.getListUser();
		for (User u:listUser) {
			System.out.println(u.toString());
		}
		
		return "test";
	}
}
