package com.elp.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.elp.model.User;
import com.elp.util.HibernateUtil;

public class UserDao {

	public void addUser(User user) {
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		}
	}
	
}
