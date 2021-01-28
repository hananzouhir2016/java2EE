package com.projet.dao;

import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.projet.model.Airport;

public class AeropDAOImpl implements AeropDAO {
	
	private static final String Sql_V = "SELECT nom FROM Ville";
	private static final String SQL_INSERT = "INSERT INTO Aeroport (vil_id, nom) VALUES (?, ?)";
	
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

}
