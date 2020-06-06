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
	
	public long insert(Advertisements ad)
	{
		return  (long) sessionFactory.getCurrentSession().save(ad);
	}
	
	public void delete(Advertisements ad)
	{
		sessionFactory.getCurrentSession().delete(ad);
	}
	
	public void updateAd(Advertisements ad)
	{
		sessionFactory.getCurrentSession().update(ad);
	}
	
	public void publishAd(Advertisements ad)
	{
		sessionFactory.getCurrentSession().update(ad);
	}
	
	public void denyAd(Advertisements ad)
	{
		sessionFactory.getCurrentSession().update(ad);
	}
	
	public ArrayList<Advertisements> getAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements");
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getActiveAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE active=1 order by ad_id desc");
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getActiveAllForIndex(Long id, String brand, String model)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE active=1 AND ad_id!=:id AND brand=:brand AND model=:model order by ad_id desc")
				.setLong("id", id)
				.setString("brand", brand)
				.setString("model", model);
		query.setMaxResults(6);
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getActiveAllForIndex()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE active=1 order by ad_id desc");
			
		query.setMaxResults(6);
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getWaitingAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE active=0 order by ad_id desc");
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getDeniedAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE active=-1 order by ad_id desc");
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getAllByUserId(Long userId)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE user_id=:user_id order by ad_date desc")
		.setLong("user_id", userId);
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
	
	public Advertisements getFindByAdId(Long adId)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE ad_id=:arananId")
				.setLong("arananId", adId);
		
		return (Advertisements) query.getSingleResult();
	}
	
	public ArrayList<Advertisements> getFilters(String vehicle, String brand, String model, int year, int km, int price)
	{
		String vehicle1 = "vehicle";
		String brand1 = "brand";
		String model1 = "model";
		
		if(!vehicle.equals("")) 
		{
			System.out.println(vehicle);
			vehicle1 = "'" + vehicle + "'";
		}
		if(!brand.equals("")) 
		{
			brand1 = "'" + brand + "'";
		}
		if(!model.equals("")) 
		{
			model1 = "'" + model + "'";
		}
		
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE vehicle="+vehicle1+" AND brand="+brand1+" AND model="+model1+" AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
			
		return (ArrayList<Advertisements>) query.getResultList();
	}
}
