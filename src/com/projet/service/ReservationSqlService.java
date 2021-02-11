package com.projet.service;

import com.projet.dao.Reservationdao;
import com.projet.dao.Utilisateurdao
;
import com.projet.model.Airport;
import com.projet.model.Avion;
import com.projet.model.Reservation;
import com.projet.model.Utilisateur;
import com.projet.model.Vol;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AvionDao;
import com.projet.service.*;


public class ReservationSqlService {
	

	private HashMap<String,String> erreurs=new HashMap<String, String>();
	public HashMap<String, String> getErreurs() {
		return erreurs;
	}

	public void setErreurs(HashMap<String, String> erreurs) {
		this.erreurs = erreurs;
	}
	private Reservationdao reservDao;
	 private Utilisateurdao utilisDao;
	 
	 String message=null;

		 

			
			public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

			public ReservationSqlService(Reservationdao reservDao,Utilisateurdao utilisDao) 
			{
				this.reservDao=reservDao;
				this.utilisDao=utilisDao;


			}
			public Reservation CreerReserv(HttpServletRequest req, HttpServletResponse resp) throws ParseException
			{				
				
				Reservation reservation= new Reservation();

				
				String date=VerificationDonnée.getValeurChamp(req, "DateReserv");
				
				Date date_depart=new SimpleDateFormat("dd/MM/yyyy").parse(date);
				java.sql.Date sql_date=new java.sql.Date(date_depart.getTime());
				
				String email=VerificationDonnée.getValeurChamp(req, "cin");				    

				
				try {
					validationString(date);
					reservation.setDate(sql_date);
					
				    }catch(Exception e)
				      {
				    	erreurs.put("date",e.getMessage());
				      }
				try {
					validationString((req.getParameter("passagers")));
					reservation.setNbpassagers(Integer.parseInt(req.getParameter("passagers")));
					
				    }catch(Exception e)
				      {
				    	erreurs.put("passagers",e.getMessage());
				      }
				try {
					validationString(email);
					
				    }catch(Exception e)
				      {
				    	erreurs.put("date",e.getMessage());
				      }
			 
				

	            Utilisateur user=utilisDao.chercher(email);
			   
	           reservation.setUtilisateur(user);
	           
	           
	           if (erreurs.isEmpty())
	       	{
	        	   reservDao.insert(reservation);
	        	   message="Veuillez consulter votre profil pour valider votre réservation";
	       	
	       	
	       	} 
			       
			     
				     

			return 	  reservation;
			

			}
			
			
			public void validationString(String s) throws Exception
			{ 		
				if(s==null || s.trim().length() == 0)
				{

					throw new Exception("Veuillez remplir ce champs");
				}
				
			}
			public void validationDate(String s) throws Exception
			{ 		
				if(s==null  || s.trim().length() == 0)
				{

					throw new Exception("Veuillez séléctionner une date");
				}
				
			}	
			
			

	}



