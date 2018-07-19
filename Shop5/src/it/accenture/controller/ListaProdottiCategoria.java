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
import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;

public class ListaProdottiCategoria extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String categoriaCercata = req.getParameter("ricerca").toUpperCase();
		Categoria categoria = Categoria.valueOf(categoriaCercata);
		ProdottoDaoImpl prodottoService= new ProdottoDaoImpl();
		List<Prodotto> prodottiCategoria = new ArrayList<>();
		prodottiCategoria = prodottoService.GetByCategoria(categoria);
		for (Prodotto prodotto : prodottiCategoria) {
			System.out.println(prodotto);
		}
		req.setAttribute("listaProdottiCategoria", prodottiCategoria);
		RequestDispatcher dispatcher =
			req.getRequestDispatcher("ricercapercategoria.jsp");
		dispatcher.forward(req, resp);
		
	}
		
		}