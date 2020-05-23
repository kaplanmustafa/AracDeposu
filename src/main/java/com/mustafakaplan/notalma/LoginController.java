package com.mustafakaplan.notalma;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.mustafakaplan.entity.Note;
import com.mustafakaplan.entity.User;
import com.mustafakaplan.service.UserService;

@Controller
public class LoginController
{
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value="status", required=false) String status, Model model) 
	{
		if(status != null)
		{
			if(status.equals("ok"))
			{
				model.addAttribute("status","Üyelik Kaydý Baþarýlý");
			}
			else
			{
				model.addAttribute("status","Tekrar Deneyiniz!");
			}
		}
		
		return "login";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) 
	{
		
		return "register";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request) 
	{
		request.getSession().setAttribute("user", null);
		
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/reg/{key}", method = RequestMethod.GET)
	public String regOk(@PathVariable("key") String key, Model model) 
	{
		if(userService.getFindByKey(key))
		{
			return "redirect:/login?status=ok";
		}
		
		return "redirect:/login?status=error";
	}
	
	@RequestMapping(value = "/controlUser", method = RequestMethod.POST)
	public ResponseEntity<String> controlUser(@RequestBody User user, HttpServletRequest request)
	{
		User user2 = userService.getFindByUsernameAndPass(user);
		
		if(user2 != null)
		{
			request.getSession().setAttribute("user", user2);
			
			return new ResponseEntity<>("OK", HttpStatus.OK);
		}
		
		return new ResponseEntity<>("ERROR", HttpStatus.OK);
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ResponseEntity<String> addUser(@RequestBody User user, HttpServletRequest request)
	{
		int status = control(user);
		
		if(status != 0)
		{
			return new ResponseEntity<>(status+"", HttpStatus.OK);
		}
		
		if(userService.insert(user).equals(1l))
		{
			return new ResponseEntity<>("OK", HttpStatus.CREATED);
		}
		
		return new ResponseEntity<>("ERROR", HttpStatus.CREATED);
	}
	
	private int control(User user)
	{
		if(!user.getPass2().matches(user.getPassword()))
		{
			return 1;
		}
		
		return 0;
	}
}
