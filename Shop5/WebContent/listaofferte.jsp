<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sei povero. Ci pensiamo noi.</title>

</head>
<body>

<div class="item">
					<img src="gif/bimbi.gif">
				</div>



<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");%>
<% List<Prodotto> listaProdottiOfferta = (List<Prodotto>) request.getAttribute("listaprodottiofferta"); %>

<h1> Lista PRODOTTO </h1>
<% if (listaProdottiOfferta == null || listaProdottiOfferta.isEmpty()) { %>
<h2>Lista Vuota o Inesistente</h2>
<% } else {  %>



<ul>
<% for (Prodotto prodotto : listaProdottiOfferta){ %>
<li>
<p>
</li>
<%= prodotto.getNome() %>
<%= prodotto.getMarca() %>
<%= prodotto.getPrezzo() %>
</p>



</form>
</li>
<% } %>
</ul>
<% } %>





</body>
</html>