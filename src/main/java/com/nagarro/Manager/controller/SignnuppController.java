package com.nagarro.Manager.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.Manager.dao.FieldOperation;

@Controller
public class SignnuppController {

	@Autowired
	private FieldOperation fieldOperation;

	@RequestMapping(value = "/signup")
	public ModelAndView signup(HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		return mv;
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView signup(@RequestParam("uname") String uname, @RequestParam("uemail") String uemail, @RequestParam("upass") String upass,
			HttpServletResponse response) {
		try {
			System.out.println(uname + uemail + upass);
		this.fieldOperation.addUser(uname, uemail, upass);

		} catch (Exception e) {
			System.out.println("variable not found");
		}
		ModelAndView mv = new ModelAndView();

		mv.setViewName("home");
		return mv;
	}
}
