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

public class AeropDAOImpl implements AeropDAO {
	
	private static final String Sql_V = "SELECT nom FROM Ville";
	private static final String SQL_SELECT_PAR_ID= "SELECT * FROM aeroport WHERE id= ?";
	private static final String SQL_INSERT = "INSERT INTO aeroport (id,nom) VALUES (?, ?)";
	private static final String sql_Trouver="SELECT * FROM aeroport WHERE nom = ? ";
	private static final String sql_Trouver_tout="SELECT * FROM aeroport ORDER BY id ";
	private static final String SQL_DELETE_PAR_ID = "DELETE FROM aeroport WHERE id = ?";
	private static final String sql_Trouver_ID="SELECT id FROM `aeroport` WHERE nom = ?";
	private static final String sql_chercher_id="SELECT * FROM aeroport WHERE nom=? ";
	private static final String sql_select="SELECT nom FROM aeroport";
	private static final String sql_select_aero="SELECT * FROM aeroport WHERE id=?";
	
	
	private DAOFactory daoFactory;
	
	AeropDAOImpl( DAOFactory daoFactory ) 
	{
	this.daoFactory = daoFactory;
	}
	
	
	
	/*--------------------------------------------------------------------------------------------- */
	public void ajouter( Airport aeroport ) throws DAOException 
	{
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	try 
	{
		/* Récupération d'une connexion depuis la Factory */
		connexion = daoFactory.getConnection();
		preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT,aeroport.getId(),aeroport.getNom());
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
	
	/*--------------------------------------------------------------------------------------------- */
	

	public List<Airport> trouver( String nom ) throws DAOException
	{
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		 List<Airport> aeroports = new ArrayList<Airport>();
		 
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
				aeroports.add( map( resultSet ) );
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
		return aeroports;	
	}
	
   
	/*--------------------------------------------------------------------------------------------- */
    public List<Airport> lister() throws DAOException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Airport> aeroports = new ArrayList<Airport>();

        try {
            connection = daoFactory.getConnection();
            preparedStatement = connection.prepareStatement( sql_Trouver_tout );
            resultSet = preparedStatement.executeQuery();
            while ( resultSet.next() ) {
                aeroports.add( map( resultSet ) );
            }
        } catch ( SQLException e ) {
            throw new DAOException( e );
        } finally {
            fermeturesSilencieuses( resultSet, preparedStatement, connection );
        }

        return aeroports;
    }
    
    /*--------------------------------------------------------------------------------------------- */
    
    
	public void supprimer( int id ) throws DAOException {
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
	
	@Override
	public int trouverId(String nom) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int id;
		try {
			
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, sql_Trouver_ID,nom);
			resultSet = preparedStatement.executeQuery();
			
			resultSet.next();
			
			 id=resultSet.getInt(1);
		
			} 
		  catch ( SQLException e )
		   {
			throw new DAOException( e );
			} 
		finally 
		{
			fermeturesSilencieuses( resultSet, preparedStatement,connexion );
	   }
		
		return id;
	}






	
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
			airport.setId(resultSet.getInt( "id" ));
			airport.setNom(resultSet.getString("nom"));
			
		    return airport;
		}
		
		public Airport chercher(String nom) throws DAOException {
			
			Connection connexion=null;
	        PreparedStatement preparedStatement = null;
	        ResultSet resultat = null;
	        
		    Airport airport = new Airport();

		    try {
		        /* Récupération d'une connexion depuis la Factory */
		    	connexion = daoFactory.getConnection();
	    		preparedStatement = initialisationRequetePreparee(connexion,sql_Trouver,nom);
	            resultat = preparedStatement.executeQuery();
		        /* Parcours de la ligne de données de l'éventuel ResulSet retourné */
		        if ( resultat.next() ) {
		        	airport = map( resultat );
		        }
		    } catch ( SQLException e ) {
		        throw new DAOException( e );
		    } finally {
	    		fermeturesSilencieuses(preparedStatement, connexion );
	    		}
	        

		    return airport;
		}

		public List<Airport> selectionner() throws DAOException {
			List<Airport> nom_aero = new ArrayList<Airport>();
			Connection connexion=null;
	        PreparedStatement preparedStatement = null;
	        ResultSet resultat = null;
	       

		    try {
		        /* Récupération d'une connexion depuis la Factory */
		    	connexion = daoFactory.getConnection();
	    		preparedStatement = initialisationRequetePreparee(connexion, sql_select);
	            resultat = preparedStatement.executeQuery();
		        /* Parcours de la ligne de données de l'éventuel ResulSet retourné */
		        while ( resultat.next() ) {
		        	Airport aero=new Airport();
		        	String nom_airport = resultat.getString("nom");
		        	aero.setNom(nom_airport);
		        	nom_aero.add(aero);
		        }
		    } catch ( SQLException e ) {
		        throw new DAOException( e );
		    } finally {
	    		fermeturesSilencieuses(preparedStatement, connexion );
	    		}
	        

		    return nom_aero;
		}

}
