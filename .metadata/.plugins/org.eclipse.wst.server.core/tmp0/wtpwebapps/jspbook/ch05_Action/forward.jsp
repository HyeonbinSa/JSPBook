<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward Test Page</title>
</head>
<body>
포워드 태그 테스트 페이지 입니다.
<%= request.getParameter("email") %>
</body>
</html>