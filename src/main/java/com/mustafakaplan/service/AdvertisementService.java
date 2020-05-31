package com.mustafakaplan.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.AdvertisementDAO;
import com.mustafakaplan.entity.Advertisements;
import com.mustafakaplan.security.LoginFilter;

@Service
@Transactional
public class AdvertisementService 
{	
	@Autowired
	private AdvertisementDAO advertisementDAO;
	
	public long createAd(Advertisements ad, HttpServletRequest request)
	{
		ad.setUser_id(LoginFilter.user.getId());
		ad.setActive(0);
		return advertisementDAO.insert(ad);
	}
	
	public Long deleteAd(Advertisements ad)
	{
		advertisementDAO.delete(ad);
		return 1l;
	}
	
	public ArrayList<Advertisements> getAll()
	{
		return advertisementDAO.getAll();
	}
	
	public Long updateAd(Advertisements ad)
	{
		advertisementDAO.updateAd(ad);
		return 1l;
	}
	
	public ArrayList<Advertisements> getAllByUserId(Long user_id)
	{
		return advertisementDAO.getAllByUserId(user_id);
	}
	
	public ArrayList<Advertisements> getActiveAll()
	{
		return advertisementDAO.getActiveAll();
	}
	
	public ArrayList<Advertisements> getFilters(String vehicle, String brand, String model, int year, int km, int price)
	{
		return advertisementDAO.getFilters(vehicle, brand, model, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters(String brand, String model, int year, int km, int price)
	{
		return advertisementDAO.getFilters(brand, model, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters2(String vehicle, String model, int year, int km, int price)
	{
		return advertisementDAO.getFilters2(vehicle, model, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters3(String vehicle,String brand, int year, int km, int price)
	{
		return advertisementDAO.getFilters3(vehicle, brand, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters(String vehicle, int year, int km, int price)
	{
		return advertisementDAO.getFilters(vehicle, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters4(String brand, int year, int km, int price)
	{
		return advertisementDAO.getFilters4(brand, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters5(String model, int year, int km, int price)
	{
		return advertisementDAO.getFilters5(model, year, km, price);
	}
	
	public ArrayList<Advertisements> getFilters(int year, int km, int price)
	{
		return advertisementDAO.getFilters(year, km, price);
	}
	
	public ArrayList<Advertisements> getActiveAllForIndex()
	{
		return advertisementDAO.getActiveAllForIndex();
	}
	
	public ArrayList<Advertisements> getWaitingAll()
	{
		return advertisementDAO.getWaitingAll();
	}
	
	public ArrayList<Advertisements> getDeniedAll()
	{
		return advertisementDAO.getDeniedAll();
	}
	
	public ArrayList<Advertisements> getAllByUserId(int id)
	{
		return advertisementDAO.getAllByUserId(id);
	}
	
	public Advertisements getLastAd()
	{
		return advertisementDAO.getLastAd();
	}
	
	public Advertisements getFindByAdId(Long adId)
	{
		return advertisementDAO.getFindByAdId(adId);
	}
}