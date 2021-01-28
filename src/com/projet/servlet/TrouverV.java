package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AdminDao;
import com.projet.dao.DAOFactory;
import com.projet.dao.VilleDao;

/**
 * Servlet implementation class TrouverV
 */
@WebServlet("/TrouverVille")
public class TrouverV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrouverV() {
        super();
        
    }

    
    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    private VilleDao villedao;
	public static final String VUE = "/G_ville.jsp";
	
	 public void init() throws ServletException {
			
	    	
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
			this.villedao=daofactory.getVilleDao();
			}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomVille = getValeurParametre( request, "nomV" );
		request.setAttribute("villes",villedao.trouver(nomVille) );
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