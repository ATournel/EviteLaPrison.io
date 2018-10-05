package com.elp.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.elp.model.User;
import com.elp.util.HibernateUtil;

public class UserDao {

	public boolean checkMailDispo(String email) {

		User user = null;
		boolean mailDispo = false;

		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();

		trns = session.beginTransaction();
		String queryString = "from User where email = :email";
		Query query = session.createQuery(queryString);
		query.setParameter("email", email);
		user = (User) query.uniqueResult();
		
		if (user != null) {
			mailDispo = false;
		}
		else {
			mailDispo = true;
		}
		return mailDispo;
	}

	public void addUser(User user, String firstName, String lastName, String dob, String email, String pwd) {
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
		}

	}

	public void deleteUser(int userId) {
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			User user = (User) session.load(User.class, new Integer(userId));
			session.delete(user);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			session.update(user);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			if (trns != null) {
				trns.rollback();
			}
			e.printStackTrace();
		}
		
	}
	
	public User getUser(int userId) {
		User user = null;
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			String queryString = "from User where id = :id";
			Query query = session.createQuery(queryString);
			query.setParameter("id", userId);
			user = (User) query.uniqueResult();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} 
		
		return user;
	}
	
}
