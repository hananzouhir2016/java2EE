package com.projet.model;

import java.sql.Date;
import java.util.List;

public class Vol {
	private int id;
	private Airport aeroportA;
	private Airport aeroportD;
	private Avion avion;
	private Date dateDepart;
	private Date dateArrivee;
	private String heureDepart;
	private String heureArrivee;
	private Double prix;
	private int nbPlaceReserve;
	private int duree;
	private Airport airport1;
	private Airport airport2;
	private int nbrescale;
	private int nbPassagers;

	private String nbAdultes;
	private String nbEnfants;
	private String nbescale;
	
	
	public int getNbPassagers() {
		return nbPassagers;
	}
	public void setNbPassagers(int nbPassagers) {
		this.nbPassagers = nbPassagers;
	}
	public String getNbescale() {
		return nbescale;
	}
	public void setNbescale(String nbescale) {
		this.nbescale = nbescale;
	}
	public String getNbAdultes() {
		return nbAdultes;
	}
	public void setNbAdultes(String nbAdultes) {
		this.nbAdultes = nbAdultes;
	}
	public String getNbEnfants() {
		return nbEnfants;
	}
	public void setNbEnfants(String nbEnfants) {
		this.nbEnfants = nbEnfants;
	}
	public int getNbrescale() {
		return nbrescale;
	}
	public void setNbrescale(int nbrescale) {
		this.nbrescale = nbrescale;
	}
	public Airport getAirport1() {
		return airport1;
	}
	public void setAirport1(Airport airport1) {
		this.airport1 = airport1;
	}
	public Airport getAirport2() {
		return airport2;
	}
	public void setAirport2(Airport airport2) {
		this.airport2 = airport2;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public Airport getAeroportA() {
		return aeroportA;
	}
	public void setAeroportA(Airport aeroportA) {
		this.aeroportA = aeroportA;
	}
	public Airport getAeroportD() {
		return aeroportD;
	}
	public void setAeroportD(Airport aeroportD) {
		this.aeroportD = aeroportD;
	}
	public Avion getAvion() {
		return avion;
	}
	public void setAvion(Avion avion) {
		this.avion = avion;
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
