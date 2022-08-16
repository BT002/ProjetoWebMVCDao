<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.AlunoDAO"%>
<%@ page import="dao.AlunoDAOImplMysql"%>
<%@ page import="model.Aluno"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Editar aluno</title>
</head>


<body>

	<h2>Editando dados do aluno</h2>
	
	<jsp:useBean id="aluno" class="model.AlunosBean" scope="request" />

	<form action="/update_aluno">
	  RA: 
	  <input type="text" name="ra" value="<%=aluno.getAlunoEdicao().getRa() %>"><p>
	  Nome: 
	  <input type="text" name="nome" value="<%=aluno.getAlunoEdicao().getRa() %>"><p>
	  Endereco: 
	  <input type="text" name="endereco" value="<%=aluno.getAlunoEdicao().getRa() %>"><p>
	  Telefone: 
	  <input type="text" name="telefone" value="<%=aluno.getAlunoEdicao().getRa() %>"><p>
	  Data nascimento: 
	  <input type="text" name="data_nascimento" value="<%=aluno.getAlunoEdicao().getRa() %>"><p>
	  
	  <input type="submit" value="Salvar alterações">
	  <input type="button" value="Cancelar">
	</form> 

</body>
</html>