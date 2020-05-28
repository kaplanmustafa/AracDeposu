package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Advertisements;

public class AdvertisementDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public long insert(Advertisements ad)
	{
		return  (long) sessionFactory.getCurrentSession().save(ad);
	}
	
	public void update(Advertisements ad)
	{
		sessionFactory.getCurrentSession().update(ad);
	}
	
	public ArrayList<Advertisements> getAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements");
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getAllByUserId(int id)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Models WHERE user_id=:id order by model_id")
		.setInteger("id", id);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public Advertisements getLastAd()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements order by ad_id desc");
		query.setMaxResults(1);
		return (Advertisements) query.getSingleResult();
	}
}
