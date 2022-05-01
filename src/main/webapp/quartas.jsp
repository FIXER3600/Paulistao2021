<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quartas de Finais</title>
</head>
<body>
	<div class="header">
		<ul>
			<li><a href="index.jsp" class="link-grupos">Grupos</a></li>
			<li><a href="jogos.jsp" class="link-jogos">Jogos</a></li>
			<li><a href="rodadas.jsp" class="link-rodadas">Rodadas</a></li>
			<li><a href="classificacao.jsp" class="link-classificacao">Classificacao</a></li>
			<li><a href="quartas.jsp" class="link-quartas">Quartas de Finais</a></li>
		</ul>
	</div>
	<br>
	<br>
	<div align="center">
		<c:if test="${not empty erro}">
			<h4>
				<c:out value="${erro}"></c:out>
			</h4>
		</c:if>
	</div>
	
	<div class="quartas-de-finais">
		<img alt="Logo" src="./assets/logo.png">
		<form action="ServletQuartas" method="post">
			<input type="submit" id=mostrar_quartas name=mostrar_quartas
				value="Gerar Quartas de Finais">
		</form>
		<div>
			<table>
				<tr>
					<th class='Quartas'>Time A</th>
					<th class='Quartas'>Time B</th>
				</tr>
				<c:forEach items="${jogos}" var="j">
					<tr>
						<td align="center"><c:out value="${j.getTimeA()}"></c:out></td>
						<td align="center"><c:out value="${j.getTimeB()}"></c:out></td>
						
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div align="center">
		<c:if test="${not empty saida}">
			<h4>
				<c:out value="${saida}"></c:out>
			</h4>
		</c:if>
		<br />
		<div align="center">
			<c:if test="${not empty erro}">
				<h4>
					<c:out value="${erro}"></c:out>
				</h4>
			</c:if>
		</div>
	</div>
</body>
</html>