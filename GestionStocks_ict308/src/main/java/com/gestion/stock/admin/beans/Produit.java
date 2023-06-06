package com.gestion.stock.admin.beans;

public class Produit {
	
	private String id;
	private String name;
	private String quantity;
	private String price;
	private String description;
	private String picture;
	
	
	public Produit() {
		
	}
	
		public Produit(String id,String name,String quantity,String price,String description,String picture) {
				this.id  = id;
				this.name  = name;
				this.quantity  = quantity;
				this.price  = price;
				this.description = description;
				this.picture = picture;
				
		}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	
		
}
