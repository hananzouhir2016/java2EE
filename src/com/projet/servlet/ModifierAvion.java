package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.Aviondao;
import com.projet.dao.DAOFactory;
import com.projet.model.Avion;
import com.projet.service.AvionService;


/**
 * Servlet implementation class ModifierAvion
 */
@WebServlet("/ModifierAvi")
public class ModifierAvion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierAvion() {
        super();
        // TODO Auto-generated constructor stub
    }

    
  	public static final String ATT_AVION = "avion";
  	public static final String ATT_FORM = "form";
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String PARAM_ID_avion  = "idAvion";
    

    public static final String VUE = "/ModifAv.jsp";
    
    
    private Aviondao aviondao;
    
	private  DAOFactory daofactory;
	
    public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.aviondao=daofactory.getAviondao();
		}

	 
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idAv = getValeurParametre( request, PARAM_ID_avion );
		int id=Integer.parseInt(idAv); 
		
		request.setAttribute("avion",aviondao.chercher(id) );
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AvionService form = new AvionService ( aviondao);

		Avion avion  =form.modifAvion(request);
		
		
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_AVION, avion );
		request.setAttribute("erreurs", form.getErreurs());
	
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
