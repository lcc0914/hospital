package com.javaweb.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaweb.dao.impl.UserDao;
import com.javaweb.po.User;
import com.javaweb.service.impl.UserService;;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void registUser(User user) {
		userDao.saveUser(user);
	}

	@Override
	public User login(User user) {
		return userDao.queryUsernameAndPassword(user);
	}

	@Override
	public boolean existUsername(String phonenumber) {
		if(userDao.queryUsername(phonenumber)==null) {
			return false;
		}
		return true;
	}

	@Override
	public int deleteUser(User user) {
		return userDao.deleteUser(user);
	}

	@Override
	public List<User> querUsers() {
		return userDao.queryUsers();
	}

}
