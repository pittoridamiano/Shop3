package it.accenture.utilities;

import java.sql.Connection;

public class TestConnection {


	public static void main(String[] args) {
		
		Connection connection = DBUtilityConnection.getConnection();
		if (connection != null) {
			System.out.println("connessione stabilita con successo");
		}
	}

}