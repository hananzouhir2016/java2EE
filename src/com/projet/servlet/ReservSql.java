package com.projet.servlet;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AeropDAO;
import com.projet.dao.AvionDao;
import com.projet.dao.DAOFactory;
import com.projet.dao.Reservationdao;
import com.projet.dao.Utilisateurdao;
import com.projet.model.Airport;
import com.projet.model.Avion;
import com.projet.model.Reservation;
import com.projet.model.Vol;
import com.projet.service.DetailsV;
import com.projet.service.ReservationSqlService;

/**
 * Servlet implementation class ReservSql
 */
@WebServlet("/ReservSql")
public class ReservSql extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CONF_DAO_FACTORY = "daofactory";
    private  DAOFactory daofactory;
    private Reservationdao  reservdao;
    private Utilisateurdao  userdao;



    public void init() throws ServletException {
        /* Récupération d'une instance de notre DAO Utilisateur */
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
        this.reservdao = daofactory.getReservationDao();
        this.userdao=daofactory.getUtilisateurDao();
    }
	 

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
            
		resp.getWriter().append("Served at: ").append(req.getContextPath());


	

}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("reserversql")==null)
		{		  
			this.getServletContext().getRequestDispatcher("/reservation.jsp").forward(req, resp);
			}
		else
		{
	       try {
	    	   ReservationSqlService form = new ReservationSqlService (reservdao,userdao);
	
	 
	
		      Reservation reservform = form.CreerReserv(req, resp);
		      String msg=form.getMessage();
		      
		   



/* Stockage du formulaire et du bean dans l'objet request*/

req.setAttribute("ATT_FORM" , form );
req.setAttribute("reservform", reservform);
req.setAttribute("msg",msg );
this.getServletContext().getRequestDispatcher("/reservation.jsp").forward(req, resp);


	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	}}}
