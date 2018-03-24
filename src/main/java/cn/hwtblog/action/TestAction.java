package cn.hwtblog.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class TestAction {
	
	private Map request;
	
	
	public void test() {
		request = (Map)ActionContext.getContext().get("request");
	}

}
