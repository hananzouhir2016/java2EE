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
 * Servlet implementation class GestionReserv
 */
@WebServlet("/GestionReserv")
public class GestionReserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GestionReserv() {
        super();
        // TODO Auto-generated constructor stub
    }
        public static final String CONF_DAO_FACTORY= "daofactory";
		public static final String ATT_CLIENT = "utilisateur";
		public static final String ATT_FORM = "form";
		public static final String VUE = "/WEB-INF/inscriptionReserv.jsp";
		private Utilisateurdao utilisateurdao;
		private  DAOFactory daofactory;
         public void init() throws ServletException {
			
			/* Récupération d'une instance de notre DAO Utilisateur
			 récupérer une instance de notre DAOFactory.
			 Puisque nous en avons placé une dans un attribut de
              portée application lors de son chargement, il nous suffit depuis notre servlet de récupérer le ServletContext et d'appeler sa
              méthode getAttribute()
              Cette méthode retournant un objet de type Object, nous devons ensuite effectuer un cast vers le type DAOFactory pour
             pouvoir appeler sa méthode getUtilisateurDao(). Nous enregistrons finalement l'instance de notre DAO Utilisateur dans
             un attribut de notre servlet.
			 */
			this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
			this.utilisateurdao=daofactory.getUtilisateurDao();
			}

		public void doGet( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
				{
				/* Affichage de la page d'inscription */
				this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
				}
		public void doPost( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
		{
			
		/* Préparation de l'objet formulaire */
		UtilisateurService form = new UtilisateurService ( utilisateurdao );
		/* Traitement de la requête et récupération du bean en
		résultant */
		Utilisateur utilisateur = form.creerUtilisateur( request);
		/* Stockage du formulaire et du bean dans l'objet request
		*/
		HttpSession session = request.getSession();
		request.setAttribute(ATT_FORM , form );
		request.setAttribute( ATT_CLIENT, utilisateur );
		request.setAttribute("erreurs", form.getErreurs());
		request.setAttribute("resultat", form.getResultat());
		session.setAttribute("sessionUtilisateur", utilisateur);
		if (form.getResultat()!=null) {
			this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
		}
		else {
		this.getServletContext().getRequestDispatcher( "/reservation.jsp").forward( request, response );
		}
		}
	}


