package com.mustafakaplan.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.AdvertisementDAO;
import com.mustafakaplan.entity.Advertisements;

@Service
@Transactional
public class AdvertisementService 
{	
	@Autowired
	private AdvertisementDAO advertisementDAO;
	
	public ArrayList<Advertisements> getAllByUserId(int id)
	{
		return advertisementDAO.getAllByUserId(id);
	}
}