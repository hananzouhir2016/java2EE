package com.projet.dao;

import java.sql.*;
import java.util.*;
import static com.projet.dao.DAOUtilitaire2.*;

import com.projet.model.Airport;
import com.projet.model.Reservation;

public class ReservationDaoImpl implements Reservationdao{
	private static final String SQL_SELECT_PAR_CIN = "SELECT * FROM reservation WHERE id_utili = ? && Etatreservation=?";
	private static final String SQL_UPDATE = "UPDATE reservation SET date=?,nbPassagers=? WHERE id=?";
	private static final String SQL_UPDATE2 = "UPDATE reservation SET Etatreservation=? WHERE id=?";
	private static final String SQL_INSERT = "INSERT INTO reservation (id_utili,date,nbPassagers) VALUES (?, ?,?)";

	
	private static DAOFactory daoFactory;
	ReservationDaoImpl( DAOFactory daoFactory ) {
	this.daoFactory = daoFactory;
	}
	public List<Reservation> trouver( int id ,String etat) throws DAOException {
		return trouver( SQL_SELECT_PAR_CIN, id,etat);
		}
	private List<Reservation>trouver( String sql, Object... objets ) throws DAOException {
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
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
	
	
	public void modifier(Reservation reservation) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try 
		{
			
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, SQL_UPDATE,reservation.getDate(),reservation.getNbpassagers(),reservation.getId());
			int statut = preparedStatement.executeUpdate();
			if (statut == 0 ) 
			{
				throw new DAOException( "Échec de la création du client, aucune ligne ajoutée dans la table." );
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
	
	public void annuler(Reservation reservation) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try 
		{
			
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, SQL_UPDATE2,reservation.getEtat(),reservation.getId());
			int statut = preparedStatement.executeUpdate();
			if (statut == 0 ) 
			{
				throw new DAOException( "Échec de la création du client, aucune ligne ajoutée dans la table." );
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
	
	private static Reservation map(ResultSet resultSet ) throws SQLException 
	{
		Reservation reservation = new Reservation();
		reservation.setId(resultSet.getInt("id"));
		reservation.setNbpassagers(resultSet.getInt("nbPassagers"));
		reservation.setDate(resultSet.getDate("date"));
		reservation.setEtat(resultSet.getString("Etatreservation"));
		VolDAO voldao = daoFactory.getVolDAO();
		reservation.setVols( voldao.trouver( resultSet.getInt("Vol_id" )));
	    return reservation;
	}
	@Override
	public void insert(Reservation reservation) throws DAOException {
		
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try 
		{
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT,reservation.getUtilisateur().getId(),reservation.getDate(),reservation.getNbpassagers());
			int statut = preparedStatement.executeUpdate();
			if ( statut == 0 ) 
			{
				throw new DAOException( "Échec de la création du aeroport, aucune ligne ajoutée dans la table." );
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
	
	
	
	
	
	}
