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
import com.mustafakaplan.entity.Users;
import com.mustafakaplan.service.AdvertisementService;

@Controller
public class HomeController
{
	@Autowired
	private AdvertisementService advertisementService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model, HttpServletRequest request) 
	{
		model.addAttribute("user", request.getSession().getAttribute("user"));
		
		model.addAttribute("baslik", "Araç Deposu");
		model.addAttribute("serverTime","/"  ); 
		
		return "index";
	}
	
	@RequestMapping(value = "/getCars", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getCars(HttpServletRequest request)
	{
		return new ResponseEntity<>(advertisementService.getActiveAllForIndex(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getFilters", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getFilters(HttpServletRequest request)
	{
		if(!request.getParameter("vehicle").equals("") && !request.getParameter("brand").equals("") && !request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters(request.getParameter("vehicle"),request.getParameter("brand"),request.getParameter("model"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		else if(request.getParameter("vehicle").equals("") && !request.getParameter("brand").equals("") && !request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters(request.getParameter("brand"),request.getParameter("model"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		else if(!request.getParameter("vehicle").equals("") && request.getParameter("brand").equals("") && !request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters2(request.getParameter("vehicle"),request.getParameter("model"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		else if(!request.getParameter("vehicle").equals("") && !request.getParameter("brand").equals("") && request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters3(request.getParameter("vehicle"),request.getParameter("brand"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		else if(!request.getParameter("vehicle").equals("") && request.getParameter("brand").equals("") && request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters(request.getParameter("vehicle"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		else if(request.getParameter("vehicle").equals("") && !request.getParameter("brand").equals("") && request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters4(request.getParameter("brand"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		else if(request.getParameter("vehicle").equals("") && request.getParameter("brand").equals("") && !request.getParameter("model").equals(""))
		{
			return new ResponseEntity<>(advertisementService.getFilters5(request.getParameter("model"),Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		}
		
		return new ResponseEntity<>(advertisementService.getFilters(Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("km")),Integer.parseInt(request.getParameter("price"))), HttpStatus.CREATED);
		
	}
	
	@RequestMapping(value = "/getAd", method = RequestMethod.POST)
	public ResponseEntity<Advertisements> getAd(@RequestBody String id, HttpServletRequest request)
	{
		Advertisements ad = advertisementService.getFindByAdId(Long.parseLong(id));
		return new ResponseEntity<>(advertisementService.getFindByAdId(Long.parseLong(id)), HttpStatus.CREATED);
	}
	
	
	@RequestMapping(value = "/car-single/{id}", method = RequestMethod.GET)
	public String mustafa(@PathVariable("id") Long id,Model model, HttpServletRequest request) 
	{
		Users user = (Users) request.getSession().getAttribute("user");
		Advertisements ad = advertisementService.getFindByAdId(id);
		
		if(ad.getActive() != 1) // Ýlan Yayýnda Deðilse
		{
			if(user == null)
			{
				return "redirect:/error_404";
			}
			else
			{
				if(user.getId() == ad.getUser_id() || user.getId() == 0)
				{
					model.addAttribute("id",id);
					return "car-single";
				}
				
				else
				{
					return "redirect:/error_404";
				}
			}
		}
		
		model.addAttribute("id",id);
		return "car-single";
	}
}
