package it.accenture.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class LoginBean extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		Utente utente = (Utente) sessione.getAttribute("utenteLoggato");
		UtenteDaoImpl utenteService = new UtenteDaoImpl();
		Utente utenteCompleto = 
				utenteService.getByUsernameAndPassword(
						utente.getUsername(), utente.getPassword());
		utenteService.close();
		if (utenteCompleto == null) {
			sessione.invalidate();
			resp.sendRedirect("index.jsp");
		} else {
			resp.sendRedirect("index.jsp");
		}
	
	}
	
}
