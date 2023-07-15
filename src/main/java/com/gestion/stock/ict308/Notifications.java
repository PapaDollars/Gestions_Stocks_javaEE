package com.gestion.stock.ict308;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gestion.stock.admin.beans.CrudProduit;

/**
 * Servlet implementation class Notifications
 */
@WebServlet("/Notifications")
public class Notifications extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notifications() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CrudProduit crud = new CrudProduit();
		request.setAttribute("produits", crud.recupererProduits());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/notifications.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudProduit crud = new CrudProduit();
		request.setAttribute("produits", crud.recupererProduits());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/notifications.jsp").forward(request, response);
		
	}

}
