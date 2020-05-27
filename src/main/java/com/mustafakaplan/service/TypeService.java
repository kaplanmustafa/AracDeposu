package com.mustafakaplan.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.TypeDAO;
import com.mustafakaplan.entity.Types;

@Service
@Transactional
public class TypeService 
{	
	@Autowired
	private TypeDAO typeDAO;
	
	public ArrayList<Types> getAll(int id)
	{
		return typeDAO.getAll(id);
	}
}
