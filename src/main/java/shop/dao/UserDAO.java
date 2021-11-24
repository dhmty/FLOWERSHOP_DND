package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.User;

@Transactional
@Service("userDao")
public class UserDAO {

	@Autowired
	 SessionFactory factory;

	// get list User
	public List<User> getListUser() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM User";
			Query query = session.createQuery(sql);
			List<User> listUser = query.list();
			System.out.println("ok");
			return listUser;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();
	}
	
	// get login
		public User login(String email, String password) {
			Session session = factory.getCurrentSession();
			String hql = "FROM User u WHERE u.email = :email AND u.password = :password";
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			List<User> list = query.list();
			for (User i : list) {
				System.out.println("fullname...." +i.getName());
			}
			return list.size() > 0 ? list.get(0) : null;
		}
		
	
}
