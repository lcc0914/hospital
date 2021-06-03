package com.javaweb.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaweb.po.Expert;
import com.javaweb.service.impl.ExpertService;

@Controller
public class ExpertController {

	@Autowired
	private ExpertService expertService;
	
	public void xiangqing(Expert expert,HttpSession session) {
	}
	
	@RequestMapping(value = "/tj.action",method = RequestMethod.POST)
	public String tj(Expert expert,Model model,HttpSession session) {
		expertService.tjExpert(expert);
		model.addAttribute("msg1","添加成功!");
		return "admin";
	}
	
	@RequestMapping(value = "/listexpert")
	public String allexpert(Expert expert,Model model,HttpSession session) {
		List<Expert> experts=expertService.queryExperts();
		session.setAttribute("experts", experts);
		return "admin";
	}
	
	@RequestMapping(value = "/deleteexpert")
	@ResponseBody
	public String scString(String name,String keshi) {
		Expert expert=new Expert();
		expert.setName(name);
		expert.setKeshi(keshi);
		int x=expertService.deleteExpert(expert);
		if(x>0) {
			return "OK";
		}else {
			return "FAIL";
		}
	}
}
