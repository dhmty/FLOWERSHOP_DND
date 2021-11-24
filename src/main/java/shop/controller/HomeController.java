package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping("/home")
public class HomeController {
	@RequestMapping("index")
	public String index() {
		return "home/index";
	}
	@RequestMapping("header")
	public String header() {
		return "include/footer";
	}
}
