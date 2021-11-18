package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.Transaction;

@Transactional
@Service("transactionDao")
public class TransactionDAO {
	@Autowired
	 SessionFactory factory;

	// get list Transaction
	public List<Transaction> getListTrans() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM Transaction";
			Query query = session.createQuery(sql);
			List<Transaction> listTrans = query.list();
			System.out.println("ok");
			return listTrans;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();

	}
}
