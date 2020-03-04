package com.cts.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AdminController {
	
	
	@RequestMapping(value="/SignAdmin",method=RequestMethod.GET) // sign in page for admin
	public String signInAdmin() {
		return "AdminSignin";
	}
	
}
