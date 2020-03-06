package com.cts.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cts.dao.CategoryDao;
import com.cts.dao.raiseissuedao;
import com.cts.model.CategoryBean;
import com.cts.model.RaiseIssueBean;

import javax.validation.Valid;

@Controller
public class IssueController {

	@Autowired
	private raiseissuedao rdao;
	
	@Autowired
	private CategoryDao cdao;
	
	@GetMapping("/RaiseIssue")
	public String RaiseIssue(@ModelAttribute("RaiseIssueBean")RaiseIssueBean raiseissue,String uid,Model m) {
		
		List<CategoryBean> cbean = cdao.findAll();
		
		List<String> clist = new ArrayList<String>();
		
		
		
		for(CategoryBean cb:cbean) {
			clist.add(cb.getCategory());
		}
		
		m.addAttribute("categoryList", clist);
		m.addAttribute("user", uid);
		
		return "RaiseIssue";
	}
	
	@PostMapping("/RaiseIssueSuccess")
	public String addtoDB(@Valid @ModelAttribute("RaiseIssueBean")RaiseIssueBean raiseissue,BindingResult br,Model m) {
		
		
		if(br.hasErrors()) {
			
			List<CategoryBean> cbean = cdao.findAll();
			
			List<String> clist = new ArrayList<String>();
		
			for(CategoryBean cb:cbean) {
				clist.add(cb.getCategory());
			}
			
			m.addAttribute("categoryList", clist);
			
			return "RaiseIssue";
		}
		
		
		rdao.save(raiseissue);
		
		
		return "RaiseIssueSuccess";
	}
	
	@GetMapping("/ViewIssueHistory")
	public String ViewUpdateIssue(String uid,Model m) {
			
		List<RaiseIssueBean> rib = rdao.findAll();
		
		m.addAttribute("viewCategory", rib);
		m.addAttribute("user", uid);
		
		return "ViewIssueHistory";
	}
	
}
