package com.mustafakaplan.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.BrandDAO;
import com.mustafakaplan.entity.Brands;
import com.mustafakaplan.entity.Vehicles;

@Service
@Transactional
public class BrandService 
{	
	@Autowired
	private BrandDAO brandDAO;
	
	public ArrayList<Brands> getAll(int id)
	{
		return brandDAO.getAll(id);
	}
	
}
