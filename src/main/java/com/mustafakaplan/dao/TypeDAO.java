package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Types;

public class TypeDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public ArrayList<Types> getAll(int id)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Types WHERE vehicle_id=:id order by type_id")
				.setInteger("id", id);// tablo adý deðil class adý
		
		return (ArrayList<Types>) query.getResultList();
	}
}
