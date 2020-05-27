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
	
	public ArrayList<Models> getAll(int id, int id2)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Models WHERE brand_id=:id AND vehicle_id=:id2 order by model_id")
		.setInteger("id", id)
		.setInteger("id2", id2); // tablo adý deðil class adý
		
		return (ArrayList<Models>) query.getResultList();
	}
}
