<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>JSP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Contenido -->
	<div class="container" id="contenedor-principal">
		<h2>Comentarios</h2>
		<ul>
			<c:forEach var="comentario" begin="0" items="${comentarios}">
				
					<div>
						<c:out value="User:" />
						<c:out value="${comentario.usuario}" />
						<div>
							<c:out value="Mensaje:" />
							<c:out value="${comentario.comentario}" />
						</div>						
					</div>
					<br>
			</c:forEach>
			
		</ul>
		<br>
			<h3>Comenta:</h3>
			<form action="/sdi806-lab-jee/comentarios">
			Usuario:<br><input type="text" name="user"><br>
			Comentario:<br><input type="text" name="comentario"><br>
			<br>
			<input type="submit" value="Enviar">
			
			</form>
	</div>
</body>
</html>
