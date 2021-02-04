package com.projet.model;
import java.util.List;
import java.sql.Date;
public class Reservation {
	private int id;
	private int nbpassagers;
	private Date date;
	private String etat;
	 private List<Vol> vols;
	 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
    public List<Vol> getVols() {
		return vols;
	}

	public void setVols(List<Vol> vols) {
		this.vols = vols;
	}

	private Utilisateur utilisateur;
	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getNbpassagers() {
		return nbpassagers;
	}

	public void setNbpassagers(int nbpassagers) {
		this.nbpassagers = nbpassagers;
	}

	

	
	
	
}
