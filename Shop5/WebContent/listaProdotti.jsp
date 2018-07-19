
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
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
<title>Risultati della Ricerca</title>
</head>
<body style= "font-family: verdana">

	<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");%>
	<% List<Prodotto> listaProdotti = (List<Prodotto>) request.getAttribute("listaProdottiCercati"); %>

	
	
	<!-- INIZIO NAVBAR -->
<nav class="navbar navbar-default" style="background-color: #33d177">

<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="index.jsp">POVERON</a>
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


<% if (utenteLoggato == null) { %>
 <ul class="nav navbar-nav: navbar-left">
 
<li><a href="login.jsp"><b>Login</b></a></li>

<li><a href="registrazione.jsp"><b>Registrati</b></a></li>     
<% } else { %> 
<li><a href="account.jsp"><b>Il mio Account</b></a></li>
<li><a href="carrello.jsp"><b> Carrello</b></a></li>
<li><a href="logout"><b>Logout</b></a></li>
<% } %>
</ul>
</div>
</div>
</nav>

	<div class="container">
		<div class="page-header" align="center">
			<h1 style="font-family: verdana">Risultati della Ricerca</h1>
		</div>


<table style="width: 80% ; border-collapse: collapse ; font-family: verdana" class="table table-hover" align="center" border="1px" >
<thead>
<tr style="background-color: #ccff99">
<th>Immagine</th>
<th>Nome Prodotto</th>
<th>Marca Prodotto</th>
<th>Prezzo</th>
<th>Quantità disponibile</th>
<th>Sconto</th>
<th>Offerta</th>
<th>Prenota</th>
</tr>
</thead>
<hr>
<tbody>
		
<% for (Prodotto prodotto : listaProdotti){ %>

<tr align="center">

<td><%= prodotto.getImmagine() %></td>
<td><%= prodotto.getNome() %></td>
<td><%= prodotto.getMarca() %></td>
<td><%= prodotto.getPrezzo() %></td>
<td><%= prodotto.getQuantitaDisponibile() %></td>
<td><%= prodotto.getSconto() %></td>
<td><%= prodotto.isOfferta() %></td>
<td><form name="aggiungicarrello" action="carrello" method="get">
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>"> 
<input type="submit" value="Aggiungi al carrello" ></form></td>
</tr>

<%} %>


		
</tbody>		
	</table>	
</body>
</html>