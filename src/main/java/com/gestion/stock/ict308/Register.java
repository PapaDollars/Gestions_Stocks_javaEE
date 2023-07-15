package com.gestion.stock.ict308;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gestion.stock.ict308.beans.VerifiedPassword;
import com.gestion.stock.ict308.beans.Utilisateur;
import com.gestion.stock.ict308.beans.CrudUtilisateur;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VerifiedPassword form = new VerifiedPassword();
		form.verifier(request);
		request.setAttribute("form", form);
		
		
		
		HttpSession session = request.getSession();
		
		String FirstName = request.getParameter("firstName");
		session.setAttribute("prenom", FirstName);
		
		if(form.getVerified() == 0) {
			
			Utilisateur utilisateur = new Utilisateur();
			utilisateur.setAddress(request.getParameter("address"));
			utilisateur.setLastName(request.getParameter("lastName"));
			utilisateur.setFirstName(request.getParameter("firstName"));
			utilisateur.setPassword(request.getParameter("password"));
			
			CrudUtilisateur crud = new CrudUtilisateur();
			crud.ajouterUtilisateur(utilisateur);
			
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
			
		}else
			this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
		
	}

}
