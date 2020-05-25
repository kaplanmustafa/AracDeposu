package com.mustafakaplan.service;

import java.util.ArrayList;
import java.util.UUID;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.UserDAO;
import com.mustafakaplan.entity.Users;

@Service
@Transactional
public class UserService 
{
	@Autowired
	private MailService mailService;
	
	@Autowired
	private UserDAO userDAO;
	
	// CRUD
	
	public Long insert(Users user)
	{
		String uuid = UUID.randomUUID().toString();
		user.setKeyreg(uuid);;
		
		if(userDAO.insert(user) > 0) // Kayýt baþarýlýysa 0'dan büyük sonuç döner
		{
			mailService.registerMail(user.getEmail(), user.getKeyreg());
		}
		
		return 1l;
	}
	
	public void update(Users user)
	{
		userDAO.update(user);;
	}
	
	public Users getFindByEmailAndPass(Users user)
	{
		return userDAO.getFindByEmailAndPass(user.getEmail(), user.getPassword());
	}
	
	public Users getFindByEmail(String tel)
	{
		return userDAO.getFindByEmail(tel);
	}
	
	public boolean getFindByKey(String key)
	{
		Users user = userDAO.getFindByKey(key);
		
		if(user != null)
		{
			user.setActive(true);
			update(user);
			
			return true;
		}
		else
		{
			return false;
		}
	}
}
