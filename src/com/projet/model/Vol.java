package com.projet.model;

import java.sql.Date;

public class Vol {
	
	private int id;
	private Airport AeroportA;
	private Airport AeroportD;
	private Avion Avion;
	private Date dateDepart;
	private Date dateArrivee;
	private String heureDepart;
	private String heureArrivee;
	private Double prix;
	private int nbPlaceReserve;
	private int duree;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Airport getAeroportA() {
		return AeroportA;
	}
	public void setAeroportA(Airport aeroportA) {
		AeroportA = aeroportA;
	}
	public Airport getAeroportD() {
		return AeroportD;
	}
	public void setAeroportD(Airport aeroportD) {
		AeroportD = aeroportD;
	}
	public Avion getAvion() {
		return Avion;
	}
	public void setAvion(Avion avion) {
		Avion = avion;
	}
	public Date getDateDepart() {
		return dateDepart;
	}
	public void setDateDepart(Date dateDepart) {
		this.dateDepart = dateDepart;
	}
	public Date getDateArrivee() {
		return dateArrivee;
	}
	public void setDateArrivee(Date dateArrivee) {
		this.dateArrivee = dateArrivee;
	}
	public String getHeureDepart() {
		return heureDepart;
	}
	public void setHeureDepart(String heureDepart) {
		this.heureDepart = heureDepart;
	}
	public String getHeureArrivee() {
		return heureArrivee;
	}
	public void setHeureArrivee(String heureArrivee) {
		this.heureArrivee = heureArrivee;
	}
	public Double getPrix() {
		return prix;
	}
	public void setPrix(Double prix) {
		this.prix = prix;
	}
	public int getNbPlaceReserve() {
		return nbPlaceReserve;
	}
	public void setNbPlaceReserve(int nbPlaceReserve) {
		this.nbPlaceReserve = nbPlaceReserve;
	}
	public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	
	
	

	
	
	
	
}
