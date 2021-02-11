package com.projet.servlet;

import java.io.IOException;



import java.text.ParseException;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.projet.dao.AeropDAO;
import com.projet.dao.DAOFactory;
import com.projet.dao.VolDAO;
import com.projet.model.Airport;
import com.projet.model.Utilisateur;
import com.projet.model.Vol;
import com.projet.service.UtilisateurService;
import com.projet.service.VolService;





/**
 * Servlet implementation class AffichageVol
 */
@WebServlet("/AffichageVol")
public class AffichageVol extends HttpServlet  {
	    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		public static final String CONF_DAO_FACTORY = "daofactory";
	    private  DAOFactory daofactory;
	    private VolDAO  voldao;
	    private AeropDAO  aeroport;


	    public void init() throws ServletException {
	        /* Récupération d'une instance de notre DAO Utilisateur */
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
			this.voldao=daofactory.getVolDAO();
	        this.aeroport = daofactory.getAeropDAO();

	    }

	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
		{ 
	    	List<Airport> nom_aero = new ArrayList<Airport>();
            nom_aero= aeroport.selectionner();
            req.setAttribute("list_nomAeroports", nom_aero);

		
           this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
		
		}
	    
	

		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
		{

		

		if(req.getParameter("chercherVol")==null)
		{		  
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
		}
		else
		{  

			if(req.getParameter("radio").equals("radio01"))
			{	
				
				this.getServletContext().getRequestDispatcher("/voldouble.jsp").forward(req, resp);

     	    }
		
			
			
			if(req.getParameter("radio").equals("radio02"))
			{
				try {
					List<Airport> nom_aero = new ArrayList<Airport>();
		            nom_aero= aeroport.selectionner();
				
                     VolService form = new VolService (voldao,aeroport);
					  Vol volform = form.CreerVol(req, resp);
					
					   List<Vol> vol=form.AfficherVol(req);
					
				
				/* Stockage du formulaire et du bean dans l'objet request*/
				
				req.setAttribute("ATT_FORM" , form );
				req.setAttribute("volform", volform);
				
				req.setAttribute("vol", vol );

				
				
	            
	            req.setAttribute("list_nomAeroports", nom_aero);

	            
				if(vol!=null) 
				{
		            this.getServletContext().getRequestDispatcher("/volsimple.jsp").forward(req, resp);
				}
				else {
					 this.getServletContext().getRequestDispatcher("/index.jsp").forward( req, resp );
				}
				}	
				
			catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			

			}
		
		}
		}}


