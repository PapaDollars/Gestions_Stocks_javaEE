package com.gestion.stock.admin.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


public class CrudProduit {
	private Connection connexion;
    
	
	public Produit selectionnerUnProduit(int id) throws ClassNotFoundException, SQLException{
	Statement statement = null;
    ResultSet resultat = null;
     Produit produit = null;

     loadDatabase();

    String sql = "select * from products where id=?";


     PreparedStatement requetePrepared = connexion.prepareStatement(sql);
     requetePrepared.setInt(1, id);
     resultat = requetePrepared.executeQuery();

     while(resultat.next()) {
 			String id_produit = resultat.getString("id");
                String name = resultat.getString("name");
                String quantity= resultat.getString("quantity");
                String price= resultat.getString("price");
                String description= resultat.getString("description");
                String picture= resultat.getString("picture");

                produit = new Produit(id_produit,name,quantity,price,description,picture);
    }

     		return produit;
	}
	
	
    public List<Produit> recupererProduits() {
        List<Produit> produits = new ArrayList<Produit>();
	        Statement statement = null;
	        ResultSet resultat = null;
//        Connection connexion = null;

        
        try {
        	loadDatabase();
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT id,name,quantity,price,description,picture FROM products;");

            // Récupération des données
            while (resultat.next()) {
                String id = resultat.getString("id");
                String name = resultat.getString("name");
                String quantity= resultat.getString("quantity");
                String price= resultat.getString("price");
                String description= resultat.getString("description");
                String picture= resultat.getString("picture");
                
                Produit produit = new Produit();
                produit.setId(id);
                produit.setName(name);
                produit.setQuantity(quantity);
                produit.setPrice(price);
                produit.setDescription(description);
                produit.setPicture(picture);
                
                produits.add(produit);
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
        
        return produits;
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
    
    public void ajouterProduit(Produit produit) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO products(name,quantity,price,description,picture) VALUES(?, ?, ?, ?, ?);");
            preparedStatement.setString(1, produit.getName());
            preparedStatement.setString(2, produit.getQuantity());
            preparedStatement.setString(3, produit.getPrice());
            preparedStatement.setString(4, produit.getDescription());
            preparedStatement.setString(5, "/WEB-INF/picture/"+produit.getPicture());
            System.out.println("Ajouter avec succes... ");
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void modifierProduit(Produit produit,HttpServletRequest request) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("UPDATE products SET name=?, quantity=?, price=?, description=?, picture=? WHERE id=?;");
//            preparedStatement.setString(1, produit.getId());
            preparedStatement.setString(1, produit.getName());
            preparedStatement.setString(2, produit.getQuantity());
            preparedStatement.setString(3, produit.getPrice());
            preparedStatement.setString(4, produit.getDescription());
            preparedStatement.setString(5, "/WEB-INF/picture/"+produit.getPicture());
            preparedStatement.setString(6, produit.getId());
            System.out.println("Modifier avec succes... ");
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void supprimerProduit(Produit produit,HttpServletRequest request) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("DELETE FROM products WHERE id=?;");
            preparedStatement.setString(1, produit.getId());
            System.out.println("Supprimer avec succes... ");
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

