package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Brands;
import com.mustafakaplan.entity.Vehicles;

public class BrandDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ArrayList<Brands> getAll(int id)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Brands WHERE vehicle_id=:id order by brand_id")
				.setInteger("id", id);// tablo adý deðil class adý
		
		return (ArrayList<Brands>) query.getResultList();
	}
}
