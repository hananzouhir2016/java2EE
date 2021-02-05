package com.projet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AdminDao;
import com.projet.dao.DAOFactory;

/**
 * Servlet implementation class SupprimerAdmin
 */
@WebServlet("/SupprimerA")
public class SupprimerAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerAdmin() {
        super();
      
    }
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String PARAM_ID_Admin  = "idAdmin";
    public static final String SESSION_VILLES  = "admins";

    public static final String VUE = "/ListerA";
    
    private AdminDao admindao;
    
	private  DAOFactory daofactory;
	
    public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.admindao=daofactory.getAdminDao();
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idAdmin = getValeurParametre( request, PARAM_ID_Admin );
		int id=Integer.parseInt(idAdmin); 
	    admindao.supprimer(id);

        
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