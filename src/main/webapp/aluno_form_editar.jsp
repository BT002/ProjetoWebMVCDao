<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Editar aluno</title>
</head>


<body>

	<h2>Editando dados do aluno</h2>
	
	<%
		String ra = request.getParameter("ra");
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String telefone = request.getParameter("telefone");
		String dataNascimento = request.getParameter("data_nascimento");
	%>

	<form action="/update_aluno">
	  RA: 
	  <input type="text" name="ra" value="<%=ra %>"><p>
	  Nome: 
	  <input type="text" name="nome" value="<%=nome %>"><p>
	  Endereco: 
	  <input type="text" name="endereco" value="<%=endereco %>"><p>
	  Telefone: 
	  <input type="text" name="telefone" value="<%=telefone %>"><p>
	  Data nascimento: 
	  <input type="text" name="data_nascimento" value="<%=dataNascimento %>"><p>
	  
	  <input type="submit" value="Salvar alterações">
	  <input type="button" value="Cancelar">
	</form> 

</body>
</html>