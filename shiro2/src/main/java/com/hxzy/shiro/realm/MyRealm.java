package com.hxzy.shiro.realm;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.druid.pool.vendor.SybaseExceptionSorter;
import com.hxzy.shiro.pojo.Permission;
import com.hxzy.shiro.pojo.Role;
import com.hxzy.shiro.pojo.User;
import com.hxzy.shiro.service.UserService;

public class MyRealm extends AuthorizingRealm {
	@Autowired
	private UserService userService;
	//授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		  SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		  Subject subject = SecurityUtils.getSubject();
		  Session session = subject.getSession();
		  User user	=(User) session.getAttribute("user");
	      List<Role> roles = user.getRols(); 
	      for(Role role : roles) {
	    	  authorizationInfo.addRole(role.getRole());
	    	  for(Permission per: role.getPermissions()) {
	    		  authorizationInfo.addStringPermission(per.getUrl());
	    	  }
	      }
		return authorizationInfo;
	}
	//身份认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		String username = (String) token.getPrincipal(); //用户名
		String password = new String((char[])token.getCredentials());//密码
		User user = userService.getUserByName(username);
		
		if(user == null) {
			  throw new UnknownAccountException("身份认证不通过");
		}
		SimpleAuthenticationInfo info  =null;
		try {
			info= new SimpleAuthenticationInfo(username, user.getPassword(),new Md5Hash(username) ,getName());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		session.setAttribute("user", user);
		return info;
	}

}
