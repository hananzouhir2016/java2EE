package com.projet.dao;

import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.projet.model.Utilisateur;

public class AdminDaoImpl implements AdminDao {

	
	private DAOFactory daoFactory;
	
	private static final String SQL_INSERT = "INSERT INTO utilisateur (id,nom,prenom,mdp,telephone,email,profil) VALUES (?,?,?,?,?,?,?)";
	private static final String sql_Trouver="SELECT * FROM utilisateur WHERE nom like ? and profil = 'admin' ";
	private static final String sql_Trouver_tout="SELECT * FROM utilisateur WHERE profil = 'admin' ";
	private static final String SQL_DELETE_PAR_ID = "DELETE FROM utilisateur WHERE id = ?";
	
	
	public AdminDaoImpl(DAOFactory daoFactory) {
		this.daoFactory = daoFactory;
	}
	/*--------------------------------------------------------------------------------------------- */
	@Override
	public void ajouter(Utilisateur utilisateur) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try 
		{
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT,utilisateur.getId(),utilisateur.getNom(),utilisateur.getPrenom(),utilisateur.getMdp(),utilisateur.getTelephone(),utilisateur.getEmail(),"admin");
			int statut = preparedStatement.executeUpdate();
			if ( statut == 0 ) 
			{
				throw new DAOException( "Échec de la création de l utilisateur, aucune ligne ajoutée dans la table." );
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

	/*--------------------------------------------------------------------------------------------- */
	@Override
	public List<Utilisateur> trouver(String nom) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		
		 List<Utilisateur> admins = new ArrayList<Utilisateur>();
		
		try {
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			/*
			* Préparation de la requête avec les objets passés en arguments
			* (ici, uniquement un id) et exécution.
			*/
			preparedStatement = initialisationRequetePreparee(connexion, sql_Trouver,nom);
			resultSet = preparedStatement.executeQuery();
			/* Parcours de la ligne de données retournée dans le
			ResultSet */
			while ( resultSet.next() ) 
			{
				 admins.add( map( resultSet ) );
			}
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		return admins;
		
	}
	
	/*--------------------------------------------------------------------------------------------- */

	@Override
	public List<Utilisateur> lister() throws DAOException {
		 Connection connection = null;
	        PreparedStatement preparedStatement = null;
	        ResultSet resultSet = null;
	        List<Utilisateur> admins = new ArrayList<Utilisateur>();

	        try {
	            connection = daoFactory.getConnection();
	            preparedStatement = connection.prepareStatement( sql_Trouver_tout );
	            resultSet = preparedStatement.executeQuery();
	            while ( resultSet.next() ) {
	                admins.add( map( resultSet ) );
	            }
	        } catch ( SQLException e ) {
	            throw new DAOException( e );
	        } finally {
	            fermeturesSilencieuses( resultSet, preparedStatement, connection );
	        }

	        
		return admins;
	}

	/*--------------------------------------------------------------------------------------------- */
	@Override
	public void supprimer(int id) throws DAOException {
		 Connection connexion = null;
	        PreparedStatement preparedStatement = null;

	        try {
	            connexion = daoFactory.getConnection();
	            preparedStatement = initialisationRequetePreparee( connexion, SQL_DELETE_PAR_ID,id );
	            int statut = preparedStatement.executeUpdate();
	            if ( statut == 0 ) {
	                throw new DAOException( "Échec de la suppression du client, aucune ligne supprimée de la table." );
	            } 
	        } catch ( SQLException e ) {
	            throw new DAOException( e );
	        } finally {
	            fermeturesSilencieuses( preparedStatement, connexion );
	        }
		
	}
	
	
	private static Utilisateur map( ResultSet resultSet ) throws SQLException {
		Utilisateur admin = new Utilisateur();
		admin.setId(resultSet.getInt( "id" ));
		admin.setNom( resultSet.getString( "nom" ) );
		admin.setPrenom( resultSet.getString( "prenom" ) );
		admin.setCin( resultSet.getString( "cin" ) );
		admin.setTelephone( resultSet.getString( "telephone" ) );
		admin.setMdp( resultSet.getString( "mdp" ) );
		admin.setEmail( resultSet.getString( "email" ) );
		//System.out.print(ville.getNom());
		return admin;
		}
	

}