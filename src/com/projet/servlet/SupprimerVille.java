package com.projet.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.projet.dao.DAOException;
import com.projet.dao.DAOFactory;
import com.projet.dao.VilleDao;
import com.projet.model.Ville;

/**
 * Servlet implementation class SupprimerVille
 */
@WebServlet("/SupprimerV")
public class SupprimerVille extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerVille() {
        super();
       
    }
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String PARAM_ID_VILLE  = "idVille";
    public static final String SESSION_VILLES  = "villes";

    public static final String VUE = "/G_ville.jsp";
    
    private VilleDao villedao;
    
	private  DAOFactory daofactory;
	
    public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.villedao=daofactory.getVilleDao();
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idVille = getValeurParametre( request, PARAM_ID_VILLE );
        Long id = (long) 26 ;
        
      
       
        
        HttpSession session = request.getSession();
        Map<Long, Ville> villes = (HashMap<Long, Ville>) session.getAttribute( "villes" );
        
        List<Ville> villess = villedao.lister();
		 Ville villess1 =  (Ville) session.getAttribute("villes");
		 
        if (villes == null)
        {
        	 System.out.print("test");
        }
        
        /* Si l'id du client et la Map des clients ne sont pas vides */
        if ( id !=null && villes !=null ) {
            try {
                /* Alors suppression du client de la BDD */
                villedao.supprimer( villes.get( id  ));
                /* Puis suppression du client de la Map */
              
                villes.remove( id ); 
                System.out.print("supprission");
            } catch ( DAOException e ) {
                e.printStackTrace();
            }
            /* Et remplacement de l'ancienne Map en session par la nouvelle */
            session.setAttribute( SESSION_VILLES, villes );
        }

        /* Redirection vers la fiche récapitulative */
        response.sendRedirect( request.getContextPath() + VUE );
        
		
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