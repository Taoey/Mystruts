<%@page import="cn.hwtblog.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<label>login success!!!</label><br>
		<%
		User viewUser = (User) request.getAttribute("user");
		%>
		<ul>
			<li><%=viewUser.getUserName() %></li>
			<li><s:property value="user.userName"/></li>
			<li>${user.userName }</li>
		</ul>
		<s:debug></s:debug>
	</body>
</html>