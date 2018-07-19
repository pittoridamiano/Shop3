package it.accenture.model;

import java.util.List;

public class Utente {


private int	idUtente;
	private String nome;
	private String cognome;
	private String username;
	private String password;
	private String indirizzo;
	private List<Acquisto> listaOrdini; 
	private List<Prodotto> listaAcquisti;
	
	
	
	public int getIdUtente() {
		return idUtente;
	}
	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public List<Acquisto> getListaOrdini() {
		return listaOrdini;
	}
	public void setListaOrdini(List<Acquisto> listaOrdini) {
		this.listaOrdini = listaOrdini;
	}
	public List<Prodotto> getListaAcquisti() {
		return listaAcquisti;
	}
	public void setListaAcquisti(List<Prodotto> listaAcquisti) {
		this.listaAcquisti = listaAcquisti;
	}
	
	

	
	public void setId(int int1) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String toString() {
		return "Utente [idUtente=" + idUtente + ", nome=" + nome + ", cognome=" + cognome + ", username=" + username
				+ ", password=" + password + ", indirizzo=" + indirizzo + ", listaOrdini=" + listaOrdini
				+ ", listaAcquisti=" + listaAcquisti + "]";
	}

	
	

	

}
