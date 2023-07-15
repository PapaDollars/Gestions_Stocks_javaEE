package com.gestion.stock.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connexion.db.beans.Connexion_appli;
import com.gestion.stock.admin.beans.CrudProduit;


/**
 * Servlet implementation class SeConnecter
 */
@WebServlet("/SeConnecter")
public class SeConnecter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeConnecter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/admin/seconnecter.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
Connexion_appli form = new Connexion_appli();
		
		String adresse = request.getParameter("address");
		String password = request.getParameter("password");
//		
		form.verifier(adresse,password); 
		
		
		
			if(form.identifiant > 0) {
				CrudProduit crud = new CrudProduit();
				request.setAttribute("produits", crud.recupererProduits());
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/admin/admin/homeAdmin.jsp").forward(request, response);
				
			}else {
				
				request.setAttribute("form", form);
				this.getServletContext().getRequestDispatcher("/WEB-INF/admin/seconnecter.jsp").forward(request, response);
			}
	
	}

}
