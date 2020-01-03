<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="addr" class="jspbook.address.AddrBean"/>
<jsp:useBean id="addrManager" class="jspbook.address.AddrManager" scope="application"/>
<jsp:setProperty name="addr" property="*"/>
<%
	addrManager.add(addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
td{
	align:"center";
}
</style>
</head>
<body>
<div align="center">
<h2>Confirm Add Address</h2>
<hr>
<form>
<table border="1">
<tr>
<td>Name</td>
<td><%= addr.getName() %></td>
</tr>
<tr>
<td>Phone</td>
<td><%= addr.getPhone() %></td>
</tr>
<tr>
<td>Email</td>
<td><%= addr.getEmail() %></td>
</tr>
<tr>
<td>Gender</td>
<td align="center">
<%= addr.getGender() %>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="button" value="Address List" onclick="location.href='addr_list.jsp'"></td>
</tr>
</table>
</form>
</div>
</body>
</html>