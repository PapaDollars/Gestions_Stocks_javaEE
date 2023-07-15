package com.connexion.db.beans;


public class Connexion_appli {
	
private String resultat;
public int identifiant;
	
	public void verifier(String adresse, String password) {	
//		String adresse = request.getParameter("adresse");
//		String password = request.getParameter("password");
		
		if(adresse.equals("stocks@gmail.com") && password.equals("1234") ) {
			resultat = "Connexion reussi - Identifiants correct !!!";
			identifiant = 1;
		}
		else {
			resultat = "Identifiant incorrect. L'address ou le password ne correspond pas !";
			identifiant = 0;
		}
	}

	public String getResultat() {
		return resultat;
	}

	public void setResultat(String resultat) {
		this.resultat = resultat;
	}

	public int getIdentifiant() {
		return identifiant;
	}

	public void setIdentifiant(int identifiant) {
		this.identifiant = identifiant;
	}
	
	
}
