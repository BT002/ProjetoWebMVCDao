<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProfessorDAO"%>
<%@ page import="dao.ProfessorDAOImplMysql"%>
<%@ page import="model.Professor"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastrar Professor(a)</title>
</head>

<body>

	<h2>Cadastrando novo Professor(a)</h2>
	
		<form method="GET" action="ProfessorServlet" name="form1">
		  <input type="hidden" name="acao" value="insert_professor">
		  CPF: 
		  <input type="text" name="cpf"><p>
		  Nome: 
		  <input type="text" name="nome"><p>
		  Telefone: 
		  <input type="text" name="telefone"><p>
		  Conta Bancária: 
		  <input type="text" name="conta_bancaria"><p>
		  
		  <input type="submit" value="Salvar alterações">
		  <input type="button" value="Cancelar" onClick="history.go(-1)">
		</form> 

</body>
</html>