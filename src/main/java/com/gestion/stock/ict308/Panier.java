package com.gestion.stock.ict308;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connexion.db.beans.ConnexionDB;
import com.gestion.stock.admin.*;
import com.gestion.stock.admin.beans.CrudPanier;
import com.gestion.stock.admin.beans.CrudProduit;
import com.gestion.stock.admin.beans.Produit;
import com.gestion.stock.ict308.beans.QteProduit;



/**
 * Servlet implementation class Panier
 */
@WebServlet("/Panier")
public class Panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Panier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
		    for (Cookie cookie : cookies) {
		        if (cookie.getName().equals("id")) {
		             id = cookie.getValue();
		            break;
		        }
		    }
		}

		int num = 0;
		try {
		   
		     num = Integer.parseInt(id);
		} catch (NumberFormatException e) {
		    System.out.println("La valeur fournie n'est pas convertible en Integer");
		}
		
		
		CrudPanier pn = new CrudPanier();
		request.setAttribute("produits", pn.recupererPanier(num));
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 Cookie[] cookies = request.getCookies();
		 String id="";
		 String value="";
		for (int i = 0; i < cookies.length; i++)
		{
		     id = cookies[i].getValue();
		     value = cookies[i].getValue();
		}
		String id_produit =""; int id_pro = 0, id_user = 0;
		try {
			id_produit = request.getParameter("id_produit");
			id_pro = Integer.parseInt(id_produit);
			id_user = Integer.parseInt(id);
		} catch (NumberFormatException e) {
		    System.out.println("La valeur fournie n'est pas convertible en Integer");
		}
		
		Connection connexion = ConnexionDB.getConnexion();
      try {
          PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO panier(id_user,id_produit) VALUES(?, ?);");
          preparedStatement.setInt(1, id_user);
          preparedStatement.setInt(2,id_pro);
          preparedStatement.executeUpdate();
          CrudProduit crud = new CrudProduit();
  		   request.setAttribute("produits", crud.recupererProduits());
  		   
  		   
          this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
      } catch (SQLException e) 
      {}
	}
}