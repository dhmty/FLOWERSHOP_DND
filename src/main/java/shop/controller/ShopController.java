package shop.controller;

import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dao.FlowerDAO;
import shop.dao.OrderDAO;
import shop.dao.ShopCartDAO;
import shop.dao.TransactionDAO;
import shop.entity.Flower;
import shop.entity.Order;
import shop.entity.ShopCart;
import shop.entity.Transaction;
import shop.entity.User;
import shop.service.ShopService;

@Transactional
@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
    FlowerDAO flowerDao;
	
	@Autowired
	ShopCartDAO cartDao;
	
	@Autowired
	TransactionDAO transactionDao;
	
	@Autowired
	OrderDAO orderDao;
	
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
		
		model.addAttribute("subTotal",ShopService.subTotal(list));
		model.addAttribute("ship", ShopService.ship(list));
		model.addAttribute("carts",list);
		return "shop/cart";
	}
	
	@RequestMapping(value="cart/insert/{floId}",method = RequestMethod.GET)
	public String cartInsert(ModelMap model,@PathVariable("floId") int floId, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		// số lượng khi add vào giỏ hàng
		int sl;
		if (request.getParameter("qtt")==null) sl=1;
		else sl = Integer.parseInt(request.getParameter("qtt"));
		
		Flower flo= flowerDao.getFlowerById(floId);
		if (flo.getDiscount()==null) flo.setDiscount(0);
		//thêm vào db - chú ý tiền sau khi đã giảm giá
		BigDecimal sale=(flo.getPrice().multiply(BigDecimal.valueOf(flo.getDiscount()))).divide(BigDecimal.valueOf(100));
		ShopCart cart=new ShopCart(0,sl,flo.getPrice().add(sale.multiply(BigDecimal.valueOf(-1))),false,user,flo);
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
	
	
	//checkout
	@RequestMapping(value="checkout",method = RequestMethod.GET)
	public String checkout(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		model.addAttribute("carts",list);
		
		model.addAttribute("subTotal",ShopService.subTotal(list));
		model.addAttribute("ship", ShopService.ship(list));
		model.addAttribute("detailTransaction", new Transaction());
		return "shop/checkout";
	}
	
	@RequestMapping(value="checkout",method = RequestMethod.POST)
	public String checkoutSave(ModelMap model, HttpServletRequest request,@Validated @ModelAttribute("detailTransaction") Transaction trans,
			BindingResult errors) {
		// test các rằng buộc
		
		if (errors.hasErrors()) {
			return "shop/checkout";
		}
		else {
			
			// update trạng thái các cart
			// lưu vào bảng Trans
			// lưu vào bảng Order
	
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("userLogin");
			List<ShopCart> list=cartDao.getCartByUser(user.getId());
			boolean k=true;
			
			trans.setStatus(false);
			trans.setUser(user);
			trans.setAmount(ShopService.subTotal(list).add(ShopService.ship(list)));
			trans.setCreated(null);
			boolean kt=transactionDao.createOrUpdate(trans);
			if (kt) {
				for(ShopCart cart : list) {
					Order order=new Order(0, cart.getQuantity(), cart.getAmount(), null, false, trans,cart.getFlower());
					boolean kt2=orderDao.createOrUpdate(order);
					if (kt2) cart.setStatus(true);
					else k=false;
				}		
			}
			
			String message="";
			if ( !k || !kt ) message="Place Order failed, Send Message to DND FlowerShop";
			else message="Place Order Success, Return shop to continue buy";
			model.addAttribute("message", message);
			
			return "shop/checkout";
		}
	}
}
