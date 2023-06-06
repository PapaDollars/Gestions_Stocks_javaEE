package com.gestion.stock.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gestion.stock.admin.beans.CrudProduit;
import com.gestion.stock.admin.beans.Produit;


@WebServlet("/DeleteProduit")
public class DeleteProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteProduit() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String id = request.getParameter("id_produit");
		Produit produit = new Produit();
		produit.setId(request.getParameter("id_produit"));
		
		CrudProduit crud_ = new CrudProduit();
		crud_.supprimerProduit(produit,request);
		
		CrudProduit crud = new CrudProduit();
		request.setAttribute("produits", crud.recupererProduits());
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/admin/deleteProduit.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produit produit = new Produit();
		produit.setId(request.getParameter("id"));
		
		CrudProduit crud = new CrudProduit();
		crud.supprimerProduit(produit,request);
		request.setAttribute("produits", crud.recupererProduits());

		this.getServletContext().getRequestDispatcher("/WEB-INF/admin/deleteProduit.jsp").forward(request, response);
	}

}
