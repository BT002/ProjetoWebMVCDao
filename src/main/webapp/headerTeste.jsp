<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="dao.AlunoDAO"%>
<%@ page import="dao.AlunoDAOImplMysql"%>
<%@ page import="model.Aluno"%>

<!DOCTYPE html>
<html>
<head>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>


<meta charset="ISO-8859-1">
<title>BD Alunos</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><b>BD Alunos</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link " href="#">Regristo do Aluno (RA) </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/TesteAlunoServlet?opcao=nome_aluno">Nome </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Telefone </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/TesteAlunoServlet?opcao=endereco_aluno"">Endereço </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Data de Nascimento </a>
      </li>
       <li class="nav-item active">
       <a class="navbar-text text-info" href="<%=request.getContextPath()%>/TesteAlunoServlet?acao=exibir_formulario_cadastrar_aluno"> Cadastrar novo Aluno </a>
      </li>
     </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" aria-label="Search">
      <button class="btn btn-outline-warning my-2 my-sm-1" type="submit">Procurar</button>
    </form>
  </div>
</nav>


</body>
</html>