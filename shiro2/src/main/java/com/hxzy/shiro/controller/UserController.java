package com.hxzy.shiro.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hxzy.shiro.pojo.User;
import com.hxzy.shiro.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequiresPermissions("get:user")
	@RequestMapping("/user/list")
	public String list(HttpSession session) {
		List<User> users = userService.getUserlist();
		session.setAttribute("users", users);
		return "/user/list";
	}
}
