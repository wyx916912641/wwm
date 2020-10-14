package com.hxzy.shiro.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.shiro.dao.UserDao;
import com.hxzy.shiro.pojo.User;
import com.hxzy.shiro.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	@Override
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserByName(username);
	}

	@Override
	public List<User> getUserlist() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

	
	
}
