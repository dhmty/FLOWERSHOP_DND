package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.Admin;


@Transactional
@Service("adminDao")
public class AdminDAO {
	@Autowired
	 SessionFactory factory;

	// get list Admin
	public List<Admin> getListAdmin() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM Admin";
			Query query = session.createQuery(sql);
			List<Admin> listAdmin = query.list();
			System.out.println("ok");
			return listAdmin;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error");
		}
		return new ArrayList<>();

	}
}
