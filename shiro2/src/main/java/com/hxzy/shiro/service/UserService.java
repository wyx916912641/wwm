package com.hxzy.shiro.service;

import java.util.List;

import com.hxzy.shiro.pojo.User;

public interface UserService {
	public User getUserByName(String username);
	
	public List<User> getUserlist();
}
