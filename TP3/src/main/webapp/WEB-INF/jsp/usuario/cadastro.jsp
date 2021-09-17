<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TP3 - Cadastro</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cosmo/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<c:if test="${not empty mensagem}">
			<div class="alert alert-danger">
			  <strong>Erro</strong> ${mensagem}
			</div>
		</c:if>
	
	<h2>Cadastro de usuários</h2>
	
	<hr>

	<form action="/usuario" method="post">	
		<div class="form-group">
			<div class="form-group">
			  <label>Nome:</label>
			  <input type="text" class="form-control" placeholder="Informe seu nome" name="nome">
			</div>
	
			<div class="form-group">
			  <label>E-mail:</label>
			  <input type="email" class="form-control" placeholder="Informe seu E-mail" name="email">
			</div>
	
			<div class="form-group">
			  <label>Senha:</label>
			  <input type="password" class="form-control" placeholder="Informe uma senha" name="senha">
			</div>			
		</div>
			
		<div class="form-row">
			<div class="form-group">
				<button type="submit" class="btn btn-dark">Cadastrar</button>
			</div>
		</div>
	</form>

</div>

</body>
</html>