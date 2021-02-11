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
import com.projet.model.Reservation;

public class AvionDaoImpl implements AvionDao{
private static final String SQL_SELECT_PAR_ID= "SELECT * FROM avion WHERE id= ?";
private static final String sql_Trouver="SELECT * FROM avion WHERE nom = ? ";

	
	
	
	private static DAOFactory daoFactory;
	AvionDaoImpl ( DAOFactory daoFactory ) {
	this.daoFactory = daoFactory;
	}
	public Avion trouver(int id) throws DAOException {
		return trouver( SQL_SELECT_PAR_ID, id);
		}
	
	private Avion trouver( String sql, Object... objets ) throws DAOException {
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Avion avion = null;
	
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
		avion= map( resultSet);
	}
	} catch ( SQLException e ) {
	throw new DAOException( e );
	} 
	finally {
	fermeturesSilencieuses( resultSet, preparedStatement,
	connexion );
	}
	return avion;
	}
	
	public Avion chercher(String nom) throws DAOException {
		
		Connection connexion=null;
        PreparedStatement preparedStatement = null;
        ResultSet resultat = null;
        
	    Avion avion = new Avion();

	    try {
	        /* Récupération d'une connexion depuis la Factory */
	    	connexion = daoFactory.getConnection();
    		preparedStatement = initialisationRequetePreparee(connexion,sql_Trouver,nom);
            resultat = preparedStatement.executeQuery();
	        /* Parcours de la ligne de données de l'éventuel ResulSet retourné */
	        if ( resultat.next() ) {
	        	avion = map( resultat );
	        }
	    } catch ( SQLException e ) {
	        throw new DAOException( e );
	    } finally {
    		fermeturesSilencieuses(preparedStatement, connexion );
    		}
        

	    return avion;
	}
	
	
	

	private static Avion map(ResultSet resultSet ) throws SQLException 
	{
		Avion avion = new Avion();
		avion.setNom(resultSet.getString("nom"));
		avion.setId(resultSet.getInt("id"));

		
	    return avion;
	}
}


