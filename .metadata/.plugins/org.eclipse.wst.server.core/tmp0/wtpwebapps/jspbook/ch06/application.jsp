<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>application example</h2>
<hr>
1. server information : <%= application.getServerInfo() %><br>
2. Servlet API Version : <%= application.getMajorVersion() +"." +application.getMinorVersion() %><br>
3. application.jsp 실제 경로 : <%= application.getRealPath("application.jsp") %><br>
<hr>
setAttribute로 username 변수에 "ben" 설정<p>
<% application.setAttribute("username", "ben");
	application.log("username=ben");
	application.setAttribute("count", 1);
%>
<a href="application_result.jsp">확인하기</a>
</div>
</body>
</html>