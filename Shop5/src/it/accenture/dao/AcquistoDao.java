package it.accenture.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Acquisto;


//commento
public interface AcquistoDao {

public void insertAcquisto(Acquisto acquisto);

		
	public void close();
	
	
}
