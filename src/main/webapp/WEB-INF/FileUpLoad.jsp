<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<!-- 		<form action="file/File_oneUp.action" method="post" enctype="multipart/form-data">
		    文件名：<input type="text" name="fileName"/><br/>
		    文件：<input type="file" name="file"/><br/>
		         <input type="submit" value="上传">
		</form> -->
		
    <s:form action="file/File_oneUp.action" method="post"  enctype="multipart/form-data">
        文件名：<s:textfield name="fileName"/><br>
        文件：<s:file name="upFile"/><br>
        <s:submit value="提交"/>
　　　　
　　　　　<s:fielderror/>
　　　　
    </s:form>		
		
		
		
		
		
		
		
	</body>
</html>