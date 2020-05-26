package com.mustafakaplan.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.ModelDAO;
import com.mustafakaplan.entity.Models;

@Service
@Transactional
public class ModelService 
{	
	@Autowired
	private ModelDAO modelDAO;
	
	public ArrayList<Models> getAll(int id)
	{
		return modelDAO.getAll(id);
	}
}
