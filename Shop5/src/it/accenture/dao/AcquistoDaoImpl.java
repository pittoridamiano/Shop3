package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.TipoSpedizione;
import it.accenture.utilities.DBUtilityConnection;



public class AcquistoDaoImpl implements AcquistoDao {
	private Connection connection;
	private PreparedStatement prepared;
	

	
	public AcquistoDaoImpl() {
		connection = DBUtilityConnection.getConnection();
	}

	public void insertAcquisto(Acquisto acquisto) {
		String query = "insert into acquisto values "
				+ "(?, ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, acquisto.getIdAcquisto());
			prepared.setString(2, acquisto.getTipoSpedizione().toString());
			Date dataInizio = Date.valueOf(acquisto.getDataInizio());
			prepared.setDate(3, dataInizio);
			Date dataFine = Date.valueOf(acquisto.getDataFine());
			prepared.setDate(4, dataFine);
			prepared.setDouble(5, acquisto.getPrezzoTotale());
			prepared.setInt(6, acquisto.getQuantitaAcquistata());
			prepared.setInt(7, acquisto.getIdUtente());
			prepared.setInt(8, acquisto.getIdProdotto());
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
	
	
	
	
	
	//oib�
	public void close() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	

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






	
	
	
	
	
	
	
}
