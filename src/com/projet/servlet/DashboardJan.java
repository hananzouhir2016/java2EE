package com.projet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.dao.AdminDao;
import com.projet.dao.DAOFactory;
import com.projet.dao.DashboarsDao;

/**
 * Servlet implementation class DashboardJan
 */
@WebServlet("/DashboardJ")
public class DashboardJan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardJan() {
        super();
       
    }
    
    private  DAOFactory daofactory;
    public static final String CONF_DAO_FACTORY= "daofactory";
    private DashboarsDao dashboarddao;
    public static final String VUE = "/dashboard.jsp";
    
    
    public void init() throws ServletException {
		this.daofactory= (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY );
		this.dashboarddao=daofactory.getDashborsDao();
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("jan",dashboarddao.nbReservationJan() );
		request.setAttribute("fev",dashboarddao.nbReservationFev() );
		request.setAttribute("mar",dashboarddao.nbReservationMars() );
		request.setAttribute("avr",dashboarddao.nbReservationAvr() );
		request.setAttribute("mai",dashboarddao.nbReservationMai() );
		request.setAttribute("jun",dashboarddao.nbReservationJuin() );
		request.setAttribute("juil",dashboarddao.nbReservationJuil() );
		request.setAttribute("aout",dashboarddao.nbReservationAout() );
		request.setAttribute("sep",dashboarddao.nbReservationSep() );
		request.setAttribute("oct",dashboarddao.nbReservationOct() );
		request.setAttribute("nov",dashboarddao.nbReservationNov() );
		request.setAttribute("dec",dashboarddao.nbReservationDec() );
		
		request.setAttribute("janV",dashboarddao.nbVolJan() );
		request.setAttribute("fevV",dashboarddao.nbVolFev() );
		request.setAttribute("marV",dashboarddao.nbVolMars() );
		request.setAttribute("avrV",dashboarddao.nbVolAvr() );
		request.setAttribute("maiV",dashboarddao.nbVolMai() );
		request.setAttribute("junV",dashboarddao.nbVolJuin() );
		request.setAttribute("juilV",dashboarddao.nbVolJuil() );
		request.setAttribute("aoutV",dashboarddao.nbVolAout() );
		request.setAttribute("sepV",dashboarddao.nbVolSep() );
		request.setAttribute("octV",dashboarddao.nbVolOct() );
		request.setAttribute("novV",dashboarddao.nbVolNov() );
		request.setAttribute("decV",dashboarddao.nbVolDec() );
		
		
		
		request.setAttribute("nbR",dashboarddao.nbReservation() );
		request.setAttribute("nbV",dashboarddao.nbVole() );
		request.setAttribute("nbU",dashboarddao.nbUtulisateur() );
		
		request.setAttribute("nbAe",dashboarddao.nbAeroport() );
		request.setAttribute("nbAv",dashboarddao.nbAvion() );
		
		
		
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
