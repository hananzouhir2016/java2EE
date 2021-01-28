package com.projet.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.projet.dao.DAOFactory;
import com.projet.dao.Utilisateurdao;
import com.projet.dao.VilleDao;
import com.projet.model.Ville;
import com.projet.service.VilleService;

/**
 * Servlet implementation class GestionVille
 */
@WebServlet("/GestionV")
public class GestionVille extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionVille() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static final String SESSION_VILLES  = "villes";
    public static final String CONF_DAO_FACTORY= "daofactory";
  		public static final String ATT_VILLE = "ville";
  		public static final String ATT_FORM = "form";
  		public static final String VUE = "/VilleForm.jsp";
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
		
		
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       VilleService form = new VilleService ( villedao );
		
		Ville ville = form.creerVille( request);
		
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_VILLE, ville );
		request.setAttribute("erreurs", form.getErreurs());
		this.getServletContext().getRequestDispatcher( VUE).forward( request, response );

		
		
	}

}
