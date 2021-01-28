package com.projet.model;

public class Ville {
	
	private long id;
	private String nom;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Ville() {
		super();
		
	}
	
	public Ville(Long id) {
		this.id=id;
		
	}
	
	

}
