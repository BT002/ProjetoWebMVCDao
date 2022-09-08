<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.CursoDAO"%>
<%@ page import="dao.CursoDAOImplMysql"%>
<%@ page import="model.Curso"%>

<!DOCTYPE html>
<html>
<head>
	<title>Cursos</title>
	
	<style type="text/css">
		table {
			border-collapse: collapse;
			border-color: black;
		}
		
		th, td {
			padding: 0px 15px;
		}
	</style>

</head>

<body>
	<h3>Lista de Cursos</h3>
	<hr>

	<a href="<%=request.getContextPath()%>/CursoServlet?acao=exibir_formulario_cadastrar_curso"> Cadastrar novo curso </a>
	<br>
	<table border="1">
		<thead>
			<tr>
				<th>Código do Curso</th>
				<th>Nome</th>
				<th>Descrição</th>
				<th>Valor</th>
				<th>Data de início</th>
				<th>Data de fim</th>
				<th colspan="2">Ações</th>
			</tr>
		</thead>
		<tbody>
		
			
			<%
				List<Curso> cursos = (List) request.getAttribute("cursos_todos");
				for (Curso curso : cursos) {
			%>
			<tr>
				<td><%=curso.getCod_curso()%></td>
				<td><%=curso.getNome()%></td>
				<td><%=curso.getDescricao()%></td>
				<td><%=curso.getValor()%></td>
				<td><%=curso.getData_inicio()%></td>
				<td><%=curso.getData_fim()%></td>
				<td><a href="<%=request.getContextPath()%>/CursoServlet?acao=exibir_formulario_editar_curso&cod_curso=<%=curso.getCod_curso()%>">Editar</a></td>
				<td><a href="<%=request.getContextPath()%>/CursoServlet?acao=deletar_curso&cod_curso=<%=curso.getCod_curso()%>">Deletar</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>

</body>
</html>