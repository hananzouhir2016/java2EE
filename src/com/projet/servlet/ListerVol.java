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
 * Servlet implementation class ListerVol
 */
@WebServlet("/ListerVol")
public class ListerVol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListerVol() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String SESSION_AVIONS  = "vol";
    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    private VolDAO voldao;
	public static final String VUE = "/G_vol.jsp";
	
    public void init() throws ServletException {
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.voldao=daofactory.getVolDAO();
		}
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("vol",voldao.lister() );
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

}
