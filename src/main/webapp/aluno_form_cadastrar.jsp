<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.AlunoDAO"%>
<%@ page import="dao.AlunoDAOImplMysql"%>
<%@ page import="model.Aluno"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastrar Aluno</title>
</head>

<body>

	<h2>Cadastrando novo Aluno</h2>
	
	
	
		<form method="GET" action="AlunoServlet" name="form1">
		<input type="hidden" name="acao" value="insert_aluno">
		  RA: 
		  <input type="text"  name="ra"><p>
		  Nome: 
		  <input type="text" name="nome"><p>
		  Endereco: 
		  <input type="text" name="endereco"><p>
		  Telefone: 
		  <input type="text" name="telefone"><p>
		  Data nascimento: 
		  <input type="text" name="data_nascimento"><p>
		  
		  <input type="submit" value="Salvar alterações">
		  <input type="button" value="Cancelar">
		</form> 

</body>
</html>