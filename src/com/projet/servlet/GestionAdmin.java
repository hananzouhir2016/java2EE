package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AdminDao;
import com.projet.dao.DAOFactory;
import com.projet.dao.Utilisateurdao;
import com.projet.model.Utilisateur;
import com.projet.service.AdminService;
import com.projet.service.UtilisateurService;

/**
 * Servlet implementation class GestionAdmin
 */
@WebServlet("/GestionA")
public class GestionAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	public static final String CONF_DAO_FACTORY= "daofactory";
	public static final String ATT_ADMIN = "admin";
	public static final String ATT_FORM = "form";
	public static final String VUE = "/AdminForm.jsp";
	private AdminDao admindao;
	private  DAOFactory daofactory;
	
    public GestionAdmin() {
        super();
      
    }
    
    public void init() throws ServletException {
		
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.admindao=daofactory.getAdminDao();
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
	
		
		AdminService form = new AdminService ( admindao );
		
		Utilisateur admin = form.creerAdmin( request);
		
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_ADMIN, admin );
		request.setAttribute("erreurs", form.getErreurs());
		this.getServletContext().getRequestDispatcher( VUE).forward( request, response );
	}

}
