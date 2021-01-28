package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AdminDao;
import com.projet.dao.DAOFactory;
import com.projet.dao.VilleDao;

/**
 * Servlet implementation class ListerAdmin
 */
@WebServlet("/ListerA")
public class ListerAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListerAdmin() {
        super();
        
    }
    
 public static final String SESSION_VILLES  = "villes";
    
    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    private AdminDao admindao;
	public static final String VUE = "/G_admin.jsp";
	
	 public void init() throws ServletException {
			
	    	
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
			this.admindao=daofactory.getAdminDao();
			}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("admins",admindao.lister() );
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
