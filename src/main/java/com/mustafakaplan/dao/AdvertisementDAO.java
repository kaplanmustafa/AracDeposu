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
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE vehicle=:vehicle AND brand=:brand AND model=:model AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("vehicle", vehicle)
				.setString("brand", brand)
				.setString("model", model)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters(String brand, String model, int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE brand=:brand AND model=:model AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("brand", brand)
				.setString("model", model)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters2(String vehicle, String model, int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE vehicle=:vehicle AND model=:model AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("vehicle", vehicle)
				.setString("model", model)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters3(String vehicle, String brand, int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE vehicle=:vehicle AND brand=:brand AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("vehicle", vehicle)
				.setString("brand", brand)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters(String vehicle, int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE vehicle=:vehicle AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("vehicle", vehicle)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters4(String brand, int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE brand=:brand AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("brand", brand)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters5(String model, int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE model=:model AND year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setString("model", model)
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
	
	public ArrayList<Advertisements> getFilters(int year, int km, int price)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Advertisements WHERE year>=:year AND km<=:km AND price<=:price AND active=1 order by ad_id desc")
				.setInteger("year", year)
				.setInteger("km", km)
				.setInteger("price", price);
		
		return (ArrayList<Advertisements>) query.getResultList();
	}
}
