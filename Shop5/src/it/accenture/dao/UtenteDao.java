package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Recensione;
import it.accenture.model.Utente;

public interface UtenteDao {

	public void insertUtente(Utente utente);
	
	public Utente getByUsernameAndPassword(String username, String password);
	
	public List<Acquisto> getAcquistiByUtente(int idUtente);

	
	
	
	public void insertRecensione(Recensione recensione);
	
	public void acquistaProdotto(int idProdotto, int idUtente);

	public void restituisciProdotto(int idProdotto);

	public void deleteUtente(int id);

	public void close();
	
}




