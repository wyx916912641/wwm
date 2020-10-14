package com.hxzy.shiro.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hxzy.shiro.pojo.User;
import com.hxzy.shiro.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	
	@RequestMapping({ "/", "/index" })
	public String index(Model model) {
		Subject subject = SecurityUtils.getSubject();
		String username = (String) subject.getPrincipal();
		if (username == null) {
			return "/login";
		}
		model.addAttribute("username", username);
		return "/main";
	}

	@RequestMapping("/log")
	public String login(@ModelAttribute User user) {
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
		Subject subject = SecurityUtils.getSubject();
		subject.login(token); // 身份认证
		return "redirect:index";
	}

	@RequiresGuest
	@RequestMapping("/login")
	public String login() {

		return "/login";
	}

	@RequestMapping("/403")
	public String a403() {
		return "/403";
	}

}
