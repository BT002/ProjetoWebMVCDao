<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Professor"%>

<!DOCTYPE html>
<html>
<head>
	<title>Professores</title>
	
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
	<h3>Lista de Professores</h3>
	<hr>

	<a href="<%=request.getContextPath()%>/ProfessorServlet?acao=exibir_formulario_cadastrar_professor"> Cadastrar novo professor(a) </a>
	<br>
	<table border="1">
		<thead>
			<tr>
				<th>CPF</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Conta Bancária</th>
				<th colspan="2">Ações</th>
			</tr>
		</thead>
		<tbody>
		
			
			<%
				List<Professor> professores = (List) request.getAttribute("professores_todos");
				for (Professor professor : professores) {
			%>
			<tr>
				<td><%=professor.getCpf()%></td>
				<td><%=professor.getNome()%></td>
				<td><%=professor.getTelefone()%></td>
				<td><%=professor.getConta_bancaria()%></td>
				<td><a href="<%=request.getContextPath()%>/ProfessorServlet?acao=exibir_formulario_editar_professor&cpf=<%=professor.getCpf()%>">Editar</a></td>
				<td><a href="<%=request.getContextPath()%>/ProfessorServlet?acao=deletar_professor&cpf=<%=professor.getCpf()%>">Deletar</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>

</body>
</html>