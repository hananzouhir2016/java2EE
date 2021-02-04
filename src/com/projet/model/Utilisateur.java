package com.projet.model;
import java.util.List;


public class Utilisateur {
	private List<Reservation> reservations;
	private List<Reservation> reservations2;
	private List<Reservation> reservations3;
	private int id;
	private String nom;
	private String prenom;
	private String sexe;
	private String cin;
	private String login;
	private String mdp;
	private String telephone;
	private String email;
	
	
	public List<Reservation> getReservations2() {
		return reservations2;
	}
	public void setReservations2(List<Reservation> reservations2) {
		this.reservations2 = reservations2;
	}
	public List<Reservation> getReservations3() {
		return reservations3;
	}
	public void setReservations3(List<Reservation> reservations3) {
		this.reservations3 = reservations3;
	}
	
	public List<Reservation> getReservations() {
		return reservations;
	}
	public void setReservations(List<Reservation> reservations) {
		this.reservations = reservations;
	}

	
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
