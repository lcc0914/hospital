package com.javaweb.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaweb.po.Expert;
import com.javaweb.service.impl.ExpertService;

@Controller
public class SouController {

	@Autowired
	private ExpertService expertService;
	@RequestMapping(value = "/sou.action",method = RequestMethod.POST)
	public String sou(Expert expert,Model model,HttpSession session) {
		String souname=expert.getName();
		return "xiangqing";
	}
}
