<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>

<% String username = (String) request.getAttribute("username"); %>
<% Object errore = request.getAttribute("errore"); %>

<% Utente utenteLoggato = (Utente)
session.getAttribute("utenteLoggato"); %>


<nav class="navbar navbar-inverse">
<br>
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="index.jsp">POVERON</a>
</div>
<div class="collapse navbar-collapse">
 <ul class="nav navbar-nav navbar-left">
<li class="active"><a href="index.jsp">Home</a></li>
<li><a href="listaprodottiofferta.jsp">Offerte</a></li>
<li><a href="contatti.jsp">Contatti</a></li>
<li><a href="spedizione.jsp">Metodi di Spedizione</a></li>


<!-- SEARCH BAR -->

<div class="container" style = "padding-left: 250px">
<div class="row">    
<div class="col-xs-8 col-xs-offset-2">
<div class="input-group">
<div class="input-group-btn search-panel">
               
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <span id="search_concept">Cerca per categoria</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#Abbigliamento">Abbigliamento</a></li>
                      <li><a href="#Alimentari">Alimentari</a></li>
                      <li><a href="#Animali">Animali</a></li>
                      <li><a href="#Bellezza">Bellezza</a></li>
                      <li><a href="#Casa">Casa</a></li>
                      <li><a href="#Elettronica">Elettronica</a></li>
                      <li><a href="#Giardino">Giardino</a></li>
                      <li><a href="#Giochi">Giochi</a></li>
                      <li><a href="#Libri">Libri</a></li>
                      <li><a href="#Musica">Musica</a></li>
                      <li><a href="#Sport">Sport</a></li>
                    </ul>
</div>
<input type="hidden" name="search_param" value="all" id="search_param">         
<input type="text" class="form-control" name="x" placeholder="Scrivi parola chiave..">
<span class="input-group-btn">               
<button class="btn btn-default" type="button">
<span class="glyphicon glyphicon-search"></span></button>
</span>
</div>
</div>
</div>
</div>

<% if (utenteLoggato == null) { %>
 <ul class="nav navbar-nav navbar-right">
 
<li><a href="login.jsp">Login</a></li>

<li><a href="registrazione.jsp">Registrati</a></li>     
<% } else { %> 
<li><a href="account.jsp">Il mio Account</a></li>
<li><a href="carrello.jsp"> Carrello</a></li>
<li><a href="logout">Logout</a></li>
<% } %>
</ul>
</div>
</div>
</nav>
	<div class="container">
		<!-- header -->
		<div class="page-header text-center">
			<h1>Login</h1>
		</div>
		<!-- form -->
		<form class="form-horizontal" action="login" method="post"
			onsubmit="return validazioneLogin()">
			<!-- username -->
			<div class="form-group">
				<label for="username" class="control-label col-md-4">Inserisci
					Username</label>
				<div class="col-md-5">
					<input type="text" name="username" id="username"
						class="form-control" <% if (username != null) { %>
						value="<%=username %>" <% } %>>
				</div>
				<span class="col-md-3"></span>
			</div>
			<!-- password -->
			<div class="form-group">
				<label for="password" class="control-label col-md-4">Inserisci
					Password</label>
				<div class="col-md-5">
					<input type="password" name="password" id="password"
						class="form-control">
				</div>
				<span class="col-md-3"></span>
			</div>
			<!-- bottoni -->
			<div class="form-group">
				<span class="col-md-4"></span>
				<div class="col-md-5">
					<input type="submit" value="Login" class="btn btn-primary">
					<input type="reset" value="Ripristina" class="btn btn-warning"
						style="margin-left: 2%;">
				</div>
				<span class="col-md-3"></span>
			</div>
		</form>
		<!-- link -->
		<div class="row">
			<span class="col-md-4"></span>
			<div class="col-md-5">
				<p>Non sei registrato ?</p>
				<p>
					Clicca <a href="registrazione.jsp">qui</a> per la registrazione
				</p>
			</div>
			<span class="col-md-3"></span>
		</div>

		<!-- alert -->
		<div class="alert alert-danger" id="alert" style="display: none">
			<p class="text-center">Tutti i campi sono obbligatori</p>
		</div>
		<!-- alert2 -->
		<% if (errore != null) { %>
		<div class="alert alert-danger">
			<p class="text-center">Username o password sbagliati</p>
		</div>
		<% } %>


	</div>
	<!-- chiusura container -->




</body>
</html>
