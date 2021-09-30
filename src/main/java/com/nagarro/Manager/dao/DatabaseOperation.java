package com.nagarro.Manager.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.springframework.stereotype.Component;


@Component
public class DatabaseOperation {

//	private static SessionFactory sessionFactory;
//	
//
//	private Transaction transaction;
//
//	public void addUser(UserModel userModel) {
//		try {
//			Session session = HibernateUtil.getSessionFactory().openSession();
//			transaction = session.beginTransaction();
//
//			session.save(userModel);
//
//			transaction.commit();
//		} catch (Exception e) {
//			if (transaction != null) {
//				transaction.rollback();
//			}
//		}
//	}
//
//	public boolean verifyUser(UserLoginModel userLoginModel) {
//		try {
//			Session session = HibernateUtil.getSessionFactory().openSession();
//			transaction = session.beginTransaction();
//
//			String sql = "Select * from UserModel U where U.email = :email";
//			NativeQuery query = session.createSQLQuery(sql);
//			query.setParameter("email", userLoginModel.getUserEmail());
//			query.addEntity(UserModel.class);
//
//			UserModel userModel = (UserModel) query.list().get(0);
//			transaction.commit();
//			if (userModel.getPassword().equals(userLoginModel.getUserPassword())) {
//				return true;
//			} else
//				return false;
//
//		} catch (Exception e) {
//			if (transaction != null) {
//				transaction.rollback();
//			}
//
//		}
//		return false;
//	}
//


}