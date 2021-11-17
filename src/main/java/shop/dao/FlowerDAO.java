package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.Flower;

@Transactional
@Service("flowerDao")
public class FlowerDAO {
	@Autowired
	 SessionFactory factory;

	// get list Flower
	public List<Flower> getListFlower() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM Flower";
			Query query = session.createQuery(sql);
			List<Flower> listFlower = query.list();
			System.out.println("ok");
			return listFlower;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();

	}
}
