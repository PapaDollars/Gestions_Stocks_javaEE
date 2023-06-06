package com.gestion.stock.ict308.beans;

public class Connect {
	private String address;
	private String password;
	private String resultError = "Erreur de connexion :  l'adresse mail ou le mot de passe est incorrect !!!";
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getResultError() {
		return resultError;
	}
	public void setResultError(String resultError) {
		this.resultError = resultError;
	}
	
	
}
