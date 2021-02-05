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
import com.projet.dao.DAOFactory;
import com.projet.dao.VolDAO;
import com.projet.model.Airport;
import com.projet.model.Vol;
import com.projet.service.VolService;

/**
 * Servlet implementation class DetailsVols
 */
@WebServlet("/DetailsVols")
public class DetailsVols extends HttpServlet {
	  public static final String CONF_DAO_FACTORY = "daofactory";
	    private  DAOFactory daofactory;
	    private VolDAO  voldao;
	    private AeropDAO aero; 
	    public void init() throws ServletException {
	        /* Récupération d'une instance de notre DAO Utilisateur */
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
			this.voldao=daofactory.getVolDAO();

	    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			List<Airport> nom_aero = new ArrayList<Airport>();
		
        VolService form = new VolService (voldao,aero);
    	
		/* Traitement de la requête et récupération du bean en résultant */
    	
		List<Vol> vol=new ArrayList();

			vol = form.AfficherVol(req);
		
		/* Stockage du formulaire et du bean dans l'objet request*/
		
		
		req.setAttribute("ATT_FORM" , form );
		req.setAttribute("vol", vol );

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
