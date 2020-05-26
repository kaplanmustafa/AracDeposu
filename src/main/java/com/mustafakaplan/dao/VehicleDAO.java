package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Vehicles;

public class VehicleDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ArrayList<Vehicles> getAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Vehicles order by id"); // tablo adý deðil class adý
		
		return (ArrayList<Vehicles>) query.getResultList();
	}
}
