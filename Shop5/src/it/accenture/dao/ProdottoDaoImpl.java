package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensione;
import it.accenture.model.TipoSpedizione;
import it.accenture.utilities.DBUtilityConnection;

public class ProdottoDaoImpl implements ProdottoDao {
	
	private Connection connection;
	private Statement statement;
	private PreparedStatement prepared;
	
	
	public ProdottoDaoImpl(){
		connection = DBUtilityConnection.getConnection();
	}
	
	//METODI DA IMPLEMENTARE - UTENTE
	
    //1- metodo che permette di selezionare i prodotti per categoria
	public List<Prodotto> GetByCategoria(Categoria categoria) {
		List<Prodotto> listaProdotti = new ArrayList<Prodotto>();
		String categoriaString = categoria.toString();
		String query = "select * from prodotto where categoria = ?";
		ResultSet resultSet = null;
		try {
			prepared = connection.prepareStatement(query);
			if (connection == null){
				System.out.println("no connection");
			}
			prepared.setString(1, categoriaString);
			resultSet = prepared.executeQuery();
			while (resultSet.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(resultSet.getInt(1));
					prodotto.setNome(resultSet.getString(2));
					Categoria categoriaCercato = Categoria.valueOf(resultSet.getString(3));
					prodotto.setCategoria(categoria);
					prodotto.setMarca(resultSet.getString(4));
					prodotto.setPrezzo(resultSet.getDouble(5));
					prodotto.setOfferta(resultSet.getBoolean(6));
					prodotto.setSconto(resultSet.getInt(7));
					prodotto.setQuantitaDisponibile(resultSet.getInt(8));
					prodotto.setImmagine(resultSet.getString(9));
					listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listaProdotti;
	}
	
    //2 - metodo che permette di selezioneare i prodotti in offerta
	public List<Prodotto> GetByOfferta() {
		List<Prodotto> listaProdotti = new ArrayList<Prodotto>();
		String query="select * from prodotto where offerta = 1";
		
		ResultSet resultSet = null;
		try {
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
			Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(resultSet.getInt(1));
				prodotto.setNome(resultSet.getString(2));
				Categoria categoria = Categoria.valueOf(resultSet.getString(3));
				prodotto.setCategoria(categoria);
				prodotto.setMarca(resultSet.getString(4));
				prodotto.setPrezzo(resultSet.getDouble(5));
				prodotto.setOfferta(resultSet.getBoolean(6));
				prodotto.setSconto(resultSet.getInt(7));
				prodotto.setQuantitaDisponibile(resultSet.getInt(8));
				prodotto.setImmagine(resultSet.getString(9));
				listaProdotti.add(prodotto);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		try {
				if (resultSet != null) {
					resultSet.close();
			}
				if (statement != null) {
					statement.close();
				} 
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaProdotti;
	}
	
	
	
	public List<Prodotto> getProdotto(String nome) {

		List<Prodotto> listaProdotti = new ArrayList<Prodotto>();
		String query= "select * from prodotto where nome = ?";
		ResultSet resultSet = null;
		try {
			
			
		prepared = connection.prepareStatement(query);
			prepared.setString(1, nome);
			resultSet=prepared.executeQuery();
			
					
			while (resultSet.next()) {
				
				System.out.println("sono entrato nel while");
				
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(resultSet.getInt(1));
				prodotto.setNome(resultSet.getString(2));
				
				
				Categoria categoria = Categoria.valueOf(resultSet.getString(3));
				prodotto.setCategoria(categoria);
				prodotto.setMarca(resultSet.getString(4));
				prodotto.setPrezzo(resultSet.getDouble(5));
				prodotto.setOfferta(resultSet.getBoolean(6));
				prodotto.setSconto(resultSet.getInt(7));
				prodotto.setQuantitaDisponibile(resultSet.getInt(8));
				prodotto.setImmagine(resultSet.getString(9));
				listaProdotti.add(prodotto);
				
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
					} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepared != null) {
					prepared.close();
				} 
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaProdotti;
	}

	//metodo che restituisce gli acquisti di un utente (da richiamare nella pagina personale)
	public List<Acquisto> getListaAcquisti(int idUtente) {
		
		List<Acquisto> listaAcquisti = new ArrayList<Acquisto>();
		String query ="select * from acquisto where idUtente = ?";
		ResultSet resultSet = null;
		
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idUtente);
			resultSet = prepared.executeQuery();
			
			while (resultSet.next()) {
				
				Acquisto acquisto = new Acquisto();
				acquisto.setIdAcquisto(resultSet.getInt(1));
				acquisto.setTipoSpedizione(TipoSpedizione.valueOf(resultSet.getString(2)));
				acquisto.setDataInizio(resultSet.getDate(3).toLocalDate());
				acquisto.setDataFine(resultSet.getDate(4).toLocalDate());
				acquisto.setPrezzoTotale(resultSet.getDouble(5));
				acquisto.setQuantitaAcquistata(resultSet.getInt(6));
				acquisto.setIdUtente(resultSet.getInt(7));
				acquisto.setIdProdotto(resultSet.getInt(8));
				
				listaAcquisti.add(acquisto);
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepared != null) {
					prepared.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaAcquisti;
	}
	
	//metodo che restituisce la lista degli ordini = tutti i prodotti acqistati da un utente (prodotti che sono nel carrello)

	public List<Prodotto> getListaOrdini(int idUtente) {
		List<Prodotto> listaOrdini = new ArrayList<Prodotto>();
		String query ="select * from prodotto where idUtente = ?";
		ResultSet resultSet = null;
		
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idUtente);
			resultSet = prepared.executeQuery();
			
			while (resultSet.next()) {
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(resultSet.getInt(1));
				prodotto.setNome(resultSet.getString(2));
				Categoria categoria = Categoria.valueOf(resultSet.getString(3));
				prodotto.setCategoria(categoria);
				prodotto.setMarca(resultSet.getString(4));
				prodotto.setPrezzo(resultSet.getDouble(5));
				prodotto.setOfferta(resultSet.getBoolean(6));
				prodotto.setSconto(resultSet.getInt(7));
				prodotto.setQuantitaDisponibile(resultSet.getInt(8));
				prodotto.setImmagine(resultSet.getString(9));
				
				listaOrdini.add(prodotto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepared != null) {
					prepared.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaOrdini;
	}
	
	//METODI DA IMPLEMENTARE - ADMIN
	

	//metodo per chi gestisce il negozio: inserisce un prodotto
	public void insertProdotto(Prodotto prodotto) {
		String query = "insert into prodotto values (idProdotto_sequence.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, prodotto.getNome());
			String categoria = prodotto.getCategoria().toString(); //DUBBISSIMI SU QUESTA COSA
			prepared.setString(2, categoria);
			prepared.setString(3, prodotto.getMarca());
			prepared.setDouble(4, prodotto.getPrezzo());
			prepared.setBoolean(5, prodotto.isOfferta());
			prepared.setInt(6, prodotto.getSconto());
			prepared.setInt(7, prodotto.getQuantitaDisponibile());
			prepared.setString(8, prodotto.getImmagine());
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (prepared != null) {
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}

	//metodo per recuperare tutti i prodotti disponibili
	public List<Prodotto> getProdottiDisponibili() {
		List<Prodotto> listaProdotti = new ArrayList<Prodotto>();
		String query="select * from prodotto where quantitaDisponibile = 0";
		ResultSet resultSet = null;
		
		try {
			prepared = connection.prepareStatement(query);
			while (resultSet.next()) {
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(resultSet.getInt(1));
				prodotto.setNome(resultSet.getString(2));
				Categoria categoria = Categoria.valueOf(resultSet.getString(3));
				prodotto.setCategoria(categoria);
				prodotto.setMarca(resultSet.getString(4));
				prodotto.setPrezzo(resultSet.getDouble(5));
				prodotto.setOfferta(resultSet.getBoolean(6));
				prodotto.setSconto(resultSet.getInt(7));
				prodotto.setQuantitaDisponibile(resultSet.getInt(8));
				prodotto.setImmagine(resultSet.getString(9));
				
				listaProdotti.add(prodotto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepared != null) {
					prepared.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaProdotti;
	}

	//metodo per ricercare un prodotto per id
	public Prodotto getProdottoById(int idProdotto) {
		Prodotto prodotto = null;
		String query = "select * from prodotto where idProdotto = ?";
		ResultSet resultSet = null;
		
		System.out.println(idProdotto);
		
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idProdotto);
			resultSet = prepared.executeQuery();
			
			if (resultSet.next()) {
				prodotto = new Prodotto();
				prodotto.setIdProdotto(resultSet.getInt(1));
				prodotto.setNome(resultSet.getString(2));
				Categoria categoria = Categoria.valueOf(resultSet.getString(3));
				prodotto.setCategoria(categoria);
				prodotto.setMarca(resultSet.getString(4));
				prodotto.setPrezzo(resultSet.getDouble(5));
				prodotto.setOfferta(resultSet.getBoolean(6));
				prodotto.setSconto(resultSet.getInt(7));
				prodotto.setQuantitaDisponibile(resultSet.getInt(8));
				prodotto.setImmagine(resultSet.getString(9));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepared != null) {
					prepared.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return prodotto;
	}

	public List<Acquisto> gestisciSpedizione() {
		return null;	
		
	}

	public List<Prodotto> updateDisponibilita() {
		return null;
		
		
	}

	public void eliminaProdotto(int idProdotto) {
		
		
	}

	public List<Prodotto> updateOfferta(boolean offerta) {
		return null;
		
		
	}

	public List<Recensione> gestisciRecensione(int idUtente) {
		return null;
		
		
	}

	public void cancellaUtente(int idUtente) {
		
		
	}

	public Prodotto updateImmagine(int idProdotto) {
		return null;
		
		
	}

	public void close() {
		
		
	}

}
