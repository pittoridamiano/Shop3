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

public class ListaProdottiOfferta extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ricerca = req.getParameter("cercaOfferte");
		List<Prodotto> listaProdottiOfferta = new ArrayList<>();
		ProdottoDaoImpl prodottoService= new ProdottoDaoImpl();
		listaProdottiOfferta = prodottoService.GetByOfferta();
	
		for (Prodotto prodotto : listaProdottiOfferta) {
			System.out.println(prodotto);
		}
		req.setAttribute("listaprodottiofferta", listaProdottiOfferta);
		RequestDispatcher dispatcher =
		req.getRequestDispatcher("listaofferte.jsp");
		dispatcher.forward(req, resp);
	
	
	
	}

}
