package com.projet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.projet.dao.DAOFactory;
import com.projet.dao.Reservationdao;
import com.projet.dao.Utilisateurdao;
import com.projet.model.Utilisateur;
import com.projet.service.UtilisateurService;

public class ReservationVol extends HttpServlet {

	private static final long serialVersionUID = 1L;
    public ReservationVol() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    public static final String CONF_DAO_FACTORY= "daofactory";
	public static final String ATT_CLIENT = "utilisateur";
	public static final String ATT_FORM = "form";
	private Utilisateurdao utilisateurdao;
	private Reservationdao reservationdao;
	private  DAOFactory daofactory;
     public void init() throws ServletException {
		
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.utilisateurdao=daofactory.getUtilisateurDao();
		this.reservationdao=daofactory.getReservationDao();
		
		}
    

    public void doPost( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
	{	if(request.getParameter("seConnecter")!=null) 
	          {
	/* Affichage de la page d'inscription */
    	UtilisateurService form = new UtilisateurService (utilisateurdao);
    	
		/* Traitement de la requête et récupération du bean en résultant */
    	
		Utilisateur utilisateur = form.connecterUtilisateur( request);		
		/* Stockage du formulaire et du bean dans l'objet request*/
		
		HttpSession session = request.getSession();
		request.setAttribute(ATT_FORM , form );
		request.setAttribute(ATT_CLIENT, utilisateur );
		session.setAttribute("sessionUtilisateur", utilisateur);
		if(utilisateur!=null) 
		{

		session.setAttribute("sessionUtilisateur", utilisateur);
	    this.getServletContext().getRequestDispatcher("/reservation.jsp").forward( request, response );
		    
			
		}
		else {
			 this.getServletContext().getRequestDispatcher("/lesvols.jsp").forward( request, response );
		}
		      }
	
	
	
	
	
	}
}
