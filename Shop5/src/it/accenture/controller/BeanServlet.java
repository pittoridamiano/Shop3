package it.accenture.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class BeanServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Utente utenteApplication = (Utente)
				req.getServletContext().getAttribute("utente1");
		System.out.println(utenteApplication.getNome());
		Utente utente = (Utente) req.getAttribute("utente");
		UtenteDaoImpl utenteService = new UtenteDaoImpl();
		utenteService.insertUtente(utente);
		System.out.println("utente inserito");
		System.out.println(utente);
		utenteService.close();
		resp.sendRedirect("listaUtenti");
	}
		
}
