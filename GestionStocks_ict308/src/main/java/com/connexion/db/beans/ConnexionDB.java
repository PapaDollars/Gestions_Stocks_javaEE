package com.connexion.db.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionDB {
		
	
	public static Connection getConnexion() 
	{
		Connection connexion = null;
	  try {
	          Class.forName("com.mysql.cj.jdbc.Driver");
	          
	      } catch (ClassNotFoundException e) {
	      }
	
	      try {
	          connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", "dollar", "dollar0000");
	      } catch (SQLException e) {
	          e.printStackTrace();
	      }
	return connexion;
      
      
	}
}
