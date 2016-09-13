<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.OutputStream"%>
<%@page import="com.mysql.jdbc.Blob"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Cosas.HibernateUtils"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.io.IOException"%>
<%@page import="util.Evento"%>
<%@page import="util.Lugar"%>
<%@page import="java.util.Iterator"%>
<%
	Evento ev = null;
	String id = request.getParameter("id");
	if (id == null) {
		response.sendRedirect("http://localhost:8080/Eventos/index1.jsp");
	} else {
		SessionFactory sessionFac = HibernateUtils.getSessionFactory();
		Session ses = sessionFac.openSession();
		Transaction tr = ses.beginTransaction();
		Query cons = ses.createQuery("FROM Evento ev where ev.idEvento=:idEvento ");
		cons.setParameter("idEvento", Integer.valueOf(id));
		ev = (Evento) cons.uniqueResult();
		Lugar lug = ev.getLugar();
%>
<!DOCTYPE html>
<html lang="es">
<head>
<title>Eventos</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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

.carousel-inner img {
	width: 700px; /* Set width to 100% */
	margin: auto;
	height: 50px;
}

h5 {
	font-weight: bold;
	font-size: large;
}
h6{
font-weight: bold;
font-size:  small;

}
.row{
    overflow: hidden;
	padding-top: 10px;
	border-top: 1px solid #9da7a7;
	margin-bottom: 20px;
	margin-top: 0;
	margin-right: 2px;
}
.evento {
	padding-left: 10em;
	background: white;
}
/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="http://localhost:8080/Eventos/index1.jsp">Home</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="http://localhost:8080/Eventos/Eventos.jsp">Eventos</a></li>
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
			<!-- <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
        <li data-target="#myCarousel" data-slide-to="7"></li> -->
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
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="evento">
		<br>
		<div class="row">
			<div class="col-sm-4">
				<h5><%=lug.getTipoLugar()%>
					<%=lug.getNombreLugar()%></h5>
				<img src="fotos/<%=ev.getImg()%>" class="img-responsive"
					style="width: 350px; height: 350px";>
				<p>
				<h5><%=ev.getNombreE()%></h5>
				<p><%=ev.getDescripcion()%></p>
				<p>
			</div>
			<div class="row">
				<h6>Fechas:</h6><%=ev.getFechaInicioFin()%></p>
				<p>
				<h6>Horario:</h6><%=ev.getHoraInicioFin()%></p>
				<h6>Entrada:</h6><%=ev.getTipoEntrada()%></p>
				<h6>Precios:</h6><%=ev.getPrecios()%></p>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<p>Todos los derechos estan reservados de kukufayka</p>
		<p>Valladolid</p>
		<p>2016</p>

	</footer>
</body>
</html>