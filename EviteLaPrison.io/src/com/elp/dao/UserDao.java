package com.elp.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.elp.model.User;
import com.elp.util.HibernateUtil;

public class UserDao {

	public void addUser(User user, String firstName, String lastName, String dob, String email,
			String pwd) {
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();

		user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setDob(dob);
		user.setEmail(email);
		user.setPassword(pwd);
		user.setStatut("user");
		
		try {
			trns = session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();

		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

}
