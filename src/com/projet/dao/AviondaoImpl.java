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
import com.projet.model.Ville;


public class AviondaoImpl implements Aviondao {
	
	private static final String sql_Lister="SELECT * FROM avion ORDER BY dateEntree ";
	private static final String SQL_INSERT = "INSERT INTO avion (reference,nom,nbPlace) VALUES (?, ?,?)";
	private static final String sql_Trouver="SELECT * FROM avion WHERE nom = ? ";
	
	
	private DAOFactory daoFactory;
	
	AviondaoImpl( DAOFactory daoFactory ) 
	{
	this.daoFactory = daoFactory;
	}
	/*--------------------------------------requete lister ------------------------------------------------------- */
						public List<Avion> lister() throws DAOException {
					        Connection connection = null;
					        PreparedStatement preparedStatement = null;
					        ResultSet resultSet = null;
					        List<Avion> avion = new ArrayList<Avion>();
					
					        try {
					            connection = daoFactory.getConnection();
					            preparedStatement = connection.prepareStatement( sql_Lister );
					            resultSet = preparedStatement.executeQuery();
					            while ( resultSet.next() ) {
					                avion.add( map( resultSet ) );
					            }
					        } catch ( SQLException e ) {
					            throw new DAOException( e );
					        } finally {
					            fermeturesSilencieuses( resultSet, preparedStatement, connection );
					        }
					
					        return avion;
					    }
						
		/*--------------------------------------requete insert ------------------------------------------------------- */
			@Override
			public void ajouter(Avion avion) throws DAOException 
				{
					Connection connexion = null;
					PreparedStatement preparedStatement = null;
					try 
						{
							
							connexion = daoFactory.getConnection();
							preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT,avion.getReference(),avion.getNom(),avion.getNbPlace());
							int statut = preparedStatement.executeUpdate();
							if ( statut == 0 ) 
								{
									throw new DAOException( "échec de la création d'avion." );
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
			public void modifier(Avion avion) throws DAOException {
				// TODO Auto-generated method stub
				
			}
			
			/*--------------------------------------requete chercher ------------------------------------------------------- */
			@Override
			public List<Avion> trouver(String nom) throws DAOException 
					{
						Connection connexion = null;
						PreparedStatement preparedStatement = null;
						ResultSet resultSet = null;
						
						 List<Avion> avion = new ArrayList<Avion>();
						 
						try {
							
							connexion = daoFactory.getConnection();
							preparedStatement = initialisationRequetePreparee(connexion, sql_Trouver,nom);
							resultSet = preparedStatement.executeQuery();
							
							while ( resultSet.next() ) 
							{
								avion.add( map( resultSet ) );
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
						return avion;
					}
			@Override
			public void supprimer(Avion avion) throws DAOException {
				// TODO Auto-generated method stub
				
			}

			
			private static Avion map( ResultSet resultSet ) throws SQLException {
				Avion avion = new Avion();
				avion.setId(resultSet.getInt( "id" ));
				avion.setNom( resultSet.getString( "nom" ) );
				avion.setReference( resultSet.getString( "reference" ) );
				avion.setDateEntree( resultSet.getDate( "dateEntree" ) );
				avion.setNbPlace( resultSet.getInt( "nbPlace" ) );
				
				return avion;
				}
}
