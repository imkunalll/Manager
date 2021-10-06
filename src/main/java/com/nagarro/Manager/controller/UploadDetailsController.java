package com.nagarro.Manager.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.Manager.dao.FieldOperation;

@Controller
public class UploadDetailsController {
	@Autowired
	private FieldOperation operation;

	@RequestMapping(value ="/uploaddetails")
	public ModelAndView test(HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("uploaddetails");
		return mv;
	}

	@RequestMapping(value = "/uploademployee", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam("ecode") String employeeCode, @RequestParam("ename") String employeeName,
			@RequestParam("elocation") String location, @RequestParam("eemail") String email,
			@RequestParam("edob") String dob, HttpServletResponse response) {
		
		this.operation.setEmployeeDetails(employeeCode,employeeName,location,email,dob);
		String data =	this.operation.getEmployeesDetails();
		ModelAndView mv = new ModelAndView();
//		mv.addObject("employee",data);
		mv.setViewName("redirect:/welcome");
		return mv;
	}

}
