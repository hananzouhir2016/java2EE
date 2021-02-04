package com.projet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.DAOFactory;

/**
 * Servlet implementation class SupprimerVille
 */
@WebServlet("/SupprimerAe")
public class SupprimerAeroport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerAeroport() {
        super();
       
    }
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String PARAM_ID_airoport  = "idAiroport";
    public static final String SESSION_VILLES  = "villes";

    public static final String VUE = "/ListerAe";
    
    private AeropDAO airoportdao;
    
	private  DAOFactory daofactory;
	
    public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.airoportdao=daofactory.getAeropDAO();
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idAe = getValeurParametre( request, PARAM_ID_airoport );
		int id=Integer.parseInt(idAe); 
	    airoportdao.supprimer(id);

        
	    this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
     
        
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	 private static String getValeurParametre( HttpServletRequest request, String nomChamp ) {
	        String valeur = request.getParameter( nomChamp );
	        if ( valeur == null || valeur.trim().length() == 0 ) {
	            return null;
	        } else {
	            return valeur;
	        }

}
}