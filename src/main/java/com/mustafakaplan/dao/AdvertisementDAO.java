package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Advertisements;

public class AdvertisementDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ArrayList<Advertisements> getAllByUserId(int id)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Models WHERE user_id=:id order by model_id")
		.setInteger("id", id);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
}
