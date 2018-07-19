<%@page import="it.accenture.model.Acquisto"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Il mio account</title>
</head>
<body>

<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");%>
<% List<Acquisto> listaAcquisti = (List<Acquisto>) request.getAttribute("listaAcquisti"); %>
<% List<Prodotto> listaOrdini = (List<Prodotto>) request.getAttribute("listaOrdini"); %>
</head>
<body>


<!-- navbar -->

<!-- corpo  -->
<!-- lista acquisti -->
<div class="container">
<div class="page-header">
<h1> Il tuo account </h1>
</div>

<table class = "table table-hover">
<thead> Ecco i prodotti che hai acquistato. Quando eri meno povero</thead>
<tbody>
<% for (Acquisto acquisto : listaAcquisti){ %>
<tr>

<td><%= acquisto.getIdAcquisto() %> </td>
<td><%= acquisto.getTipoSpedizione() %> </td>
<td><%= acquisto.getIdProdotto() %> </td>
<td><%= acquisto.getDataInizio() %> </td>
<td><%= acquisto.getDataFine() %> </td>
<td><%= acquisto.getPrezzoTotale() %> </td>
<td><%= acquisto.getQuantitaAcquistata() %> </td>
<td>
<% } %>

<!--  inserimento di una funzionalità che consente di riacquistare il prodotto se disponibile e di inserire recensione  -->




</td>
</tr>
</tbody>
</table>

<!-- listaOrdiniInCorso -->

<div class="container">

<table class = "table table-hover">
<thead> Ecco gli ordini ancora in corso.</thead>
<tbody>
<% for (Prodotto prodotto : listaOrdini){ %>
<tr>


<td><%= prodotto.getImmagine() %> </td>
<td><%= prodotto.getNome() %> </td>
<td><%= prodotto.getMarca() %> </td>
<td><%= prodotto.getPrezzo() %> </td>


<td>
<% } %>
</td>
</tr>
</tbody>
</table>


<!-- footer -->

</body>
</html>