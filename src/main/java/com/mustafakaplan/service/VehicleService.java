package com.mustafakaplan.service;

import java.util.ArrayList;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.VehicleDAO;
import com.mustafakaplan.dto.UserLoginDTO;
import com.mustafakaplan.entity.Users;
import com.mustafakaplan.entity.Vehicles;

@Service
@Transactional
public class VehicleService 
{	
	@Autowired
	private VehicleDAO vehicleDAO;
	
	public ArrayList<Vehicles> getAll()
	{
		return vehicleDAO.getAll();
	}
	
}
