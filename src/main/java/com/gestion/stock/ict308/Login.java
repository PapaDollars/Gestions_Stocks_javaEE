package com.gestion.stock.ict308;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connexion.db.beans.ConnexionDB;
import com.gestion.stock.admin.beans.CrudProduit;




@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String address = request.getParameter("address");
			String password = request.getParameter("password");
			
			String sql = "select * from Utilisateur where address=? and password=?";
			
			Connection con =  ConnexionDB.getConnexion();
			
			try {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, address);
				ps.setString(2, password);
				
				ResultSet rs =  ps.executeQuery();
				
				if(rs.next()) {
					
					int isAdmin = rs.getInt("isAdmin");
					String lastName = rs.getString("lastName");
					int id_user = rs.getInt("id_user");
					String id = Integer.toString(id_user);
					
					if(isAdmin > 0) 
					{
						CrudProduit crud = new CrudProduit();
						request.setAttribute("produits", crud.recupererProduits());
						
						this.getServletContext().getRequestDispatcher("/WEB-INF/admin/homeAdmin.jsp").forward(request, response);
						
						
					}else {
							
						CrudProduit crud = new CrudProduit();
						request.setAttribute("produits", crud.recupererProduits());
						
						HttpSession session = request.getSession();
						Cookie cookie = new Cookie("id", id);
						response.addCookie(cookie);
						session.setAttribute("prenom", lastName);
						
						if((session) != null) {
							
							
							this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
							
						}
						
					}
					
				}else {
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
			
			
//			Connexion conn = new Connexion();
//    		conn.recupererConnexions(request);
//    		 
//    	Connect connect = new Connect();
//    	System.out.println("connexion : addr : "+connect.getAddress()+"-pass : "+connect.getPassword());
//    	
//    	if(connect.getAddress() != null && connect.getPassword() != null ) {
////    		request.setAttribute("coonect", connect);
////	    	this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
//    		response.sendRedirect("/WEB-INF/home.jsp");
//			
//		}else
//		{
//			request.setAttribute("connectError", connect);
//			this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
//		}
	}
	
	

}
