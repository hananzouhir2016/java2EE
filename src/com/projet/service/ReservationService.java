package com.projet.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.projet.dao.AeropDAO;
import com.projet.dao.Reservationdao;
import com.projet.dao.Utilisateurdao;
import com.projet.dao.VolDAO;
import com.projet.model.Reservation;
import com.projet.model.Utilisateur;
import com.projet.model.Vol;

public class ReservationService {
	private Reservationdao reservationdao;
	private VolDAO voldao;
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String, String>();
	public Map<String, String> getErreurs() 
	{
		return erreurs;
	}
	
	public String getResultat() 
	{
		return resultat;
	}
	
	
	public ReservationService( Reservationdao reservationdao,VolDAO voldao) 
	{
		this.reservationdao= reservationdao;
		this.voldao= voldao;
	}
	

	public Utilisateur ModifierReservation(HttpServletRequest request,Utilisateur utilisateur)
	{
	String valeur = request.getParameter("id");
	String NB = request.getParameter("NB");
	String dateEntr=request.getParameter("departure");
	List<Reservation>  reservations = utilisateur.getReservations3();
	Reservation reservation=null;
	for (Reservation reservationvol : reservations) {
		if(reservationvol.getId()==Integer.parseInt(valeur))
		{
		reservation=reservationvol;	
		break;
		}
		
	}
	reservation.setNbpassagers(Integer.parseInt(NB));       
	Date dateEntree=Date.valueOf(dateEntr);
	reservation.setDate(dateEntree);
	reservationdao.modifier(reservation);
	//utilisateur.getReservations3().add(reservation);
	return utilisateur;
}
	
	public Utilisateur AnnulerReservation(HttpServletRequest request,Utilisateur utilisateur)
	{

	String valeur = request.getParameter("id");
	
	List<Reservation>  reservations = utilisateur.getReservations3();
	List<Reservation>  reservationss = utilisateur.getReservations2();
	Reservation reservation=null;
	for (Reservation reservationvol : reservations) {
		if(reservationvol.getId()==Integer.parseInt(valeur))
		{
		reservations.remove(reservationvol);
		reservation=reservationvol;	
		reservationss.add(reservationvol);
		break;
		}
		
	}
	reservation.setEtat("annuler");
	reservationdao.annuler(reservation);
	return utilisateur;
    }
	
	public Utilisateur ValiderReservation(HttpServletRequest request,Utilisateur utilisateur)
	{
	String valeur = request.getParameter("id");
	String valeur1 = request.getParameter("id2");
	String valeur2 = request.getParameter("id_vol");
    voldao.CompterNbrReservation(Integer.parseInt(valeur1),Integer.parseInt(valeur2));
    
    List<Reservation>  reservations = utilisateur.getReservations3();
	List<Reservation>  reservationss = utilisateur.getReservations();
	Reservation reservation=null;
	for (Reservation reservationvol : reservations) {
		if(reservationvol.getId()==Integer.parseInt(valeur))
		{
		reservations.remove(reservationvol);
		reservation=reservationvol;	
		reservationss.add(reservationvol);
		break;
		}
		
	}
	reservation.setEtat("valider");
	reservationdao.annuler(reservation);
	return utilisateur;
    }

}
