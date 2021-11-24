package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping("/blog")
public class BlogController {
	// Mapping jsp
		@RequestMapping("main")
		public String index() {
			return "blog/main";
		}
		
		@RequestMapping("detail")
		public String detail() {
			return "blog/detail";
		}
		
}
