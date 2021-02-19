package com.projet.model;

import java.sql.Date;


public class Vol {
	
	private int id;
					private String aer_id;
					private String aer_id2;
					private String avi_id;
					
		private int avionid;
		private int aerDid;
		private int aerAid;
		
	private Date dateDepart;
	private Date dateArrivee;
	private String heureDepart;
	private String heureArrivee;
	private Double prix;
	private int nbPlaceReserve;
	private int duree;
	private String etat;
	
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getAer_id() {
		return aer_id;
	}
	public void setAer_id(String aer_id) {
		this.aer_id = aer_id;
	}
	public String getAer_id2() {
		return aer_id2;
	}
	public void setAer_id2(String aer_id2) {
		this.aer_id2 = aer_id2;
	}
	public String getAvi_id() {
		return avi_id;
	}
	public void setAvi_id(String avi_id) {
		this.avi_id = avi_id;
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
	public int getAvionid() {
		return avionid;
	}
	public void setAvionid(int avionid) {
		this.avionid = avionid;
	}
	public int getAerDid() {
		return aerDid;
	}
	public void setAerDid(int aerDid) {
		this.aerDid = aerDid;
	}
	public int getAerAid() {
		return aerAid;
	}
	public void setAerAid(int aerAid) {
		this.aerAid = aerAid;
	}
	
	
	
}
