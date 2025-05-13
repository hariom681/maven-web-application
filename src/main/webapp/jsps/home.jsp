<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> </title>
<link href="images/LARSEN.jpeg.jpeg" rel="icon">
</head>
</head>
<body>
<h1 align="center">LARSEN AND TURBO INFOTECH </h1>
<h1 align="center"> </h1>

<h2> </h2>
<hr>
<br>
	<h1><h3> </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/LARSEN.jpeg.jpeg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">

		<br>
		<a href=""></a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center></p>
<p align=center><small>Copyrights 2022 by <a href=</a> </small></p>

</body>
</html>
