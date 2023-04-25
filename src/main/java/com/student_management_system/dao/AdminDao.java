package com.student_management_system.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.student_management_system.dto.Admin;

public class AdminDao {

	EntityManagerFactory factory=Persistence.createEntityManagerFactory("project");
	EntityManager manager =factory.createEntityManager();
	EntityTransaction transaction=manager.getTransaction();
	
public void AdminSignUp(Admin admin) {
	transaction.begin();
	manager.persist(admin);
	transaction.commit();
}
	public Admin AdminLogin(String Email,String Password) {
		try {
			Query query=	manager.createQuery("select a from Admin a where a.adminEmail=?1 and  a.adminPassword=?2");
			query.setParameter(1, Email);
			query.setParameter(2, Password);

			   Admin admin=(Admin) query.getSingleResult();
			   return admin;
			
		} catch (Exception e) {
			return null;
		}
	
	}
	
	public void UpdateAdmin(Admin admin) {
	transaction.begin();
	manager.merge(admin);
	transaction.commit();
	}
}
