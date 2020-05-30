package com.mustafakaplan.aracdeposu;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mustafakaplan.entity.Advertisements;
import com.mustafakaplan.service.AdvertisementService;
import com.mustafakaplan.service.BrandService;
import com.mustafakaplan.service.CityService;
import com.mustafakaplan.service.ModelService;
import com.mustafakaplan.service.TypeService;
import com.mustafakaplan.service.UserService;
import com.mustafakaplan.service.VehicleService;

@Controller
public class AdminController 
{
	public static String url = "http://localhost:8085/aracdeposu";
	
	@Autowired
	private AdvertisementService advertisementService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String index(Model model, HttpServletRequest request) 
	{
		model.addAttribute("user", request.getSession().getAttribute("user"));
		model.addAttribute("total", userService.getNumber());
		return "admin";
	}
	
	@RequestMapping(value = "/getActiveAds", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getActiveAds(HttpServletRequest request)
	{ 
		return new ResponseEntity<>(advertisementService.getActiveAll(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getWaitingAds", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getWaitingAds(HttpServletRequest request)
	{ 
		return new ResponseEntity<>(advertisementService.getWaitingAll(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/getDeniedAds", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<Advertisements>> getDeniedAds(HttpServletRequest request)
	{ 
		return new ResponseEntity<>(advertisementService.getDeniedAll(), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/publishAd", method = RequestMethod.POST)
	public ResponseEntity<String> publishAd(HttpServletRequest request)
	{
		Advertisements oldAd = advertisementService.getFindByAdId(Long.parseLong(request.getParameter("id")));
		oldAd.setActive(1);
		
		advertisementService.updateAd(oldAd);
		
		return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/denyAd", method = RequestMethod.POST)
	public ResponseEntity<String> denyAd(HttpServletRequest request)
	{
		Advertisements oldAd = advertisementService.getFindByAdId(Long.parseLong(request.getParameter("id")));
		oldAd.setActive(-1);
		
		advertisementService.updateAd(oldAd);
		
		return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/notPublishAd", method = RequestMethod.POST)
	public ResponseEntity<String> notPublishAd(HttpServletRequest request)
	{
		Advertisements oldAd = advertisementService.getFindByAdId(Long.parseLong(request.getParameter("id")));
		oldAd.setActive(0);
		
		advertisementService.updateAd(oldAd);
		
		return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/deleteAd", method = RequestMethod.POST)
	public ResponseEntity<String> deleteAd(HttpServletRequest request)
	{
		Advertisements oldAd = advertisementService.getFindByAdId(Long.parseLong(request.getParameter("id")));
		String oldImageFolder = String.valueOf(oldAd.getAd_id());
		String path= "C:\\Users\\m06ka\\Desktop\\MASAUSTU\\spring-tool-suite-3.9.12.CI-B1344-e4.15.0-win32-x86_64\\sts-bundle\\sts-3.9.12.CI-B1344\\projects\\AracDeposu\\src\\main\\webapp\\resources\\asset\\ad_images\\";
		path += oldImageFolder;
		
		File folder = new File(path);
		
		try {
			FileUtils.deleteDirectory(folder);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		advertisementService.deleteAd(oldAd);
		
		return new ResponseEntity<>("OK", HttpStatus.CREATED);
	}
	
}
