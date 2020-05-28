package com.mustafakaplan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.mustafakaplan.aracdeposu.ProfileController;

@Service
public class MailService 
{
	@Autowired
	private JavaMailSender mailSender;
	
	public void registerMail(String mail, String key)
	{
		SimpleMailMessage email = new SimpleMailMessage();
		email.setFrom("aracdeposu@gmail.com");
		email.setTo(mail);
		email.setSubject("Üyeliði Tamamla");
		email.setText("Üyeliði Tamamlamak Ýçin Aþaðýdaki Linke Týklayýnýz\n\n" + ProfileController.url + "/reg/" + key);
		
		mailSender.send(email);
	}
}
