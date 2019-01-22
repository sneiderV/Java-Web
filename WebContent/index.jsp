<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Web</title>
</head>
<body>
	<h1>Ejemplo Web</h1>
	<a href="MyServlet?var1=1&var2=2&var3=3">Creamos una petición tipo GET</a>
	<form action="MyServlet" method="post">
	<label>Nombre: </label>
	<input type="text" name="nombre">
	<button type="submit">enviar</button>	
	</form>
</body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</html>