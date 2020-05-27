package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Cities;

public class CityDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ArrayList<Cities> getAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Cities order by id"); // tablo adý deðil class adý
		
		return (ArrayList<Cities>) query.getResultList();
	}
}
