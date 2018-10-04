package com.elp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.elp.model.User;
import com.elp.util.HibernateUtil;

public class MasterDao {

	public Session transactionCreate() {
		
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		return session;
		
	}
	
	public void transactionClose(Session session, User user) {
		
		session.getTransaction().commit();
		session.save(user);
		session.close();
		
	}
	
	public void addNewUser(UserDao dao, User user, String firstName, String lastName, String dob, String email, String pwd) {
		
		user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setDob(dob);
		user.setEmail(email);
		user.setPassword(pwd);
		user.setStatut("user");
		
		dao.addUser(user);
		
	}
	
}
