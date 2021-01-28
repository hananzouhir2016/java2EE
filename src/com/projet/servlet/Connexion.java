package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.projet.dao.DAOFactory;
import com.projet.dao.Reservationdao;
import com.projet.dao.Utilisateurdao;
import com.projet.model.Utilisateur;
import com.projet.service.UtilisateurService;
import com.projet.service.VerificationDonnée;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static final String CONF_DAO_FACTORY= "daofactory";
	public static final String ATT_CLIENT = "utilisateur";
	public static final String ATT_FORM = "form";
	private Utilisateurdao utilisateurdao;
	private Reservationdao reservationdao;
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
		this.reservationdao=daofactory.getReservationDao();
		
		}
     public void doGet( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
		{
		/* Affichage de la page d'inscription */
		this.getServletContext().getRequestDispatcher("/Connection.jsp").forward( request, response );
		}

    public void doPost( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
	{	
	/* Affichage de la page d'inscription */
    	UtilisateurService form = new UtilisateurService (utilisateurdao);
    	
		/* Traitement de la requête et récupération du bean en résultant */
    	
		Utilisateur utilisateur = form.connecterUtilisateur( request);		
		/* Stockage du formulaire et du bean dans l'objet request*/
		
		HttpSession session = request.getSession();
		request.setAttribute(ATT_FORM , form );
		request.setAttribute(ATT_CLIENT, utilisateur );
		session.setAttribute("sessionUtilisateur", utilisateur);
		if(utilisateur!=null) 
		{
		session.setAttribute("sessionUtilisateur", utilisateur);
	    this.getServletContext().getRequestDispatcher("/utilisateur.jsp").forward( request, response );
		}
		else {
			 this.getServletContext().getRequestDispatcher("/Connection.jsp").forward( request, response );
		}
		}	
}
