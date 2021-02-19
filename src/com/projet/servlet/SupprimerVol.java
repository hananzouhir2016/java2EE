package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.DAOFactory;
import com.projet.dao.VolDAO;

/**
 * Servlet implementation class SupprimerVol
 */
@WebServlet("/SupprimerVol")
public class SupprimerVol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerVol() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String PARAM_ID_vol  = "idVol";
    public static final String SESSION_vol  = "vol";

    public static final String VUE = "/ListerVol";
    
    private VolDAO voldao;
    
	private  DAOFactory daofactory;
	
    public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.voldao=daofactory.getVolDAO();
		}

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idV = getValeurParametre( request, PARAM_ID_vol );
		int id=Integer.parseInt(idV); 
		voldao.supprimer(id);

        
	    this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
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
