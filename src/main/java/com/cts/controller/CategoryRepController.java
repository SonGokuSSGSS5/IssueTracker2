package com.cts.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.dao.CategoryRepDao;
import com.cts.model.CategoryRepBean;
import com.cts.model.LoginBean;


@Controller
public class CategoryRepController {

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
	public String signInCategoryRep(@ModelAttribute("login")LoginBean loginBean) {
		return "CategorySignin";
	}
	
	@PostMapping("/loginrep")
	public ModelAndView signInRep(@Valid @ModelAttribute("login")LoginBean loginBean,BindingResult br,HttpSession session) {
		
		ModelAndView mv=new ModelAndView("CategorySignin", "flag", 1);

		if(br.hasErrors()) {
			mv=new ModelAndView("CategorySignin");
		}
		else {
			
			CategoryRepBean user=crd.validateRep(loginBean.getUserid(), loginBean.getPassword());

			if(user != null)
			{
			mv=new ModelAndView("RepHome");
			session.setAttribute("rep", user);
			}
		}
			
		return mv;
	}
	
	
}
