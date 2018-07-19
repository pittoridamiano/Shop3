package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensione;
import it.accenture.model.TipoSpedizione;

public interface ProdottoDao {
	//METODI PER UTENTE
	public List<Prodotto> GetByCategoria (Categoria Categoria);
	
	public List<Prodotto> GetByOfferta ();
	
	public List<Prodotto> getProdotto (String nome);
	
	public List<Acquisto> getListaAcquisti(int idUtente);
	
	public List<Prodotto> getListaOrdini(int idUtente);
	
	
	//METODI PER ADMIN
	public void insertProdotto (Prodotto prodotto);
	
	public List<Prodotto> getProdottiDisponibili (); //cerco i prodotti che hanno l'int di disponibile diverso da 0
	
	public Prodotto getProdottoById (int idProdotto);
	
	public List<Acquisto> gestisciSpedizione (); //DA CAPIRE recupero tutti gli acquisti fatti da tutti gli utenti? 
	
	public List<Prodotto> updateDisponibilita(); //cerco i prodotti che hanno int di disponibile = 0
	
	public void eliminaProdotto (int idProdotto);
	
	public List<Prodotto> updateOfferta (boolean offerta); //cerco i prodotti che hanno offerta =0
	
	public List<Recensione> gestisciRecensione (int idUtente); //cerca le recensioni di un utente
	
	public void cancellaUtente (int idUtente);
	
	public Prodotto updateImmagine (int idProdotto); //recuper un prodotto grazie all'id e aggiungo/tolgo/cambio immagine
	
	public void close(); 
	
}
