package com.mustafakaplan.aracdeposu;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
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
public class ProfileController 
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
	
	@RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
	public ResponseEntity<String> uploadImage(@RequestParam("files") MultipartFile[] files,HttpSession session)
	{   
		Advertisements oldAd = advertisementService.getLastAd();
		int adId = (int) oldAd.getAd_id();
		
		if(files.length == 0)
		{
			return new ResponseEntity<>("EMPTY", HttpStatus.CREATED);
		}
		
		String path= "C:\\xampp\\htdocs\\images\\";  
		
		File dir = new File(path + adId);
		if (!dir.exists())
		{
			dir.mkdirs();
			path += adId;
		}
		
		String filename = "";
		
		
		for(int i=0; i<files.length; i++)
		{
			String extension = FilenameUtils.getExtension(files[i].getOriginalFilename());
			
			if(i == 0)
			{
				filename = "pp" + "." + extension;
				oldAd.setPp("http://mustafa.com/images/" + adId + "/" + filename);
			}
			else
			{
				filename = "img" + i + "." + extension;
				
				if(i == 1)
				{
					oldAd.setImg1("http://mustafa.com/images/" + adId + "/" + filename);
				}else if(i == 2)
				{
					oldAd.setImg2("http://mustafa.com/images/" + adId + "/" + filename);
				}else if(i == 3)
				{
					oldAd.setImg3("http://mustafa.com/images/" + adId + "/" + filename);
				}else if(i == 4)
				{
					oldAd.setImg4("http://mustafa.com/images/" + adId + "/" + filename);
				}else if(i == 5)
				{
					oldAd.setImg5("http://mustafa.com/images/" + adId + "/" + filename);
				}
			}
			
			try{  
	            byte barr[]=files[i].getBytes();  
	              
	            BufferedOutputStream bout=new BufferedOutputStream(  
	                     new FileOutputStream(path+"\\"+filename));  
	            bout.write(barr);  
	            bout.flush();  
	            bout.close();  
	              
	            }catch(Exception e){System.out.println(e);
	            return new ResponseEntity<>("ERROR", HttpStatus.CREATED);
	            }  
		}
		
		advertisementService.updateAd(oldAd);
		
        return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/addAd", method = RequestMethod.POST)
	public ResponseEntity<String> addAd(@RequestBody Advertisements ad, HttpServletRequest request)
	{
		advertisementService.createAd(ad, request);
		
		return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/error_404", method = RequestMethod.GET)
	public String error(Model model)
	{
		return "error_404";
	}
	
	
}
