package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.Order;

@Transactional
@Service("orderDao")
public class OrderDAO {
	@Autowired
	 SessionFactory factory;

	// get list Order
	public List<Order> getListOrder() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM Order";
			Query query = session.createQuery(sql);
			List<Order> listOrder = query.list();
			System.out.println("ok");
			return listOrder;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();

	}
}
