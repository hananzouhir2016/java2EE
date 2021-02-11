package com.projet.servlet;

import java.io.IOException;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.AvionDao;
import com.projet.dao.DAOFactory;
import com.projet.model.Airport;
import com.projet.model.Vol;
import com.projet.service.DetailsV;

/**
 * Servlet implementation class DetailsVols
 */
@WebServlet("/DetailsVols")
public class DetailsVols extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CONF_DAO_FACTORY = "daofactory";
    private  DAOFactory daofactory;
    private AeropDAO  aeroport;
    private AvionDao  aviondao;



    public void init() throws ServletException {
        /* Récupération d'une instance de notre DAO Utilisateur */
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
        this.aeroport = daofactory.getAeropDAO();
        this.aviondao=daofactory.getAvionDao();

    }
	 

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
            
            this.getServletContext().getRequestDispatcher("/lesvols.jsp").forward(req, resp);


	

}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("chercher")!=null)
		{
	       try {
	    	   DetailsV form = new DetailsV (aeroport,aviondao);
	
	 
	
		      Vol volform = form.CreerVol(req, resp);
		
		      
		      System.out.println(volform.getAvion().getNom());
		   



/* Stockage du formulaire et du bean dans l'objet request*/

req.setAttribute("ATT_FORM" , form );
req.setAttribute("volform", volform);
this.getServletContext().getRequestDispatcher("/lesvols.jsp").forward(req, resp);


	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	}}}