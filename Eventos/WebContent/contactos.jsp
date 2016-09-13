<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="es">
<head>
  <title>Eventos</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
   .datos{
   padding-left: 400px;
    padding-top:50px;
    padding-bottom:10px;
    text-align: left;
    text-shadow: black;
    font-weight: bolder;
    font-size: medium;
    color: gray;
    background: white;
   } 
  .carousel-inner img {
      width: 700px; /* Set width to 100% */
      margin: auto;
      height: 50px;
  }
  a {
	text-align: right;
	font-weight: bolder;
}

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="http://localhost:8080/Eventos/index1.jsp">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="http://localhost:8080/Eventos/Eventos.jsp">Eventos</a></li>
        <li><a href="http://localhost:8080/Eventos/Lugares.jsp">Lugares</a></li>
        <li><a href="http://localhost:8080/Eventos/contactos.jsp">Contactos</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
       <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
   <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img/teatro.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Teatros</h3>
        </div>      
      </div>

      <div class="item">
        <img src="img/museo3.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Museos</h3>
        </div>      
      </div>
      
       <div class="item">
        <img src="img/feria1.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Feria de Valladolid</h3>
        </div>      
      </div>
      
     </div> 
     
     <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  <div class="well">
  <div class="datos" >
  <span>
    <p>Contacto: Aleksandrina Vladkova Davidova</p>
    <p>   email: kukufayka@yahoo.com</p>
    <p>   telf.: 987326459</p>
    <p>web: <a href="http://google.com">click</a></p>
    </span>
  </div>
</div>
<footer class="container-fluid text-center">
  <p>Todos los derechos estan reservados de kukufayka</p>
  <p>Valladolid</p>
  <p>2016</p>
</footer>
</body>

</html>