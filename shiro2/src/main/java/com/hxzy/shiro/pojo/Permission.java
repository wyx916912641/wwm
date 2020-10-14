package com.hxzy.shiro.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "t_permission")
public class Permission {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String permissionname; //权限名如:删除用户
	private String url;	//权限如: user:del
	@ManyToMany
	@JoinTable(name = "t_role_permission", joinColumns = { @JoinColumn(name = "permissionid") }, inverseJoinColumns = {
			@JoinColumn(name = "roleid") })
	private List<Role> roles = new ArrayList<Role>(); 



	
	public String getPermissionname() {
		return permissionname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setPermissionname(String permissionname) {
		this.permissionname = permissionname;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
}
