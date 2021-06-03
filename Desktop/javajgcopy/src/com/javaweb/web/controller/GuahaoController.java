package com.javaweb.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaweb.po.Guahao;
import com.javaweb.po.User;
import com.javaweb.service.impl.GuahaoService;


@Controller
public class GuahaoController {

	@Autowired
	private GuahaoService guahaoService;
	
	@RequestMapping(value = "/guahao.action",method = RequestMethod.POST)
	public String gh(Guahao guahao,Model model,HttpSession session){


		User loginUser=(User)session.getAttribute("USER_SESSION");
		String phonenumber=loginUser.getPhonenumber();
		guahao.setPhonenumber(phonenumber);
		if(guahaoService.existGuahao(guahao)==false) {
			guahaoService.queren(guahao);
			model.addAttribute("tishi","挂号成功！");
			return "guahao";
		}
		model.addAttribute("tishi","此号已被挂，挂号失败！");
		return "guahao";
		
	}
}