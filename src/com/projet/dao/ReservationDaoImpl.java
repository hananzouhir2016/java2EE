package com.projet.dao;

import java.sql.*;
import java.util.*;
import static com.projet.dao.DAOUtilitaire2.*;

import com.projet.model.Reservation;

public class ReservationDaoImpl implements Reservationdao{
	private static final String SQL_SELECT_PAR_CIN = "SELECT * FROM reservation WHERE cin = ?";
	
	
	
	private static DAOFactory daoFactory;
	ReservationDaoImpl( DAOFactory daoFactory ) {
	this.daoFactory = daoFactory;
	}
	public List<Reservation> trouver( String cin ) throws DAOException {
		return trouver( SQL_SELECT_PAR_CIN, cin);
		}
	private List<Reservation>trouver( String sql, Object... objets ) throws DAOException {
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Reservation reservation = null;
	List<Reservation> reservations = new ArrayList<Reservation>();
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
		reservations.add( map( resultSet ) );
	}
	} catch ( SQLException e ) {
	throw new DAOException( e );
	} 
	finally {
	fermeturesSilencieuses( resultSet, preparedStatement,
	connexion );
	}
	return reservations;
	}
	private static Reservation map(ResultSet resultSet ) throws SQLException 
	{
		Reservation reservation = new Reservation();
		reservation.setNbpassagers(resultSet.getInt("nbPassagers"));
		reservation.setDate(resultSet.getDate("date"));
		reservation.setEtat(resultSet.getString("Etatreservation"));
	    return reservation;
	}
	}
