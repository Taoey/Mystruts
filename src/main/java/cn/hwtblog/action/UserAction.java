package cn.hwtblog.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.hwtblog.domain.User;

public class UserAction extends ActionSupport{
	
	private User user;
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}



	public String login() {
		System.out.println(user.getUserName());
		return SUCCESS;
	}
	
	

}
