package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.projet.dao.DAOFactory;
import com.projet.dao.Utilisateurdao;
import com.projet.model.Utilisateur;
import com.projet.service.UtilisateurService;

/**
 * Servlet implementation class ModifierUtilisateur
 */
@WebServlet("/ModifierUtilisa")
public class ModifierUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CONF_DAO_FACTORY= "daofactory";
	public static final String ATT_CLIENT = "utilisateur";
	public static final String ATT_FORM = "form";
	public static final String VUE = "/gerercompte.jsp";
	private Utilisateurdao utilisateurdao;
	private  DAOFactory daofactory;
      
    public ModifierUtilisateur() {
        super();
    }

    public void init() throws ServletException {
	
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.utilisateurdao=daofactory.getUtilisateurDao();
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UtilisateurService form = new UtilisateurService ( utilisateurdao );
		/* Traitement de la requête et récupération du bean en
		résultant */
		HttpSession session = request.getSession();
		
		Utilisateur utilisateur = (Utilisateur) session.getAttribute("sessionUtilisateur");
		utilisateur=form.ModifierUtilisateur( request,utilisateur);
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_CLIENT, utilisateur );
		request.setAttribute("erreurs", form.getErreurs());
		session.setAttribute("sessionUtilisateur", utilisateur);
	
		if (form.getErreurs().isEmpty()) {
			this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
		}
		else {
		this.getServletContext().getRequestDispatcher( VUE).forward( request, response );
		}
	}

}
