package com.projet.dao;

import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.projet.model.Airport;
import com.projet.model.Avion;
import com.projet.model.Vol;

public class AeropDAOImpl implements AeropDAO {
	
	private static final String Sql_V = "SELECT nom FROM Ville";
	private static final String SQL_INSERT = "INSERT INTO Aeroport (vil_id, nom) VALUES (?, ?)";
	private static final String SQL_SELECT_PAR_ID= "SELECT * FROM aeroport WHERE id= ?";
	private DAOFactory daoFactory;
	
	AeropDAOImpl( DAOFactory daoFactory ) 
	{
	this.daoFactory = daoFactory;
	}
	
	
	

	@Override
	public void ajouter(Airport airport) throws DAOException {
		
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try 
		{
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT);
			int statut = preparedStatement.executeUpdate();
			if ( statut == 0 ) 
			{
				throw new DAOException( "Echec de la creation d'aeroport" );
			}
		}
		catch ( SQLException e ) 
		{
			throw new DAOException( e );
		}
		finally {
			fermeturesSilencieuses(preparedStatement, connexion );
			}
		
		
	}

	@Override
	public void supprimer(Airport airport) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifier(Airport airport) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Airport> rechercher() throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public Airport trouver(int id) throws DAOException {
		return trouver( SQL_SELECT_PAR_ID, id);
	}

	private Airport trouver( String sql, Object... objets ) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Airport airport= new Airport();
		
		try {
		/* Récupération d'une connexion depuis la Factory */
		connexion = daoFactory.getConnection();
		/*
		* Préparation de la requête avec les objets passés en arguments
		* (ici, uniquement un id) et exécution.
		*/
		preparedStatement = initialisationRequetePreparee(connexion, sql, objets );
		resultSet = preparedStatement.executeQuery();
		/* Parcours de la ligne de données retournée dans le
		ResultSet */
		while ( resultSet.next() ) {
			airport=( map( resultSet));
		}
		} catch ( SQLException e ) {
		throw new DAOException( e );
		} 
		finally {
		fermeturesSilencieuses( resultSet, preparedStatement,
		connexion );
		}
		return airport;
		}
		private static Airport map(ResultSet resultSet ) throws SQLException 
		{
			Airport airport = new Airport();
			airport.setNom(resultSet.getString("nom"));
			
		    return airport;
		}
}
