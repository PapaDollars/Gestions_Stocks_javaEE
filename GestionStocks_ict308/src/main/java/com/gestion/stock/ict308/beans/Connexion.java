package com.gestion.stock.ict308.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Connexion {

private Connection connexion;

    
    public List<Connect> recupererConnexions(HttpServletRequest request) {
        List<Connect> connexions = new ArrayList<Connect>();
        Statement statement = null;
        ResultSet resultat = null;
//        Connection connexion = null;

        
        try {
        	loadDatabase();
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT address,password FROM users;");
            
            // Récupération des données
            	String addresss = request.getParameter("address");
            	String passwords = request.getParameter("password");
            while (resultat.next()) {
            	String address= resultat.getString("address");
                String password= resultat.getString("password");
                
                if(address.equals(addresss) && password.equals(passwords)) {
                	Connect connex = new Connect();
                	connex.setAddress(address);
                	connex.setPassword(password);
                	
                	System.out.println("User exist this db ");
                }
                
            }
            
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
            try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {
            }
        }
        
        return connexions;
    }
    
    private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", "dollar", "dollar0000");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

   
}