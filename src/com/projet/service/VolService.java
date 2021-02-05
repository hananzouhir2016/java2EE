package com.projet.service;

import java.util.ArrayList;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;  


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.model.Airport;
import com.projet.model.Vol;
import com.projet.dao.AeropDAO;
import com.projet.dao.DAOException;
import com.projet.dao.Utilisateurdao;
import com.projet.dao.VolDAO;
import com.projet.service.*;

public class VolService {
	
	private HashMap<String,String> erreurs=new HashMap<String, String>();
	public HashMap<String, String> getErreurs() {
		return erreurs;
	}

	public void setErreurs(HashMap<String, String> erreurs) {
		this.erreurs = erreurs;
	}
    private VolDAO voldao;
    private AeropDAO aerdao;

	
	public VolService( VolDAO  voldao,AeropDAO aerdao) 
	{
		this.voldao = voldao;
		this.aerdao=aerdao;
	}

	
	
	
	
	public Vol CreerVol(HttpServletRequest req, HttpServletResponse resp) throws ParseException
	{
		String nom_aer1 =VerificationDonnée.getValeurChamp(req, "de");
		String nom_aer2= VerificationDonnée.getValeurChamp(req, "a");
		String date=VerificationDonnée.getValeurChamp(req, "depart");
		String adulte=VerificationDonnée.getValeurChamp(req, "adulte");
		String enfant=VerificationDonnée.getValeurChamp(req, "enfant");

		Date date_depart=new SimpleDateFormat("dd/MM/yyyy").parse(date);
		java.sql.Date sql_date=new java.sql.Date(date_depart.getTime());

		
	
	
		Vol vol= new Vol();
		Airport AeroportD= new Airport();
		Airport AeroportA= new Airport();
		
	try {
			validationString(adulte);
			vol.setNbAdultes(adulte);
			
		    }catch(Exception e)
		      {
		    	erreurs.put("adulte",e.getMessage());
		      }
	
	try {
		validationString(enfant);
		vol.setNbAdultes(enfant);
		
	    }catch(Exception e)
	      {
	    	erreurs.put("enfant",e.getMessage());
	      }
	
		
	try {
		validationString(req.getParameter("de"));
		
	    }catch(Exception e)
	      {
	    	erreurs.put("de",e.getMessage());
	      }
	try {
		validationString(req.getParameter("a"));
		
		
	    }catch(Exception e)
	      {
	    	erreurs.put("a",e.getMessage());
	      }
	try {
		validationDate(date);
		vol.setDateDepart(sql_date);
		
	    }catch(Exception e)
	      {
	    	erreurs.put("depart",e.getMessage());
	      }
	try {
		validationDate(req.getParameter("retour"));
		vol.setDateDepart((java.sql.Date) new SimpleDateFormat("dd/MM/yyyy").parse(req.getParameter("retour")));
		
	    }catch(Exception e)
	      {
	    	erreurs.put("retour",e.getMessage());
	      }
	try {
		validationString(req.getParameter("adulte"));
		vol.setNbAdultes(req.getParameter("adulte"));
		
	    }catch(Exception e)
	      {
	    	erreurs.put("adulte",e.getMessage());
	      }
	try {
		validationString(req.getParameter("enfant"));
		vol.setNbEnfants(req.getParameter("enfant"));
		
	    }catch(Exception e)
	      {
	    	erreurs.put("enfant",e.getMessage());
	      }
	    AeroportD=aerdao.chercher(req.getParameter("de"));
	    
	    AeroportA=aerdao.chercher(req.getParameter("a"));
	   
	vol.setAeroportA(AeroportA);
   System.out.print(vol.getAeroportA().getNom());

	vol.setAeroportD(AeroportD);
    

	return vol;
	}
	
	
	
	
	public List<Vol> AfficherVol(HttpServletRequest req) throws ParseException
	{
		Vol vol =new Vol();
		List<Vol> vol_affichage=new ArrayList<Vol>();
		
		String date=VerificationDonnée.getValeurChamp(req, "depart");
		Date date_depart=new SimpleDateFormat("MM/dd/yyyy").parse(date);
		java.sql.Date sql_date=new java.sql.Date(date_depart.getTime());
		Airport  AeroportD=aerdao.chercher(VerificationDonnée.getValeurChamp(req, "de"));
		Airport  AeroportA=aerdao.chercher(VerificationDonnée.getValeurChamp(req, "a"));
		
		vol.setDateDepart(sql_date);
		vol.setAeroportA(AeroportA);
		vol.setAeroportD(AeroportD);
		
		vol_affichage=voldao.recupererVol(vol.getDateDepart(), vol.getAeroportD().getId(), vol.getAeroportA().getId());
		
		
		return vol_affichage;  
		
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



