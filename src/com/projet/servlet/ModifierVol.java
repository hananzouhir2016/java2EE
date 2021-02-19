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

import com.projet.model.Vol;

import com.projet.service.VolService;

/**
 * Servlet implementation class ModifierVol
 */
@WebServlet("/ModifierVol")
public class ModifierVol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierVol() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    public static final String PARAM_ID_vol  = "idVol";
    public static final String ATT_Vol = "vol";
  	public static final String ATT_FORM = "form";
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String PARAM_ID_avion  = "idVol";
    public static final String SESSION_vol  = "vol";

    public static final String VUE = "/ModifVol.jsp";
    
    private VolDAO voldao;
    private AeropDAO aeropdao;
    private Aviondao aviondao;
    
	private  DAOFactory daofactory;
	
    public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.voldao=daofactory.getVolDAO();
		this.aeropdao=daofactory.getAeropDAO();
		this.aviondao=daofactory.getAviondao();
		}
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idv = getValeurParametre( request,  PARAM_ID_vol );
		int id=Integer.parseInt(idv); 
		
		request.setAttribute("aerop",aeropdao.lister());
		request.setAttribute("avion",aviondao.lister());
		request.setAttribute("vol",voldao.lister() );
		request.setAttribute("vol",voldao.search(id) );
		
		
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VolService form = new VolService (voldao,aviondao,aeropdao);

		Vol vol  =form.modifVol(request);
		
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_Vol, vol );
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
