package com.javaweb.service.impl;

import java.util.List;

import com.javaweb.po.User;

public interface UserService {
	public void registUser(User user) ;
	
	public User login(User user);
	
	public boolean existUsername(String phonenumber);
	
	public int deleteUser(User user);
	
	public List<User> querUsers();
}
