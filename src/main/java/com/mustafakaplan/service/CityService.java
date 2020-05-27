package com.mustafakaplan.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.CityDAO;
import com.mustafakaplan.entity.Cities;

@Service
@Transactional
public class CityService 
{	
	@Autowired
	private CityDAO cityDAO;
	
	public ArrayList<Cities> getAll()
	{
		return cityDAO.getAll();
	}
}
