package com.hxzy.shiro.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.hxzy.shiro.pojo.User;

public interface UserDao extends JpaRepository<User, Integer>{
	@Query("from User where  username = ?1")
	public User getUserByName(String username);
	
}
