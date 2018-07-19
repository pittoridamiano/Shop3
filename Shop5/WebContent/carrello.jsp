<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carrello. Il perfetto sostituto povero di una Smart</title>
</head>
<body>

<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");%>

<% List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("carrello"); %>

<ul>
<% for (Prodotto prodotto : listaCarrello) { %>
<li>
<p>
</li>
<%= prodotto.getNome() %>
<%= prodotto.getMarca() %>
<%= prodotto.getPrezzo() %>
<%= prodotto.getSconto() %>


</p>




</form>



</li>
<% } %>

</ul>