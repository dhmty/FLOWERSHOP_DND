package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.ShopCart;

@Transactional
@Service("shopCartDao")
public class ShopCartDAO {
	@Autowired
	 SessionFactory factory;

	// get list shopCart
	public List<ShopCart> getListCart() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM ShopCart";
			Query query = session.createQuery(sql);
			List<ShopCart> listCart = query.list();
			System.out.println("ok");
			return listCart;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();

	}
}
