package com.projet.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.AvionDao;
import com.projet.model.Airport;
import com.projet.model.Avion;
import com.projet.model.Vol;

public class DetailsV {
 private AeropDAO aerdao;
 private AvionDao aviondao;

	 

		
		public DetailsV(AeropDAO aerdao,AvionDao aviondao) 
		{
			this.aerdao=aerdao;
			this.aviondao=aviondao;


		}

		
		
		
		
		public Vol CreerVol(HttpServletRequest req, HttpServletResponse resp) throws ParseException
		{
			
			
		
		
			Vol vol= new Vol();
			
			
				vol.setNbAdultes(req.getParameter("adulte"));
				
			    vol.setNbEnfants(req.getParameter("enfant"));
			    
			    
			    int passager=Integer.parseInt(req.getParameter("adulte"))+Integer.parseInt(req.getParameter("enfant"));
			   
			    
			    vol.setNbPassagers(passager);

			    int duree=Integer.parseInt(req.getParameter("duree"));
			    vol.setDuree(duree);
			
			   
			    vol.setHeureDepart(req.getParameter("heureD"));
			    vol.setHeureArrivee(req.getParameter("heureA"));

           Airport Aeroport1=aerdao.chercher(req.getParameter("aero1"));
		    
           Airport  Aeroport2=aerdao.chercher(req.getParameter("aero2"));
		   
		        vol.setAirport2(Aeroport2);
		        vol.setAirport1(Aeroport1);
		       
		        vol.setNbescale(req.getParameter("escale"));
		        
		        
		        Avion avion=aviondao.chercher(req.getParameter("avion"));
		        System.out.println(req.getParameter("avion"));
		        vol.setAvion(avion);
		        
			     

		return vol;
		

		}
		
		

}
