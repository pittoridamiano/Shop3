<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>POVERON!</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>




<body style= "font-family: verdana">

<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato"); %>

<!-- INIZIO NAVBAR -->
<nav class="navbar navbar-default" style="background-color: #33d177">

<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="index.jsp">POVERON</a>
<a style="font-size:50px; position: unset; color: black"; class="fa">&#xf2ae;</a>


</div>

<div class="collapse navbar-collapse">
<ul class="nav navbar-nav navbar-left">
<li class="active"><a href="index.jsp" style="background-color: #33d177"><b>Home</b></a></li>
<li>
<form action = "listaofferte" method="get"></form>
<input type="hidden" name="cercaOfferte" value="Offerte" id="search_param">
<li><a href="listaofferte"><b>Offerte</b></a></li>

<li><a href="contatti.jsp"><b>Contatti</b></a></li>
<li><a href="spedizione.jsp"><b>Metodi di Spedizione</b></a></li>
<li><a href="zoom.jsp"><b>Zoom</b></a></li>


</ul>
</div>


<!-- SEARCH BAR -->
<div>   
<div align="center">

<h5><b>Ricerca per la categoria di prodotto che desideri</font></b></h5>              
<form name="ricerca" action="ricercapercategoria" method="get" align="center">
<select name="ricerca">
<option value="ABBIGLIAMENTO">Abbigliamento</option>
<option value="ALIMENTARI">Alimentari</option>      
<option value="ANIMALI">Animali</option>
<option value="BELLEZZA">Bellezza</option>
<option value="CASA">Casa</option>  
<option value="ELETTRONICA">Elettronica</option> 
<option value="GIARDINO">Giardino</option>
<option value="GIOCHI">Giochi</option>  
<option value="LIBRO">Libro</option>
<option value="MUSICA">Musica</option>
<option value="SPORT">Sport</option>  
</select>
            
<button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>

</form>
<br>



<p><b>Ricerca per nome del prodotto che desideri</b></p>
<div>
<form name="keyword" action="listaProdotti" method="get" align="center" style="width: 40%">
<input type="text" class="form-control" name="keyword" placeholder="Scrivi nome del prodotto...">
<button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>

</form>
</div>
</div>
</div>

<div class="container-fluid">
<% if (utenteLoggato == null) { %>
 <ul class="nav navbar-nav navbar-right" style="float: right">
 
<li><a href="login.jsp"><b>Login</b></a></li>

<li><a href="registrazione.jsp"><b>Registrati</b></a></li>     
<% } else { %> 
<li><a href="ilmioaccount.jsp" class="fa fa-pied-piper-alt" style="font-size:36px"><b>Il mio Account</b></a></li>
<li><a href="carrello.jsp"><b> Carrello</b></a></li>
<li><a href="logout"><b>Logout</b></a></li>
<% } %>
</ul>
</div>

</nav>







	<!-- CONTAINER -->
	<div class="container">
		<!-- titolo pagina -->
		<div class="page-header text-center">
			<h1>Benvenuti in Poveron, dove i Poveracci spendono!</h1>
		</div>

		<section> <!-- PRIMO CAROUSEL -->
		<div class="carousel slide" id="myCarousel" data-ride="carousel"
			data-interval="3000">
			<!-- immagini -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="img/tv1.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/lettino.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/cibocani1.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/lipstick.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/maglioni.jpg" class="img-carousel">
				</div>
			</div>

			<!-- indicatori -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<!-- freccette -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"
				style="position: absolute; top: -24px; bottom: auto; left: 0; width: 19%; font-size: 37px; color: blue; text-align: center; text-shadow: 0 1px 5px rgba(0, 0, 0, .6); background-color: white; filter: alpha(opacity = 50); opacity: 0.5;">
				<span class="fa fa-hand-o-left"></span>

			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"
				style="position: absolute; top: -24px; bottom: auto; right: 0; width: 19%; font-size: 37px; color: blue; text-align: center; text-shadow: 0 1px 5px rgba(0, 0, 0, .6); background-color: white; filter: alpha(opacity = 50); opacity: 0.5;">
				<span class="fa fa-hand-o-right"></span>
			</a>
			<!-- TITOLO CENTRALE -->
		</section>
		<br>
		<br>
		<br>
		<h3 style="text-align: center">Offerte</h3>
		<br>
		<br>
		<br>
		<section> <!-- SECONDO CAROUSEL -->
		<div class="carousel slide" id="myCarousel" data-ride="carousel"
			data-interval="3000">
			<!-- immagini -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="img/tv1.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/lettino.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/cibocani1.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/lipstick.jpg" class="img-carousel">
				</div>
				<div class="item">
					<img src="img/maglioni.jpg" class="img-carousel">
				</div>
			</div>

			<!-- indicatori -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<!-- freccette -->
			<!-- freccette -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"
				style="position: absolute; top: -24px; bottom: auto; left: 0; width: 19%; font-size: 37px; color: black; text-align: center; text-shadow: 0 1px 5px rgba(0, 0, 0, .6); background-color: white; filter: alpha(opacity = 50); opacity: 0.5;">
				<span class="fa fa-hand-o-left"></span>

			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"
				style="position: absolute; top: -24px; bottom: auto; right: 0; width: 19%; font-size: 37px; color: black; text-align: center; text-shadow: 0 1px 5px rgba(0, 0, 0, .6); background-color: white; filter: alpha(opacity = 50); opacity: 0.5;">
				<span class="fa fa-hand-o-right"></span>
			</a>
		</div>
		</section>
	</div>
	<!-- chiusura container -->
</body>
</html>