<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Listado de Empleados</title>

	<style>
		tr:first-child{
			font-weight: bold;
			background-color: #C6C9C4;
		}
	</style>

</head>
<body>
	<h2>Todos los empleados</h2>	
	<table>
		<tr>
			<td>Nombre</td><td>Fecha de Inicio</td><td>Salario</td><td>Cédula</td><td></td>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
			<td>${employee.name}</td>
			<td>${employee.joiningDate}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
			<td><a href="<c:url value='/delete-${employee.ssn}-employee' />">Borrar</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="<c:url value='/new' />">Añadir un Empleado</a>
</body>
</html>