package com.mustafakaplan.security;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.mustafakaplan.entity.Users;
import com.mustafakaplan.aracdeposu.ProfileController;

@Component
@Scope("session")
public class LoginFilter implements Filter 
{
	public static Users user = null;
	
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
	{
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		Users user = (Users) req.getSession().getAttribute("user");
		this.user = user;
		
		// Giriþ yapýlmamýþsa ve profile týklanmýþsa
		if(user == null && (req.getRequestURI().contains("profile") || req.getRequestURI().contains("admin"))) 
		{
			res.sendRedirect(ProfileController.url + "/login");
		}
		else if(user != null)
		{
			if(user.getEmail().equals("aracdeposu@gmail.com") && req.getRequestURI().contains("profile"))
			{
				res.sendRedirect(ProfileController.url + "/admin");
			}
			else if(req.getRequestURI().contains("register") || req.getRequestURI().contains("login"))
			{
				res.sendRedirect(ProfileController.url + "/profile");
			}
			
			if(!user.getEmail().equals("aracdeposu@gmail.com") && req.getRequestURI().contains("admin"))
			{
				res.sendRedirect(ProfileController.url + "/profile");
			}
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {}
	
}
