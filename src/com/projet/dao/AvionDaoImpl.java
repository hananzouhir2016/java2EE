package com.projet.dao;

import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.projet.model.Avion;
import com.projet.model.Reservation;

public class AvionDaoImpl implements AvionDao{
private static final String SQL_SELECT_PAR_ID= "SELECT * FROM avion WHERE id= ?";
	
	
	
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
	private static Avion map(ResultSet resultSet ) throws SQLException 
	{
		Avion avion = new Avion();
		avion.setNom(resultSet.getString("nom"));
		
	    return avion;
	}
}


