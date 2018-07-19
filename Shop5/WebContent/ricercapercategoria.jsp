<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Risultati della ricerca per Categoria</title>
</head>
<body>


<!-- Navbar -->

<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");%>
<% List<Prodotto> listaProdottiCategoria = (List<Prodotto>) request.getAttribute("listaProdottiCategoria"); %>
<!-- navbar! -->

<!--  form lista -->

<div class="container">
<div class="page-header">
<h1> Risultati della Ricerca </h1>
</div>

<table class = "table table-hover">
<thead> Ecco i prodotti che cercavi</thead>
<tbody>
<% for (Prodotto prodotto : listaProdottiCategoria){ %>
<tr>

<td><%= prodotto.getImmagine() %> </td>
<td><%= prodotto.getNome()%> </td>
<td><%= prodotto.getMarca() %> </td>
<td><%= prodotto.getPrezzo() %> </td>
<td><%= prodotto.getQuantitaDisponibile() %> </td>
<td><%= prodotto.getSconto() %> </td>
<td><%= prodotto.isOfferta() %> </td>
<td>
<% } %>
</td>
</tr>
</tbody>
</table>

</body>



<!-- Footer -->
</html>