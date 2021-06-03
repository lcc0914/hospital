package com.javaweb.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaweb.po.User;
import com.javaweb.service.impl.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login.action",method = RequestMethod.POST)
	public String dl(User user,Model model,HttpSession session) {
		User users=userService.login(user);
		if(users!=null) {
			session.setAttribute("USER_SESSION",user);
			if(user.getPhonenumber().equals("admin")) {
				return "admin";
			}else {
				return "index";
			}
		}
		model.addAttribute("msg","用户名或密码错误，登录失败！!");
		return "login";
	}
	
	@RequestMapping(value = "/zhuce.action",method = RequestMethod.POST)
	public String zc(User user,Model model,HttpSession session) {
		boolean ifuser=userService.existUsername(user.getPhonenumber());
		if (ifuser==true) {
			model.addAttribute("msg","手机号已存在!");
			return "zhuce";
		}
		userService.registUser(user);
		model.addAttribute("msg","注册成功!");
		return "login";
	}
	
	@RequestMapping(value = "/logout.action")
	public String zx(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/listuser.action")
	public String alluser(User user,Model model,HttpSession session) {
		List<User> users=userService.querUsers();
		session.setAttribute("users", users);
		return "admin";
	}
	
	@RequestMapping(value = "/deleteuser.action")
	@ResponseBody
	public String sc(String phonenumber,String password) {
		User user=new User();
		user.setPhonenumber(phonenumber);
		user.setPassword(password);
		int x=userService.deleteUser(user);
		if(x>0) {
			return "OK";
		}else {
			return "FAIL";
		}
	}
}
