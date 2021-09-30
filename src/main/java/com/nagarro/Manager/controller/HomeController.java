package com.nagarro.Manager.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.Manager.dao.FieldOperation;

@Controller
public class HomeController {
	
	@Autowired
	private FieldOperation operation;
	
	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView home(@RequestParam("uemail") String email,@RequestParam("upass") String password,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		boolean result=this.operation.login(email,password);
		if(result)
		{
			String data =	this.operation.getEmployeesDetails();
			mv.addObject("employee",data);
			mv.setViewName("welcome");
		}
		else
		{
			mv.setViewName("home");
		}
		return mv;	
	}

}
