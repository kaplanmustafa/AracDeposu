package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Users;

public class UserDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	// CRUD
	
	public Long insert(Users user)
	{
		return (Long) sessionFactory.getCurrentSession().save(user);
	}
	
	public void update(Users user)
	{
		sessionFactory.getCurrentSession().update(user);
	}
	
	public Users getFindByEmailAndPass(String email, String pass)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Users WHERE email=:email AND password=:pass AND active=:active")
				.setString("email", email)
				.setString("pass", pass)
				.setBoolean("active", true);
		
		Users user = null;
		
		try {
			user = (Users) query.getSingleResult();
		} catch (javax.persistence.NoResultException e) {
			user = null;
		}
		
		return user;
	}
	
	public Users getFindByEmail(String email)
	{
		
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Users WHERE email=:email")
				.setString("email", email);
		
		return (Users) query.getSingleResult();
	}
	
	public Users getFindByKey(String key)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Users WHERE keyreg=:key")
				.setString("key", key);
		
		Users user = null;
		
		try {
			user = (Users) query.getSingleResult();
		} catch (javax.persistence.NoResultException e) {
			user = null;
		}
		
		return user;
	}
}
