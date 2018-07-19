package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;

public class ListaProdotti extends HttpServlet{
	
	
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		String ricerca = req.getParameter("keyword").toLowerCase();
		List<Prodotto> listaProdotti = new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaProdotti = prodottoService.getProdotto(ricerca);
		
		for (Prodotto prodotto : listaProdotti) {
			System.out.println(prodotto);
		}
		req.setAttribute("listaProdottiCercati", listaProdotti);
		RequestDispatcher dispatcher =
				req.getRequestDispatcher("listaProdotti.jsp");
		dispatcher.forward(req, resp);
	}
		
}