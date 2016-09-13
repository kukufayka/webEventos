<%@page import="util.Lugar"%>
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
<%@page import="java.util.Iterator"%>
<%
	Evento ev = new Evento();
	int cont = 0;
%>
<%
	String tipo = null;
%>
<%
	int id = 0;
%>
<%
	SessionFactory sessionFac = HibernateUtils.getSessionFactory();
	Session ses = sessionFac.openSession();
	Transaction tr = ses.beginTransaction();
	Query cons = ses.createQuery("from Evento");
	List<Evento> lista = cons.list();
	Iterator it = lista.iterator();
	System.out.println("Evento" + lista.size());
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

p {
	text-align: left;
	font-weight: bolder;
	color: black;
}

.row {
	float: left;
}

.col {
	overflow: hidden;
	padding-top: 10px;
	padding-right: 50px;
	border-top: 1px solid #9da7a7;
	margin-bottom: 20px;
	margin-top: 0;
}

.tipo {
	font-weight: bold;
}

.h3 {
	float: left;
	margin-top: 0;
	overflow: hidden;
	font: 12px open sansb;
	margin-top: 0;
}
/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

a {
	float: left;
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
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		font-weight: bold;
		color: black;
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
		<!-- Incators -->
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
				<img src="img/teatro.jpg">
				<div class="carousel-caption">
					<h3>Teatros</h3>
				</div>
			</div>

			<div class="item">
				<img src="img/museo3.jpg">
				<div class="carousel-caption">
					<h3>Museos</h3>
				</div>
			</div>

			<div class="item">
				<img src="img/feria1.jpg">
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
	<div class="container text-center">
		<h3>A donde Ir</h3>
		<br>
		<div class="row">
			<%
				while (it.hasNext()) {
					ev = (Evento) it.next();
					tipo = ev.getTipoEvento();
					id = ev.getIdEvento();
					Lugar lu = ev.getLugar();
			%>
			<div class="col">
				<div class="tipo">
					<p><%=ev.getTipoEvento()%>
						<%=lu.getNombreLugar()%>
					<p><%=lu.getProvincia()%>
					</p>
				</div>
				<img src="fotos/<%=ev.getImg()%>" class="img-responsive"
							style="width: 150px; height: 150px;"><div c lass="nombre">
					<h3>
						<a href="http://localhost:8080/Eventos/Eventos.jsp?id=<%=id%>"><%=ev.getNombreE()%>
						</a>
					</h3>
				</div>
			</div>
			<%}%>
		</div>
	</div>
	<br>

	<footer class="container-fluid text-center">
	<p>Todos los derechos estan reservados de kukufayka</p>
	<p>Valladolid</p>
	<p>2016</p>

	</footer>

</body>
</html>
