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
import com.projet.model.Ville;

public class VilleDaoImpl implements VilleDao {
	
	private static final String SQL_INSERT = "INSERT INTO ville (id,nom) VALUES (?, ?)";
	private static final String sql_Trouver="SELECT * FROM ville WHERE nom = ? ";
	private static final String sql_Trouver_tout="SELECT * FROM ville ORDER BY id ";
	private static final String SQL_DELETE_PAR_ID = "DELETE FROM ville WHERE id = ?";
	
	private DAOFactory daoFactory;
	
	VilleDaoImpl( DAOFactory daoFactory ) 
	{
	this.daoFactory = daoFactory;
	}
	
	
	/*--------------------------------------------------------------------------------------------- */
	public void ajouter( Ville ville ) throws DAOException 
	{
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	try 
	{
		/* Récupération d'une connexion depuis la Factory */
		connexion = daoFactory.getConnection();
		preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT,ville.getId(),ville.getNom());
		int statut = preparedStatement.executeUpdate();
		if ( statut == 0 ) 
		{
			throw new DAOException( "Échec de la création du ville, aucune ligne ajoutée dans la table." );
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
	
	public List<Ville> trouver( String nom ) throws DAOException
	{
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		 List<Ville> villes = new ArrayList<Ville>();
		 
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
				villes.add( map( resultSet ) );
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
		return villes;	
	}
	
   
	/*--------------------------------------------------------------------------------------------- */
    public List<Ville> lister() throws DAOException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Ville> villes = new ArrayList<Ville>();

        try {
            connection = daoFactory.getConnection();
            preparedStatement = connection.prepareStatement( sql_Trouver_tout );
            resultSet = preparedStatement.executeQuery();
            while ( resultSet.next() ) {
                villes.add( map( resultSet ) );
            }
        } catch ( SQLException e ) {
            throw new DAOException( e );
        } finally {
            fermeturesSilencieuses( resultSet, preparedStatement, connection );
        }

        return villes;
    }
    
    /*--------------------------------------------------------------------------------------------- */
    
    
	public void supprimer( Ville ville ) throws DAOException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion, SQL_DELETE_PAR_ID, true, ville.getId() );
            int statut = preparedStatement.executeUpdate();
            if ( statut == 0 ) {
                throw new DAOException( "Échec de la suppression du client, aucune ligne supprimée de la table." );
            } else {
                ville.setId((Long) null);
            }
        } catch ( SQLException e ) {
            throw new DAOException( e );
        } finally {
            fermeturesSilencieuses( preparedStatement, connexion );
        }
    }
	
	private static Ville map( ResultSet resultSet ) throws SQLException {
	Ville ville = new Ville();
	ville.setId(resultSet.getLong( "id" ));
	ville.setNom( resultSet.getString( "nom" ) );
	//System.out.print(ville.getNom());
	return ville;
	}

}
