package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.Aviondao;
import com.projet.dao.DAOFactory;
import com.projet.dao.VolDAO;
import com.projet.service.VolService;

/**
 * Servlet implementation class AnnulerVol
 */
@WebServlet("/AnnulerVol")
public class AnnulerVol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnulerVol() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String CONF_DAO_FACTORY= "daofactory";
					public static final String ATT_CLIENT = "reservation";
	public static final String ATT_FORM = "form";
	 public static final String VUE = "/ListerVol";
					public static final String SESSION_AV  = "avion";
				    public static final String SESSION_AE  = "aerop";
				    public static final String PARAM_ETAT_vol  = "etat";
				    public static final String PARAM_ID_vol  = "idVol";
				    public static final String SESSION_vol  = "vol";
	private VolDAO voldao;
	private  DAOFactory daofactory;
	
	
	
	
	public void init() throws ServletException 
		{
    	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		
		this.voldao=daofactory.getVolDAO();
		} 
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idV = getValeurParametre( request, PARAM_ID_vol );
		int id=Integer.parseInt(idV); 
		String ETAT_vol="annuler";
		voldao.annuler(ETAT_vol,id);
		
		
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
