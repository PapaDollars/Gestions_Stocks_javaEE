package com.gestion.stock.ict308.beans;

import javax.servlet.http.HttpServletRequest;

public class QteProduit {

	private int qte = 2;
	private String resultat;
	
	public void verified( HttpServletRequest request ) {
//		String qteP = request.getParameter("qte");
		
//		int _qteP = Integer.parseInt(qteP);
				
//			qte = _qteP;
			resultat = "La quantitee choisit est plus eleve que le stock disponible !!!";
		
	}
	
	

	public Integer getQte() {
		return qte;
	}

	public void setQte(Integer qte) {
		this.qte = qte;
	}


	public String getResultat() {
		return resultat;
	}


	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
	 
	
}
