package shop.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import shop.dao.ShopCartDAO;
import shop.entity.ShopCart;

public class ShopService {

	@Autowired
	ShopCartDAO cartDao;
	
	public static BigDecimal subTotal(List<ShopCart> list) {
		BigDecimal total=BigDecimal.ZERO;
		
		for(ShopCart cart:list) {
			total=total.add(cart.getAmount().multiply(BigDecimal.valueOf(cart.getQuantity())));
		}
		
		return total;
	}
	public static BigDecimal ship(List<ShopCart> list) {
		BigDecimal total=BigDecimal.ZERO;
		BigDecimal ship=BigDecimal.ZERO;
		
		for(ShopCart cart:list) {
			total=total.add(cart.getAmount().multiply(BigDecimal.valueOf(cart.getQuantity())));
		}
		
		if(total.compareTo(BigDecimal.valueOf(1000000))==-1) {
			ship=total.divide(BigDecimal.valueOf(20));
		}
		
		return ship;
	}
	
}
