<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Java Web</h1>
	<br>
	<h3>Esta es la variable request: ${varRequest}</h3>
	<br>
	<h3>Esta es la variable session: ${varSesion}</h3>
	<br>
	<h3>Esta es la variable contexto: ${varContext}</h3>
	
	<a href="presentacionscope.jsp">ver scope</a>
	
	<br>
	<!-- Scriptlets //funciona como una clase java normal -->
	<% 
	String a ="Scrip";
	String b = "tlets"; 
	String c = a.concat(b);
	
	out.print(c);
	%>
	<br>
	<!-- Expresiones //solo se imprimen variables-->
	<%=
	 request.getAttribute("varRequest")
	%>
	<br>
	<%=
	 request.getSession().getAttribute("varSesion")
	%>
	<br>
	<%=
	getServletContext().getAttribute("varContext")
	%>
	 
</body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</html>