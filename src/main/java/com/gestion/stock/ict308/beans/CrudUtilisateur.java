package com.gestion.stock.ict308.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


public class CrudUtilisateur {

private Connection connexion;
    
    public List<Utilisateur> recupererUtilisateurs() {
        List<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();
        Statement statement = null;
        ResultSet resultat = null;
//        Connection connexion = null;

        
        try {
        	loadDatabase();
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT address,lastName,firstName,phone,password FROM users;");

            // Récupération des données
            while (resultat.next()) {
            	String address= resultat.getString("address");
                String lastName = resultat.getString("lastName");
                String firstName= resultat.getString("firstName");
                String phone= resultat.getString("phone");
                String password= resultat.getString("password");
                
                Utilisateur utilisateur = new Utilisateur();
                utilisateur.setAddress(address);
                utilisateur.setLastName(lastName);
    			utilisateur.setFirstName(firstName);
    			utilisateur.setPhone(phone);
    			utilisateur.setPassword(password);
                
                utilisateurs.add(utilisateur);
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
        
        return utilisateurs;
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
    
    public void ajouterUtilisateur(Utilisateur utilisateur) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO users(address,lastName,firstName,password) VALUES(?, ?, ?, ?);");
            preparedStatement.setString(1, utilisateur.getAddress());
            preparedStatement.setString(2, utilisateur.getLastName());
            preparedStatement.setString(3, utilisateur.getFirstName());
            preparedStatement.setString(4, utilisateur.getPassword());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void modifierUtilisateur(Utilisateur utilisateur,HttpServletRequest request) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("UPDATE users SET address=?, lastName=?, firstName=?, phone=?, password=? WHERE address=?;");
            preparedStatement.setString(1, utilisateur.getAddress());
            preparedStatement.setString(2, utilisateur.getLastName());
            preparedStatement.setString(3, utilisateur.getFirstName());
            preparedStatement.setString(4, utilisateur.getPhone());
            preparedStatement.setString(5, utilisateur.getPassword());
            preparedStatement.setString(6, utilisateur.getAddress());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void supprimerUtilisateur(Utilisateur utilisateur,HttpServletRequest request) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("DELETE FROM id WHERE id=?;");
            preparedStatement.setString(1, utilisateur.getId());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


