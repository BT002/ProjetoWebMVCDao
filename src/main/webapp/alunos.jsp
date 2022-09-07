<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.AlunoDAO"%>
<%@ page import="dao.AlunoDAOImplMysql"%>
<%@ page import="model.Aluno"%>

<!DOCTYPE html>
<html>
<head>
	<title>Alunos</title>
	
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
	<h3>Lista de Alunos</h3>
	<hr>

	<a href="<%=request.getContextPath()%>/AlunoServlet?acao=exibir_formulario_cadastrar_aluno"> Cadastrar novo aluno </a>
	<br>
	<table border="1">
		<thead>
			<tr>
				<th>RA</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Endereco</th>
				<th>Data nascimento</th>
				<th colspan="2">Ações</th>
			</tr>
		</thead>
		<tbody>
		
			
			<%
				List<Aluno> alunos = (List) request.getAttribute("alunos_todos");
				for (Aluno aluno : alunos) {
			%>
			<tr>
				<td><%=aluno.getRa()%></td>
				<td><%=aluno.getNome()%></td>
				<td><%=aluno.getTelefone()%></td>
				<td><%=aluno.getEndereco()%></td>
				<td><%=aluno.getData_nascimento()%></td>
				<td><a href="<%=request.getContextPath()%>/AlunoServlet?acao=exibir_formulario_editar_aluno&ra=<%=aluno.getRa()%>">Editar</a></td>
				<td><a href="<%=request.getContextPath()%>/AlunoServlet?acao=deletar_aluno&ra=<%=aluno.getRa()%>">Deletar</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>

</body>
</html>