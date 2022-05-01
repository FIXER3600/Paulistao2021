<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classificacao</title>
</head>
<body>
</head>
<body>
	<div class="header">
		<ul>
			<li><a href="index.jsp" class="link-grupos">Grupos</a></li>
			<li><a href="jogos.jsp" class="link-jogos">Jogos</a></li>
			<li><a href="rodadas.jsp" class="link-rodadas">Rodadas</a></li>
			<li><a href="classificacao.jsp" class="link-classificacao">Classificacao</a></li>
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

	<div class="classificacao">
		<img alt="Logo" src="./assets/logo.png">
		<form action="ServletClassificacao" method="post">
			<input type="submit" id=class_geral name=class_geral
				value="Classificacao Geral">
		</form>
		<div>
			<table>
				<tr>
					<th class='Resultado'>Time</th>
					<th class='Resultado'>Jogos</th>
					<th class='Resultado'>Vitorias</th>
					<th class='Reultado'>Empates</th>
					<th class='Resultado'>Derrotas</th>
					<th class='Resultado'>Gols Marcados</th>
					<th class='Resultado'>Gols Sofridos</th>
					<th class='Resultado'>Saldo de Gols</th>
					<th class='Resultado'>Pontos</th>
				</tr>
				<c:forEach items="${resultadoGeral}" var="r">
					<tr>
						<td align="center"><c:out value="${r.getTime()}"></c:out></td>
						<td align="center"><c:out value="${r.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${r.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${r.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${r.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${r.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${r.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${r.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${r.getPontos()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<form action="ServletClassificacaoGrupo" method="post">
			<input type="submit" id=nome name=nome
				value="nome">
		</form>
		<div>
			<table>
				<tr>
					<th class='Resultado'>Time</th>
					<th class='Resultado'>Jogos</th>
					<th class='Resultado'>Vitorias</th>
					<th class='Reultado'>Empates</th>
					<th class='Resultado'>Derrotas</th>
					<th class='Resultado'>Gols Marcados</th>
					<th class='Resultado'>Gols Sofridos</th>
					<th class='Resultado'>Saldo de Gols</th>
					<th class='Resultado'>Pontos</th>
				</tr>
				<c:forEach items="${resultadoGrupo}" var="r1">
					<tr>
						<td align="center"><c:out value="${r1.getTime()}"></c:out></td>
						<td align="center"><c:out value="${r1.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${r1.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${r1.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${r1.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${r1.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${r1.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${r1.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${r1.getPontos()}"></c:out></td>
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