<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.AlunoDAO"%>
<%@ page import="dao.CursoDAOImplMysql"%>
<%@ page import="model.Aluno"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Editar aluno</title>
</head>


<body>

	<h2>Editando dados do aluno</h2>
	
	<%
		Aluno aluno = (Aluno) request.getAttribute("alunoSelecionado");

	%>

	<form method="GET" action="AlunoServlet" name="form1">
	  <input type="hidden" name="acao" value="update_aluno">
	  RA: 
	  <input type="text" name="ra" value="<%=aluno.getRa() %>"><p>
	  Nome: 
	  <input type="text" name="nome" value="<%=aluno.getNome() %>"><p>
	  Endereco: 
	  <input type="text" name="endereco" value="<%=aluno.getEndereco() %>"><p>
	  Telefone: 
	  <input type="text" name="telefone" value="<%=aluno.getTelefone() %>"><p>
	  Data nascimento: 
	  <input type="text" name="data_nascimento" value="<%=aluno.getData_nascimento() %>"><p>
	  
	  <input type="submit" value="Salvar alterações">
	  <input type="button" value="Cancelar">
	</form> 

</body>
</html>