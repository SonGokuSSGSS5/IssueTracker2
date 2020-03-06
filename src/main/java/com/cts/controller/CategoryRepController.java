package com.cts.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.dao.CategoryDao;
import com.cts.dao.CategoryRepDao;
import com.cts.model.CategoryBean;
import com.cts.model.CategoryRepBean;
import com.cts.model.LoginBean;



@Controller
public class CategoryRepController {

	@Autowired
	private CategoryRepDao crd;
	
	@Autowired
	private CategoryDao catdao;
	
	@RequestMapping(value="/RegisterCategory",method=RequestMethod.GET) // category registration page
	public String registerCategoryRep(@ModelAttribute("categoryRep") CategoryRepBean cb,Model m) {
		
		List<CategoryBean> clist=catdao.findAll();
		
		List<String> catList=new  ArrayList<String>();
		
		for(CategoryBean c:clist) {
			
			catList.add(c.getCategory());
		}
		
		m.addAttribute("CategoryName", catList);
		
		return "Register_Category";
	}
	
	@RequestMapping(value="/registerCategoryRep",method=RequestMethod.POST) // go to success page
	public String registerCategoryRepSubmit(@Valid @ModelAttribute("categoryRep")CategoryRepBean cb, BindingResult br,Model m) {
		
		String page="Register_Category";
		
		if(br.hasErrors()) {
			
			List<CategoryBean> clist=catdao.findAll();
			
			List<String> catList=new  ArrayList<String>();
			
			for(CategoryBean c:clist) {
				
				catList.add(c.getCategory());
			}
			
			m.addAttribute("CategoryName", catList);
			
			page="Register_Category";
		}
		else {
			
			Optional<CategoryRepBean> op= crd.findById(cb.getCategoryrepid());
			
			if(!op.isPresent()) {
				crd.save(cb);
				page="categoryrepsuccess";
			}
			else {
				
				List<CategoryBean> clist=catdao.findAll();
				
				List<String> catList=new  ArrayList<String>();
				
				for(CategoryBean c:clist) {
					
					catList.add(c.getCategory());
				}
				
				m.addAttribute("CategoryName", catList);
				
				CategoryRepBean ub=op.get();
				br.addError(new FieldError("categoryrepid", "categoryrepid", ub.getCategoryrepid()+" CategoryRepId aldready exists"));
				page="Register_Category";
			}
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
			mv=new ModelAndView("Home");
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
