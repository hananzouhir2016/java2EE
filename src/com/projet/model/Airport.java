package com.projet.model;

public class Airport {
	
	private long id;
	 public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	private String nom;
	 private Ville ville;
	 
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Ville getVille() {
		return ville;
	}
	public void setVille(Ville ville) {
		this.ville = ville;
	}
	 
	 

}
