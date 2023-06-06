package com.gestion.stock.admin;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.gestion.stock.admin.beans.CrudProduit;
import com.gestion.stock.admin.beans.Produit;

/**
 * Servlet implementation class EditProduit
 */
@WebServlet("/EditProduit")
public class EditProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	public static final int TAILLE_TAMPON = 1024;
	public static final String CHEMIN_FICHIERS = "/home/papadollar/Documents/javaEE/GestionStocks_ict308/src/main/webapp/WEB-INF/picture/";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProduit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produit p = null;
		String num = request.getParameter("id_produit");
		
		Produit produit = new Produit();
		produit.setId(request.getParameter("id_produit"));
		
		CrudProduit crud_ = new CrudProduit();
		try {
			 p = crud_.selectionnerUnProduit(Integer.parseInt(num));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		CrudProduit crud = new CrudProduit();
		request.setAttribute("produits", crud.recupererProduits());
		request.setAttribute("p", p);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/admin/editProduit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		add picture	
		
			Part part = request.getPart("picture");
			
			String nomFichier = getNomFichier(part);
			
			// Si on a bien un fichier
			if (nomFichier != null && !nomFichier.isEmpty()) {
				String nomChamp = part.getName();
				// Corrige un bug du fonctionnement d'Internet Explorer
				nomFichier = nomFichier.substring(nomFichier.lastIndexOf('/') + 1)
						.substring(nomFichier.lastIndexOf('\\') + 1);
				
				// On écrit définitivement le fichier sur le disque
				ecrireFichier(part, nomFichier, CHEMIN_FICHIERS);
				
				request.setAttribute(nomChamp, nomFichier);
			}
			
			
			
		Produit produit = new Produit();
		produit.setId(request.getParameter("id"));
		produit.setName(request.getParameter("name"));
		produit.setQuantity(request.getParameter("quantity"));
		produit.setPrice(request.getParameter("price"));
		produit.setDescription(request.getParameter("description"));
		produit.setPicture(nomFichier);
		
		CrudProduit crud = new CrudProduit();
		crud.modifierProduit(produit,request);
		request.setAttribute("produits", crud.recupererProduits());
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/admin/editProduit.jsp").forward(request, response);
	}
	private void ecrireFichier( Part part, String nomFichier, String chemin ) throws IOException {
        BufferedInputStream entree = null;
        BufferedOutputStream sortie = null;
        try {
            entree = new BufferedInputStream(part.getInputStream(), TAILLE_TAMPON);
            sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + nomFichier)), TAILLE_TAMPON);

            byte[] tampon = new byte[TAILLE_TAMPON];
            int longueur;
            while ((longueur = entree.read(tampon)) > 0) {
                sortie.write(tampon, 0, longueur);
            }
        } finally {
            try {
                sortie.close();
            } catch (IOException ignore) {
            }
            try {
                entree.close();
            } catch (IOException ignore) {
            }
        }
    }
	

	 private static String getNomFichier( Part part ) {
	        for ( String contentDisposition : part.getHeader( "content-disposition" ).split( ";" ) ) {
	            if ( contentDisposition.trim().startsWith( "filename" ) ) {
	                return contentDisposition.substring( contentDisposition.indexOf( '=' ) + 1 ).trim().replace( "\"", "" );
	            }
	        }
	        return null;
	    }

	
}
