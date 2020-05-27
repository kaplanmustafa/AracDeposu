package com.mustafakaplan.aracdeposu;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mustafakaplan.entity.Advertisements;
import com.mustafakaplan.entity.Brands;
import com.mustafakaplan.entity.Cities;
import com.mustafakaplan.entity.Models;
import com.mustafakaplan.entity.Types;
import com.mustafakaplan.entity.Vehicles;
import com.mustafakaplan.security.LoginFilter;
import com.mustafakaplan.service.AdvertisementService;
import com.mustafakaplan.service.BrandService;
import com.mustafakaplan.service.CityService;
import com.mustafakaplan.service.MailService;
import com.mustafakaplan.service.ModelService;
import com.mustafakaplan.service.TypeService;
import com.mustafakaplan.service.VehicleService;


@Controller
public class HomeController 
{
	public static String url = "http://localhost:8085/aracdeposu";
	
	@Autowired
	private VehicleService vehicleService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private ModelService modelService;
	
	@Autowired
	private TypeService typeService;
	
	@Autowired
	private CityService cityService;
	
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
	
	@RequestMapping(value = "/car", method = RequestMethod.GET)
	public String car(Model model) 
	{
		return "car";
	}
	
	@RequestMapping(value = "/car-single", method = RequestMethod.GET)
	public String car_single(Model model) 
	{
		return "car-single";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model, HttpServletRequest request) 
	{
		model.addAttribute("user", request.getSession().getAttribute("user"));
		return "profile";
	}
	
	@RequestMapping(value = "/getVehicle", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Vehicles>> getVehicle(HttpServletRequest request)
	{
		return new ResponseEntity<>(vehicleService.getAll(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getCity", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Cities>> getCity(HttpServletRequest request)
	{
		return new ResponseEntity<>(cityService.getAll(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getBrand", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Brands>> getBrand(HttpServletRequest request)
	{
		return new ResponseEntity<>(brandService.getAll(Integer.parseInt(request.getParameter("id"))), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getModel", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Models>> getModel(HttpServletRequest request)
	{
		return new ResponseEntity<>(modelService.getAll(Integer.parseInt(request.getParameter("id")),Integer.parseInt(request.getParameter("id2"))), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getType", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Types>> getType(HttpServletRequest request)
	{
		return new ResponseEntity<>(typeService.getAll(Integer.parseInt(request.getParameter("id"))), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/uploadAd", method = RequestMethod.POST)
	public ResponseEntity<String> uploadAd(@RequestParam("files") MultipartFile[] files,HttpSession session)
	{   
		if(files.length == 0)
		{
			return new ResponseEntity<>("EMPTY", HttpStatus.CREATED);
		}
		
		String path=session.getServletContext().getRealPath("/");  
		
		File dir = new File(path + "images");
		if (!dir.exists())
		{
			dir.mkdirs();
			path += "images";
		}
			
		
		for(int i=0; i<files.length; i++)
		{
			String filename=files[i].getOriginalFilename();
			
			try{  
	            byte barr[]=files[i].getBytes();  
	              
	            BufferedOutputStream bout=new BufferedOutputStream(  
	                     new FileOutputStream(path+"/"+filename));  
	            bout.write(barr);  
	            bout.flush();  
	            bout.close();  
	              
	            }catch(Exception e){System.out.println(e);}  
		}
		
        return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/error_404", method = RequestMethod.GET)
	public String error(Model model)
	{
		return "error_404";
	}
	
	
	
	
	
	
	
	
	
	
	
}
