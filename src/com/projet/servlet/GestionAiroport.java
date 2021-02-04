package com.projet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.DAOFactory;
import com.projet.model.Airport;
import com.projet.service.AiroportService;

/**
 * Servlet implementation class Gestionairoport
 */
@WebServlet("/GestionAe")
public class GestionAiroport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionAiroport(){
        super();
        // TODO Auto-generated constructor stub
    }
    public static final String SESSION_airoportS  = "airoports";
    public static final String CONF_DAO_FACTORY= "daofactory";
  		public static final String ATT_airoport = "airoport";
  		public static final String ATT_FORM = "form";
  		public static final String VUE = "/AiroportForm.jsp";
  		private AeropDAO airoportdao;
  		private  DAOFactory daofactory;
		
     public void init() throws ServletException {
		
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.airoportdao=daofactory.getAeropDAO();
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
		AiroportService form = new AiroportService ( airoportdao );
		
		Airport airoport = form.creerairoport( request);
		
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_airoport, airoport );
		request.setAttribute("erreurs", form.getErreurs());
		this.getServletContext().getRequestDispatcher( VUE).forward( request, response );

		
		
	}

}
