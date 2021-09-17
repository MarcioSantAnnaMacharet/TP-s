<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">TP3</a>
    </div>
    <ul class="navbar-nav me-auto">
      <li class="nav-item"><a class="nav-link active" href="/"> <span class="visually-hidden"> Home </span></a></li>
      
      <c:if test="${not empty user}">
      	  <li><a class="nav-link active" href="/usuario/lista">Usuário</a></li>
      </c:if>
    </ul>
    <ul class="navbar-nav me-auto">
      <c:if test="${empty user}">
	      <li><a class="nav-link" href="/usuario"><span class="visually-hidden"> Sign UP </span></a></li>
              
	      <li><a class="nav-link" href="/login"><span class="visually-hidden"> Login </span></a></li>
      </c:if>
      <c:if test="${not empty user}">
      	  <li><a class="nav-link" href="/logout"><span class="visually-hidden"> Logout, ${user.nome} </span></a></li>
      </c:if>
    </ul>
  </div>
</nav>
