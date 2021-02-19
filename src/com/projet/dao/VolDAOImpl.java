package com.projet.dao;





import com.projet.model.Vol;

import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public  class VolDAOImpl implements VolDAO {

	
	private static final String sql_Lister=" SELECT vol.*, avion.nom as nomAv, j1.nom as nomAerD, j2.nom as nomAerA FROM vol INNER JOIN avion ON `vol`.`Avi_id` = `avion`.`id` INNER JOIN aeroport AS j1 ON `vol`.`Aer_id` = `J1`.`id` INNER JOIN aeroport AS j2 ON `vol`.`Aer_id2` = `J2`.`id` ";
	private static final String sql_Trouver=" SELECT vol.*, avion.nom as nomAv, j1.nom as nomAerD, j2.nom as nomAerA FROM vol INNER JOIN avion ON `vol`.`Avi_id` = `avion`.`id` INNER JOIN aeroport AS j1 ON `vol`.`Aer_id` = `J1`.`id` INNER JOIN aeroport AS j2 ON `vol`.`Aer_id2` = `J2`.`id` WHERE vol.id= ?";
	
	private static final String SQL_INSERT = "INSERT INTO vol (dateDepart,dateArrivee,heureDepart,heureArrivee,prix,duree,Avi_id,Aer_id,Aer_id2) VALUES (?,?,?,?,?,?,?,?,?)";
	private static final String SQL_DELETE_PAR_ID = "DELETE FROM vol WHERE id = ?";
	
	private static final String SQL_UPDATE2 = "UPDATE vol SET etat=? WHERE id=?";
	private static final String SQL_UPDATE = "UPDATE vol SET dateDepart=?,dateArrivee=?,heureDepart=?,heureArrivee=?,prix=?,duree=?,Avi_id=?,Aer_id=?,Aer_id2=?,etat=? WHERE id=?";
	private DAOFactory daoFactory;
	
	VolDAOImpl( DAOFactory daoFactory ) 
			{
			this.daoFactory = daoFactory;
			}
	
	/*--------------------------------------requete lister ------------------------------------------------------- */
						public List<Vol> lister() throws DAOException {
							 Connection connection = null;
						        PreparedStatement preparedStatement = null;
						        ResultSet resultSet = null;
						        List<Vol> vol = new ArrayList<Vol>();
						
						        try {
						            connection = daoFactory.getConnection();
						            preparedStatement = connection.prepareStatement( sql_Lister );
						            resultSet = preparedStatement.executeQuery();
						            while ( resultSet.next() ) {
						                vol.add( map( resultSet ) );
						            }
						        } catch ( SQLException e ) {
						            throw new DAOException( e );
						        } finally {
						            fermeturesSilencieuses( resultSet, preparedStatement, connection );
						        }
						
						        return vol;
					    }
	
	/*--------------------------------------requete pour annuler ------------------------------------------------------- */
	@Override
	public void annuler(String etat,int id) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try 
		{
			
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			preparedStatement = initialisationRequetePreparee(connexion, SQL_UPDATE2,etat,id);
			int statut = preparedStatement.executeUpdate();
			if (statut == 0 ) 
			{
				throw new DAOException( "Échec de l'annulation du vol." );
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

	/*--------------------------------------requete DELETE pour suppr ------------------------------------------------------- */
	@Override
	public void supprimer(int id) throws DAOException {
		Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion, SQL_DELETE_PAR_ID,id );
            int statut = preparedStatement.executeUpdate();
            if ( statut == 0 ) {
                throw new DAOException( "Échec de la suppression du Vol." );
            } 
        } catch ( SQLException e ) {
            throw new DAOException( e );
        } finally {
            fermeturesSilencieuses( preparedStatement, connexion );
        }
	}

	/*--------------------------------------requete Modifier ------------------------------------------------------- */
	@Override
	public void modifier(Vol vol) throws DAOException {
		
		Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee( connexion,SQL_UPDATE,vol.getDateDepart(),vol.getDateArrivee(),vol.getHeureDepart(),vol.getHeureArrivee(),vol.getPrix(),vol.getDuree(),vol.getAvionid(),vol.getAerDid(),vol.getAerAid(),vol.getEtat(),vol.getId());
            int statut = preparedStatement.executeUpdate();
            if ( statut == 0 ) {
                throw new DAOException( "Échec de la modification du Vol" );
            } 
        } catch ( SQLException e ) {
            throw new DAOException( e );
        } finally {
            fermeturesSilencieuses( preparedStatement, connexion );
        }
		
	}

	

	

	
	
	/*--------------------------------------requete Ajouter ------------------------------------------------------- */
	@Override
	public void ajouter(Vol vol) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try 
			{
				
				connexion = daoFactory.getConnection();
				preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT,vol.getDateDepart(),vol.getDateArrivee(),vol.getHeureDepart(),vol.getHeureArrivee(),vol.getPrix(),vol.getDuree(),vol.getAvionid(),vol.getAerAid(),vol.getAerDid());
				int statut = preparedStatement.executeUpdate();
				if ( statut == 0 ) 
					{
						throw new DAOException( "échec de la création du Vol." );
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
	
	/*--------------------------------------requete chercher ------------------------------------------------------- */
	@Override
	public List<Vol> chercher(int idS) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		 List<Vol> vol = new ArrayList<Vol>();
		 
		try {
			
			connexion = daoFactory.getConnection();
			 
			preparedStatement = initialisationRequetePreparee(connexion, sql_Trouver,idS);
			resultSet = preparedStatement.executeQuery();
			
			while ( resultSet.next() ) 
			{
				vol.add( map( resultSet ) );
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
		return vol;
	}
	
	public Vol search(int id) throws DAOException {
		Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Vol vol = new Vol();

        try {
            connection = daoFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connection, sql_Trouver,id);
           
            resultSet = preparedStatement.executeQuery();
            while ( resultSet.next() ) {
                vol= map( resultSet ) ;
            }
        } catch ( SQLException e ) {
            throw new DAOException( e );
        } finally {
            fermeturesSilencieuses( resultSet, preparedStatement, connection );
        }

        return vol;
		
	}
	
	private static Vol map( ResultSet resultSet ) throws SQLException {
		Vol vol = new Vol();
		
		vol.setId(resultSet.getInt( "id" ));
		vol.setAvi_id( resultSet.getString( "nomAv" ) );
						
		vol.setAer_id( resultSet.getString( "nomAerD" ) );
		vol.setAer_id2( resultSet.getString( "nomAerA" ) );
		
		
		vol.setDateArrivee( resultSet.getDate( "dateArrivee" ) );
		vol.setDateDepart( resultSet.getDate( "dateDepart" ) );
		
		vol.setHeureDepart( resultSet.getString( "heureDepart" ) );
		vol.setHeureArrivee( resultSet.getString( "heureArrivee" ) );
		vol.setPrix( resultSet.getDouble( "prix" ) );
		vol.setNbPlaceReserve( resultSet.getInt( "nbPlaceReserve" ) );
		vol.setDuree( resultSet.getInt( "duree" ) );
		
		vol.setEtat(resultSet.getString( "etat" ));
		
		vol.setAerAid(resultSet.getInt( "Aer_id" ));
		vol.setAerDid(resultSet.getInt( "Aer_id2" ));
		vol.setAvionid(resultSet.getInt( "Avi_id" ));
		return vol;
		}
	
	
}
