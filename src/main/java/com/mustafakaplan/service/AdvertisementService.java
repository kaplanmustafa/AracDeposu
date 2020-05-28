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
	
	public ArrayList<Advertisements> getAll()
	{
		return advertisementDAO.getAll();
	}
	
	public Long updateAd(Advertisements ad)
	{
		advertisementDAO.update(ad);
		return 1l;
	}

	public ArrayList<Advertisements> getAllByUserId(int id)
	{
		return advertisementDAO.getAllByUserId(id);
	}
	
	public Advertisements getLastAd()
	{
		return advertisementDAO.getLastAd();
	}
}