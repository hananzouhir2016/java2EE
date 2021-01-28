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

import com.projet.dao.DAOFactory;
import com.projet.dao.VilleDao;
import com.projet.model.Ville;

/**
 * Servlet implementation class ListerVille
 */
@WebServlet("/ListerVilles")
public class ListerVille extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListerVille() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static final String SESSION_VILLES  = "villes";
    
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
		
		request.setAttribute("villes",villedao.lister() );
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
