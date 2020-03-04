package com.cts.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.dao.CategoryRepDao;
import com.cts.model.CategoryRepBean;

@Controller
public class CategoryController {

	@Autowired
	private CategoryRepDao crd;
	
	@RequestMapping(value="/RegisterCategory",method=RequestMethod.GET) // category registration page
	public String registerCategoryRep(@ModelAttribute("categoryRep") CategoryRepBean cb) {
		return "Register_Category";
	}
	
	@RequestMapping(value="/registerCategoryRep",method=RequestMethod.POST) // go to success page
	public String registerCategoryRepSubmit(@Valid @ModelAttribute("categoryRep")CategoryRepBean cb, BindingResult br) {
		
		String page="Register_Category";
		
		if(br.hasErrors()) {
			page="Register_Category";
		}
		else {
			crd.save(cb);
			page="categoryrepsuccess";
		}
		
		return page;
	}
	
	@RequestMapping(value="/SignCategory",method=RequestMethod.GET) // category sign in
	public String signInCategoryRep() {
		return "CategorySignin";
	}
	
	
	
}
