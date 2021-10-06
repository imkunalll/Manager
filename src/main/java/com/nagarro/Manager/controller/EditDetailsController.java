package com.nagarro.Manager.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.Manager.dao.FieldOperation;

@Controller
public class EditDetailsController {
	@Autowired
	private FieldOperation operation;

	@RequestMapping(value = "/editemployee/{id}")
	public ModelAndView test(@PathVariable(value="id") String id, HttpServletResponse response) throws IOException {

	String result=this.operation.getEmployeeDetails(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", result);
		mv.setViewName("editdetails");
		return mv;
	}

	@RequestMapping(value = "/editemployee/updateemployee", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam("code") String employeeCode, @RequestParam("name") String employeeName,
			@RequestParam("location") String location, @RequestParam("email") String email,
			@RequestParam("dob") String dob, HttpServletResponse response) {
		
		this.operation.updateEmployeeDetails(employeeCode,employeeName,location,email,dob);
		String data =	this.operation.getEmployeesDetails();
		ModelAndView mv = new ModelAndView();
//		mv.addObject("employee",data);
//		mv.addObject("abc","abc");
		mv.setViewName("redirect:/welcome");
		return mv;
		
	}
}

