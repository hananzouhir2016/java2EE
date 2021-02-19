package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.Aviondao;
import com.projet.dao.DAOFactory;
import com.projet.dao.VolDAO;

/**
 * Servlet implementation class TrouverVol
 */
@WebServlet("/TrouverVol")
public class TrouverVol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrouverVol() {
        super();
        // TODO Auto-generated constructor stub
    }

    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    private VolDAO voldao;
	public static final String VUE = "/G_vol.jsp";
	
	 public void init() throws ServletException {
			
	    	
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
			this.voldao=daofactory.getVolDAO();
			}
	 
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idV = getValeurParametre( request, "id" );
		System.out.println(idV);
		int i=Integer.parseInt(idV);
		
		request.setAttribute("vol",voldao.chercher(i) );
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
