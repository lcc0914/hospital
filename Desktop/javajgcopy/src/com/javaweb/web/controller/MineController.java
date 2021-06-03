package com.javaweb.web.controller;

import java.lang.reflect.Parameter;
import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaweb.po.Guahao;
import com.javaweb.po.User;
import com.javaweb.service.impl.GuahaoService;

@Controller
public class MineController {
	

	@Autowired
	private GuahaoService guahaoService;
	
	@RequestMapping(value = "/mine.action",method = RequestMethod.POST)
	public String wode(Guahao guahao,Model model,HttpSession session) {
		User loginUser=(User)session.getAttribute("USER_SESSION");
		String phonenumber=loginUser.getPhonenumber();
		guahao.setPhonenumber(phonenumber);
		List<Guahao> guahaos= guahaoService.queryGuahaos(loginUser.getPhonenumber());
		session.setAttribute("guahaos", guahaos);
		return "mine";
	}
	
	@RequestMapping(value = "/delete.action")
	@ResponseBody
	public String qx(String keshi,String name,String date,String time) {
		Guahao guahao=new Guahao();
		guahao.setKeshi(keshi);
		guahao.setName(name);
		guahao.setDate(date);
		guahao.setTime(time);
		int x=guahaoService.deleteGuahao(guahao);
		if(x>0) {
			return "OK";
		}else {
			return "FAIL";
		}
	}
}
