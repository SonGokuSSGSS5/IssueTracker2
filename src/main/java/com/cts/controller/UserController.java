package com.cts.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.dao.RegisterDao;
import com.cts.model.RegisterBean;

@Controller
public class UserController {

	@Autowired
	private RegisterDao rd;
	
	@RequestMapping(value="/",method=RequestMethod.GET) //load the basic user sign in page
	public String index() {
		return "index";
	}

	
	
	@RequestMapping(value="/hi",method=RequestMethod.GET) //After registration ,load the basic user sign in page
	public String index1() {
		return "index";
	}
	
	@RequestMapping(value="/RegisterUser",method=RequestMethod.GET) // display user registration page
	public String register( @ModelAttribute("userregister")RegisterBean rb) {
		return "Register_User";
	}
	
	@RequestMapping(value="/success",method=RequestMethod.POST) // go to success page
	public String registerUserSubmit(@Valid @ModelAttribute("userregister") RegisterBean rb, BindingResult br) {
		
		String page="Register_User";
		
		if(br.hasErrors()) {
			page="Register_User";
		}
		else {
			rd.save(rb);
			page="success";
		}
		
		return page;
	}
	
	
}
