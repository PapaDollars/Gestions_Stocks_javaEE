package com.gestion.stock.admin.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gestion.stock.ict308.Panier;

public class CrudPanier {
	private Connection connexion;

	public List<panier> recupererPanier(int id_user) {
        List<panier> produits = new ArrayList<panier>();
	        Statement statement = null;
	        ResultSet resultat = null;
//        Connection connexion = null;

        
        try {
        	loadDatabase();
            statement = connexion.createStatement();

            // Exécution de la requête

            PreparedStatement requetePrepared = connexion.prepareStatement("SELECT p.name,p.quantity,p.price,p.picture , pn.* FROM panier pn JOIN Utilisateur u ON pn.id_user = u.id_user JOIN products p ON pn.id_produit = p.id WHERE pn.id_user =?");
            requetePrepared.setInt(1, id_user);
            resultat = requetePrepared.executeQuery();
            // Récupération des données
            while (resultat.next()) {
            	int id_panier = resultat.getInt("id");
                int id_utilisateur = resultat.getInt("id_user");
                int id_produit = resultat.getInt("id_produit");
                String name = resultat.getString("name");
                String quantity= resultat.getString("quantity");
                String price = resultat.getString("price");
                String picture= resultat.getString("picture");
                
                
                
              produits.add(new panier(id_panier,id_utilisateur,id_produit,name,quantity,price,picture));
            }}catch (SQLException e) {
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
        return produits;
    }
    
	
	private void loadDatabase() {11
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/GestionStock", "dollar", "dollar0000");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	
	 public void SupprimerUnPanier(int id) {
	        loadDatabase();
	        
	        try {
	            PreparedStatement preparedStatement = connexion.prepareStatement("DELETE FROM panier WHERE id=?;");
	            preparedStatement.setInt(1, id);
	            
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	
	
    
}
