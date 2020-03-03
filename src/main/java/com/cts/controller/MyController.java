package com.cts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/RegisterUser",method=RequestMethod.GET)
	public String register() {
		return "Register_User";
	}
	
	@RequestMapping(value="/SignAdmin",method=RequestMethod.GET)
	public String signInAdmin() {
		return "AdminSignin";
	}
	
	@RequestMapping(value="/SignCategory",method=RequestMethod.GET)
	public String signInCategoryRep() {
		return "CategorySignin";
	}
	
	@RequestMapping(value="/RegisterCategory",method=RequestMethod.GET)
	public String registerCategoryRep() {
		return "Register_Category";
	}
	
}
