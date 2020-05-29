package com.mustafakaplan.aracdeposu;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mustafakaplan.entity.Advertisements;
import com.mustafakaplan.service.AdvertisementService;

@Controller
public class HomeController
{
	@Autowired
	private AdvertisementService advertisementService;
	
	@RequestMapping(value = "/getCars", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getCars(HttpServletRequest request)
	{
		return new ResponseEntity<>(advertisementService.getAll(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getAd", method = RequestMethod.POST)
	public ResponseEntity<Advertisements> getAd(@RequestBody String id, HttpServletRequest request)
	{
		Advertisements ad = advertisementService.getFindByAdId(Long.parseLong(id));
		return new ResponseEntity<>(advertisementService.getFindByAdId(Long.parseLong(id)), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/car-single/{id}", method = RequestMethod.GET)
	public String mustafa(@PathVariable("id") Long id,Model model) 
	{
		model.addAttribute("id",id);
		
		return "car-single";
	}
}
