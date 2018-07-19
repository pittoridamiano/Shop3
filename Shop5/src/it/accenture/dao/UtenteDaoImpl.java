package it.accenture.dao;



import java.sql.Connection;
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
import it.accenture.model.Utente;
import it.accenture.utilities.DBUtilityConnection;

public class UtenteDaoImpl implements UtenteDao {
	
	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	public UtenteDaoImpl() {
		connection = DBUtilityConnection.getConnection();
	}

	
	public void insertUtente(Utente utente) {
		String query = "insert into utente values ("
				+ "idUtente_sequence.nextval, ?, ?, ?, ?, ?)";
		try {
			System.out.println(query);
			prepared = connection.prepareStatement(query);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getCognome());
			prepared.setString(3, utente.getUsername());
			prepared.setString(4, utente.getPassword());
			prepared.setString(5, utente.getIndirizzo());

			prepared.executeUpdate();
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

	
	public Utente getByUsernameAndPassword(String username, String password) {
		Utente utente = null;
		String query = "select * from utente where username = ? "
				+ "and password = ?";
		ResultSet resultSet = null;
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, username);
			prepared.setString(2, password);
			resultSet = prepared.executeQuery();
			if (resultSet.next()) {
				utente = new Utente();
				utente.setId(resultSet.getInt(1));
				utente.setNome(resultSet.getString(2));
				utente.setUsername(username);
				utente.setPassword(password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if(prepared != null) {
					prepared.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return utente;
	}

	
	
	public List<Acquisto> getAcquistiByUtente(int idUtente) {
		List<Acquisto> listaAcquisto = new ArrayList<Acquisto>(); /*controllare list*/
		String query = "select * from acquisto where id_utente = ?";
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
				listaAcquisto.add(acquisto);
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
		return listaAcquisto;
	}

	
	

	public void insertRecensione(Recensione recensione) {
		
		String query = "insert into utente values ("
				+ "utente_sequence.nextval, ?, ?, ?, ?)";
	try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, recensione.getTitolo());
			prepared.setString(2, recensione.getContenuto());
			prepared.setInt(3, recensione.getIdUtente());
			prepared.setInt(4, recensione.getIdProdotto());

			prepared.executeUpdate();
			
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

	

	public void acquistaProdotto(int idProdotto, int idUtente) {
		String query = "update prodotto set id_utente = ? "
				+ "where id = ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idUtente);
			prepared.setInt(2, idProdotto);
			prepared.executeUpdate();
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
	
	public void restituisciProdotto(int idProdotto) {
		String query = "update prodotto set id_utente = ? "
				+ "where id = ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idProdotto);
			prepared.executeUpdate();
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
	
	public void deleteUtente(int id) {
		String query = "delete from utente where id = ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, id);
			prepared.executeUpdate();
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
		
	public void close() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
		
		
	
	
	
	
		}

		
		

	
	
	


