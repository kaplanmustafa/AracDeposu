package com.mustafakaplan.aracdeposu;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mustafakaplan.entity.Advertisements;
import com.mustafakaplan.security.LoginFilter;
import com.mustafakaplan.service.AdvertisementService;

@Controller
public class HomeController
{
	@Autowired
	private AdvertisementService advertisementService;
	
	@RequestMapping(value = "/getCars", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getNotes(HttpServletRequest request)
	{
		return new ResponseEntity<>(advertisementService.getAll(), HttpStatus.CREATED);
	}
	
	
}
