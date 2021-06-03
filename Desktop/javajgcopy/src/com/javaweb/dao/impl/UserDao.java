package com.javaweb.dao.impl;
import java.util.List;

import com.javaweb.po.User;

public interface UserDao{
	public User queryUsername(String phonenumber);
	
	public User queryUsernameAndPassword(User user);
	
	public int saveUser(User user);
	
	public List<User> queryUsers();
	
	public int deleteUser(User user);
}
