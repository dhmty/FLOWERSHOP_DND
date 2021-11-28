package shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dao.FlowerDAO;
import shop.dao.ShopCartDAO;
import shop.entity.Flower;
import shop.entity.ShopCart;
import shop.entity.User;

@Transactional
@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
    FlowerDAO flowerDao;
	
	@Autowired
	ShopCartDAO cartDao;
	
	// Mapping jsp
	@RequestMapping("main")
	public String index(ModelMap model) {
		List<Flower> list=flowerDao.getListFlower();
		model.addAttribute("flowers",list);
		return "shop/main";
	}
	
	
	// cart
	@RequestMapping(value="cart",method = RequestMethod.GET)
	public String cart(ModelMap model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		model.addAttribute("carts",list);
		return "shop/cart";
	}
	
	@RequestMapping(value="cart/insert/{floId}",method = RequestMethod.GET)
	public String cartInsert(ModelMap model,@PathVariable("floId") int floId, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		Flower flo= flowerDao.getFlowerById(floId);
		//thêm vào db - chú ý tiền sau khi đã giảm giá
		ShopCart cart=new ShopCart(0,1,flo.getPrice(),false,user,flo);
		cartDao.createOrUpdate(cart);
		return "redirect:/shop/cart.htm";
	}
	
	@RequestMapping(value="cart/update",method = RequestMethod.GET)
	public String cartUpdate(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		for(ShopCart item : list) {
			//System.out.println(request.getParameter("qtt" + item.getId()));
			int sl = Integer.parseInt(request.getParameter("qtt" + item.getId()));
			item.setQuantity(sl);
			cartDao.createOrUpdate(item);
		}
		return "redirect:/shop/cart.htm";
	}
	
	@RequestMapping(value="cart/delete/{id}",method = RequestMethod.GET)
	public String cartDelete(ModelMap model,@PathVariable("id") int id, HttpServletRequest request) {
		cartDao.delete(id);
		return "redirect:/shop/cart.htm";
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
