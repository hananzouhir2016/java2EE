package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.Aviondao;
import com.projet.dao.DAOFactory;
import com.projet.dao.VilleDao;

/**
 * Servlet implementation class ListerAvions
 */
@WebServlet("/ListerAvions")
public class ListerAvions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListerAvions() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String SESSION_AVIONS  = "avion";
    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    private Aviondao aviondao;
	public static final String VUE = "/G_Avion.jsp";
    public void init() throws ServletException {
		
    	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.aviondao=daofactory.getAviondao();
		}
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("avion",aviondao.lister() );
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	

}
