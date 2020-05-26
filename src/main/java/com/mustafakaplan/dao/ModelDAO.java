package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Models;
import com.mustafakaplan.entity.Vehicles;

public class ModelDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ArrayList<Models> getAll(int id)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Models WHERE brand_id=:id order by model_id")
		.setInteger("id", id); // tablo adý deðil class adý
		
		return (ArrayList<Models>) query.getResultList();
	}
}
