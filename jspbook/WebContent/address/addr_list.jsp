<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.address.AddrBean"%>
<jsp:useBean id="addrManager" class="jspbook.address.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Address Book</title>
<style>
table{
	width:"500px";
}
</style>
</head>
<body>
<div align="center">
<h2>Address Book</h2>
<hr>
<input type="button" value="Add Address" onclick="location.href='addr_form.html'">
<table border="1">
<tr>
<td>Name</td>
<td>Phone</td>
<td>E-mail</td>
<td>Gender</td>
</tr>
<%
	for(AddrBean addr : addrManager.getAddr()){
%>
<tr>
	<td><%= addr.getName() %></td>
	<td><%= addr.getPhone() %></td>
	<td><%= addr.getEmail() %></td>
	<td><%= addr.getGender() %></td>
	</tr>
<%
	}

%>
</table>
</div>
</body>
</html>