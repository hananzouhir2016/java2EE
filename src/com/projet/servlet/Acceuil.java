package com.projet.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.DAOFactory;
import com.projet.dao.VolDAO;
import com.projet.model.Airport;

/**
 * Servlet implementation class Acceuil
 */
@WebServlet("/Acceuil")
public class Acceuil extends HttpServlet {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String CONF_DAO_FACTORY = "daofactory";
	    private  DAOFactory daofactory;
	    private AeropDAO  aeroport;

	    public void init() throws ServletException {
	        /* Récupération d'une instance de notre DAO Utilisateur */
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
	        this.aeroport = daofactory.getAeropDAO();
	       
	        }
	    
	

	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
		{ 
	    	List<Airport> nom_aero = new ArrayList<Airport>();
            nom_aero= aeroport.selectionner();
            req.setAttribute("list_nomAeroports", nom_aero);

		
           this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
		
		}
	    }