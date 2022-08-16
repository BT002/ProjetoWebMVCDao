<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projeto 10/08/2022</title>
    <link rel="stylesheet" href="css/style.css">
	<style>
* {
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
}
#menu-h{
    background-color: rgb(37, 37, 39);
}
#menu-h ul {
    max-width: 800px;
    list-style: none;
    padding: 0;
}
#menu-h ul li {
    display: inline;
}
#menu-h ul li a {
    color: #FFF;
    padding: 20px;
    display: inline-block;
    text-decoration: none;
    transition: background .4s;
}
#menu-h ul li a:hover {
    background-color: rgb(24, 139, 233);
}
/*
#menu-h ul li:last-child a {
    float: right;
    background-color: rgb(24, 139, 233);
}
*/
	</style>
	
</head>

<body>

    <nav id="menu-h">
        <ul>
            <li><a href="#">Home</a></li>

            <li><a href="#">Alunos</a></li>
            
            <li><a href="#">Professores</a></li>
            
            <li><a href="#">Disciplinas</a></li>
            
            <li><a href="#">Cursos</a></li>
        </ul>
    </nav>

</body>

</html>