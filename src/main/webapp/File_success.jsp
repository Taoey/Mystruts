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
		file  success<br>	
		描述：${fileName}<br>
		错误信息：${fieldErrors.fileError[0]}<br>
		图片上传结果：	<br>		
		<img alt="头像" src="upLoadFiles/${upFileFileName}"><br>
		<s:debug></s:debug>
		
		
		
		
		
		
	</body>
</html>