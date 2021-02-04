package com.projet.dao;

import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DashboardDaoImpl  implements DashboarsDao{
	
	private DAOFactory daoFactory;
	
	public DashboardDaoImpl(DAOFactory daoFactory) {
		this.daoFactory = daoFactory;
	}
	
	
	private static final String sql_Jan="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-01-01') AND ('2021-02-01') ";
	private static final String sql_Fev="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-02-01') AND ('2021-03-01')";
	private static final String sql_Mar="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-03-01') AND ('2021-04-01')";
	private static final String sql_Avr="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-04-01') AND ('2021-05-01')";
	private static final String sql_Mai="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-05-01') AND ('2021-06-01')";
	private static final String sql_Jun="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-06-01') AND ('2021-07-01')";
	private static final String sql_Juil="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-07-01') AND ('2021-08-01')";
	private static final String sql_Aout="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-08-01') AND ('2021-09-01')";
	private static final String sql_Sep="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-09-01') AND ('2021-10-01')";
	private static final String sql_Oct="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-10-01') AND ('2021-11-01')";
	private static final String sql_Nov="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-11-01') AND ('2021-12-01')";
	private static final String sql_Desc="SELECT COUNT(*) FROM reservation WHERE date BETWEEN ('2021-12-01') AND ('2021-01-01')";
	
	private static final String sql_JanV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-01-01') AND ('2021-02-01') ";
	private static final String sql_FevV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-02-01') AND ('2021-03-01')";
	private static final String sql_MarV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-03-01') AND ('2021-04-01')";
	private static final String sql_AvrV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-04-01') AND ('2021-05-01')";
	private static final String sql_MaiV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-05-01') AND ('2021-06-01')";
	private static final String sql_JunV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-06-01') AND ('2021-07-01')";
	private static final String sql_JuilV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-07-01') AND ('2021-08-01')";
	private static final String sql_AoutV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-08-01') AND ('2021-09-01')";
	private static final String sql_SepV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-09-01') AND ('2021-10-01')";
	private static final String sql_OctV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-10-01') AND ('2021-11-01')";
	private static final String sql_NovV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-11-01') AND ('2021-12-01')";
	private static final String sql_DescV="SELECT COUNT(*) FROM vol WHERE dateDepart BETWEEN ('2021-12-01') AND ('2021-01-01')";
	
	
	private static final String sql_Res="SELECT COUNT(*) FROM reservation ";
	private static final String sql_Utl="SELECT COUNT(*) FROM utilisateur";
	private static final String sql_Vol="SELECT COUNT(*) FROM vol ";
	
	private static final String sql_Ae="SELECT COUNT(*) FROM aeroport ";
	private static final String sql_Av="SELECT COUNT(*) FROM avion ";
	
	

	@Override
	public int nbReservationJan() throws DAOException {
	
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Jan);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationFev() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Fev);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationMars() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Mar);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationAvr() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Avr);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationMai() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Mai);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationJuin() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Jun);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationJuil() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Juil);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
	
		return nb;
	}

	@Override
	public int nbReservationAout() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Aout);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationSep() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Sep);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationNov() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Nov);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationOct() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Oct);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservationDec() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Desc);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}


	
	
	
	
	/*------------------------------------------------------------------------------*/
	@Override
	public int nbVolJan() throws DAOException {
	
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_JanV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolFev() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_FevV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolMars() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_MarV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolAvr() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_AvrV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolMai() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_MaiV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolJuin() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_JunV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolJuil() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_JuilV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
	
		return nb;
	}

	@Override
	public int nbVolAout() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_AoutV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolSep() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_SepV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolNov() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_NovV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolOct() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_OctV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVolDec() throws DAOException {

		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_DescV);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}
	
	
/*--------------------------------------------------------------*/
	@Override
	public int nbUtulisateur() throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Utl);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbVole() throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Vol);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbReservation() throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Res);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbAeroport() throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Ae);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}

	@Override
	public int nbAvion() throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int nb;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Av);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 nb=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return nb;
	}
}
