package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.AcquistoDaoImpl;
import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Acquisto;
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;


public class IlMioAccount extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int idUtente = Integer.parseInt(req.getParameter("idUtente"));
		List<Acquisto> listaAcquisti = new ArrayList<>();
		AcquistoDaoImpl acquistiService = new AcquistoDaoImpl();
		listaAcquisti = acquistiService.getListaAcquisti(idUtente);
		for (Acquisto acquisto :  listaAcquisti) {
			System.out.println(acquisto);
	    }
		req.setAttribute("listaAcquisti", listaAcquisti);
		List<Prodotto> listaOrdini = new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaOrdini = prodottoService.getListaOrdini(idUtente);
		for (Prodotto  prodotto : listaOrdini) {
			System.out.println(prodotto);
		}
		req.setAttribute("listaOrdini", listaOrdini);
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("ilmioaccount.jsp");
		dispatcher.forward(req, resp);
	}
}