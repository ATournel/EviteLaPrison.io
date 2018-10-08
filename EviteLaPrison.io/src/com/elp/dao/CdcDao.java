package com.elp.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.elp.model.Cdc;
import com.elp.util.HibernateUtil;

public class CdcDao {

	public List<Cdc> getAllCdc() {

		List<Cdc> cdcs = new ArrayList<Cdc>();
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			String queryString = "from Cdc";
			cdcs = session.createQuery(queryString).list();
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		session.close();
		return cdcs;
	}

	public Cdc getCdcById(int cdcId) {
		
		Cdc cdc = new Cdc();
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			String queryString = "from Cdc where cdcId = :cdcId";
			Query query = session.createQuery(queryString);
			query.setParameter("cdcId", cdcId);
			cdc = (Cdc) query.uniqueResult();
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		session.close();
		return cdc;
	}

}
