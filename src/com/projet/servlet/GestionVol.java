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
 * Servlet implementation class GestionVol
 */
@WebServlet("/GestionVol")
public class GestionVol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionVol() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String SESSION_VOL  = "vol";
    public static final String SESSION_AV  = "avion";
    public static final String SESSION_AE  = "aerop";
    
    public static final String ATT_VOL = "vol";
    public static final String ATT_FORM = "form";
    
    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    
    private VolDAO voldao;
    private AeropDAO aeropdao;
    private Aviondao aviondao;
	
    public static final String VUE = "/AjFormVol.jsp";
    public void init() throws ServletException 
       {
		
    	this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.aeropdao=daofactory.getAeropDAO();
		this.voldao=daofactory.getVolDAO();
		this.aviondao=daofactory.getAviondao();
		}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("aerop",aeropdao.lister());
		request.setAttribute("avion",aviondao.lister());
		request.setAttribute("vol",voldao.lister() );
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VolService form = new VolService ( voldao ,aviondao,aeropdao);
		Vol vol = form.creerVol(request);
					
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_VOL, vol );
					
		request.setAttribute("erreurs", form.getErreurs());
		this.getServletContext().getRequestDispatcher( VUE).forward( request, response );
	}
}
