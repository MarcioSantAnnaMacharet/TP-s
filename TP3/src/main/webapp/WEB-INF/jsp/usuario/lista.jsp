<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TP3</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cosmo/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="list-group">
		
		<c:if test="${not empty lista}">
			<c:if test="${not empty msg}">
				<div class="alert-link">
				  <strong>Sucesso!</strong> ${msg}
				</div>
			</c:if>
                        <br>
			<h4>Usuários cadastrados: ${lista.size()}</h4>
			
			<hr>
	
			<table class="table table-hover">
		    <thead>
		      <tr class="table-light">
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>E-mail</th>
		        <c:if test="${user.admin}">
		        	<th></th>
		        </c:if>
		      </tr>
		    </thead>
		    <tbody>		    
		    	<c:forEach var="u" items="${lista}">
			      <tr class="table-light">
			        <td>${u.id}</td>
			        <td>${u.nome}</td>
			        <td>${u.email}</td>
			        <c:if test="${user.admin}">
			        	<td><a class="nav-link" href="/usuario/${u.id}/excluir"><span class="visually-hidden"> Excluir </span></a></td>
			      	</c:if>
			      </tr>
		    	</c:forEach>
		    </tbody>
		  	</table>
	  	</c:if>
	  	
	  	<c:if test="${empty lista}">
                        <br>
			<h4>Não existem usuários cadastrados</h4>	  	
	  	</c:if>
	</div>
</body>
</html>