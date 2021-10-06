package com.nagarro.Manager.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.Manager.dao.FieldOperation;
@Controller
public class WelcomeController {
	
		@Autowired
		private FieldOperation operation;
		
		@RequestMapping(value="/employees")
		public ModelAndView test(/*@RequestParam String user */ HttpServletResponse response) throws IOException{
		String result =	this.operation.getEmployeesDetails();
		ModelAndView mv =new ModelAndView();
		mv.addObject("employee",result);
		mv.setViewName("welcome");
		
		return mv;
		}
		
		@RequestMapping(value="/welcome")
		public ModelAndView welcome(/* @RequestParam String user , */ HttpServletResponse response) throws IOException{
		String result =	this.operation.getEmployeesDetails();
		
		ModelAndView mv =new ModelAndView();
		mv.addObject("employee",result);
		mv.setViewName("welcome");
		return mv;
		}

}
