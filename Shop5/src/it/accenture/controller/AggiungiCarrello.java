package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class AggiungiCarrello extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
				System.out.println(idProdotto);
		HttpSession sessione = req.getSession();
		Prodotto prodotto = new Prodotto();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		prodotto = prodottoService.getProdottoById(idProdotto);
		
		List<Prodotto> carrello = (List<Prodotto>) sessione.getAttribute("carrello");
		if (carrello == null) {
			carrello = new ArrayList<>();
			carrello.add(prodotto);
			sessione.setAttribute("carrello", carrello);
		} else {
			((List<Prodotto>) sessione.getAttribute("carrello")).add(prodotto);
			
		}
					RequestDispatcher dispatcher =
							req.getRequestDispatcher("carrello.jsp");
						dispatcher.forward(req, resp);		
			}
			
	}
