package com.mustafakaplan.security;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.mustafakaplan.entity.User;
import com.mustafakaplan.notalma.HomeController;

@Component
@Scope("session")
public class LoginFilter implements Filter 
{
	public static User user = null;
	
	public void destroy() 
	{
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
	{
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		// Tekrar yönlendirme
		if(req.getRequestURI().contains("login") || req.getRequestURI().contains("register") || req.getRequestURI().contains("addUser")
				|| req.getRequestURI().contains("logout") || req.getRequestURI().contains("reg") || req.getRequestURI().contains("controlUser")
				|| req.getRequestURI().contains("rest")) 
		{
			chain.doFilter(request, response);
			return;
		}
		
		User user = (User) req.getSession().getAttribute("user");
		this.user = user;
		
		if(user != null) // Giriþ yapýlmýþsa
		{
			chain.doFilter(request, response);
			return;
		}
		else // Giriþ yapýlmamýþsa
		{
			System.out.println("FILTER");
			
			res.sendRedirect(HomeController.url + "/login"); // Giriþ sayfasýna yönlendir
		}
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException 
	{
		
	}
}
