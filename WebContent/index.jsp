<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
	h1 {position: absolute;width: 100%;top: 10%;color: steelblue;font-size: 3.125rem;display: flex;
	    align-items: center;justify-content: center;}
	div {position: absolute;width: 100%;top: 30%;display: flex;align-items: center;justify-content: center;}
	a {text-decoration: none;color: white;font-size: 1.25rem;font-weight: bold;
	   background-color: darkturquoise;border-radius: 1.25rem;width: 12.5rem;
	   height: 12.5rem;display: flex;align-items: center;justify-content: center;}
	button {background-color: darkturquoise;border-radius: 1.25rem;
	        width: 12.5rem;height: 12.5rem;color: white;}
	.pk {background-color: lightcoral;}
	.yw {background-color: #FFD700;}
</style>
</head>
<body>
<h1>Management</h1>
<div>
<a class="bl" href="<%=path %>/searchrecord.action">Search Records</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a class="pk" href="<%=path %>/AddAccount.jsp">Add New Account</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a class="yw" href="<%=path %>/Dashboard.html">Visualization</a>
</div>
</body>
</html>