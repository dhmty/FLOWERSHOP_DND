package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping("/shop")
public class ShopController {
	
	// Mapping jsp
	@RequestMapping("main")
	public String index() {
		return "shop/main";
	}
	
	@RequestMapping("cart")
	public String cart() {
		return "shop/cart";
	}
	
	@RequestMapping("product_detail")
	public String product_detail() {
		return "shop/product_detail";
	}
	
	@RequestMapping("checkout")
	public String checkout() {
		return "shop/checkout";
	}
}
