package com.gestion.stock.admin.beans;

public class panier {
	
	private int id;
	private int id_user;
	private int id_produit;
	private String name;
    private String quantity;
    private String price ;
    private String picture;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public panier(int id, int id_user, int id_produit, String name, String quantity, String price, String picture) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.id_produit = id_produit;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.picture = picture;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_produit() {
		return id_produit;
	}
	public void setId_produit(int id_produit) {
		this.id_produit = id_produit;
	}
}
