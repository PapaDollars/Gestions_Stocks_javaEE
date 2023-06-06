package com.gestion.stock.ict308.beans;


import javax.servlet.http.HttpServletRequest;

public class VerifiedPassword {

	
	private String resultat;
	private Integer verified;


	public void verifier(HttpServletRequest request) {
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		
		if(password.equals(confirmPassword)) {
			resultat = "Mot de passe identique !";
			verified = 0;
		}
		else {
			resultat = "Les deux mots de passes ne correspond pas.";
			verified = 2;
		}
	}
	
	
	
	public Integer getVerified() {
		return verified;
	}

	public void setVerified(Integer verified) {
		this.verified = verified;
	}

	public String getResultat() {
		return resultat;
	}

	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
	
}
