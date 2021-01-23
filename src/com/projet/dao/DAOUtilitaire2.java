package com.projet.dao;

import java.sql.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public final class DAOUtilitaire2
{
	/* initialiser une requête préparée avec des paramètres */
	/* récupère une liste de paramètres et les ajoute à une requête préparée donnée */
	/* initialiser une requête préparée avec des paramètres */
	public static PreparedStatement initialisationRequetePreparee( Connection connexion, String sql,Object... objets ) throws SQLException 
	{
		/*la connexion, dont nous avons besoin pour appeler la méthode connexion.prepareStatement() ;
		la requête SQL, que nous passons en argument lors de l'appel pour construire l'objet PreparedStatement ;
		un booléen, indiquant s'il faut ou non retourner d'éventuelles valeurs auto-générées. Nous l'utilisons alors directement au
		sein de l'appel à connexion.prepareStatement() grâce à une simple expression ternaire ;
		une succession d'objets... de tailles variables ! Eh oui, là encore nous n'avons aucun moyen d'anticiper et de savoir à
		l'avance combien de paramètres attend notre requête préparée.*/
		
			PreparedStatement preparedStatement =connexion.prepareStatement( sql);
			for ( int i = 0; i < objets.length; i++ ) {
				/*n'aurons ici aucun moyen simple de savoir de quel type est chaque objet. Heureusement, il existe une méthode
				preparedStatement.setObject() qui prend en argument un objet de type Object, et qui s'occupe ensuite derrière
				les rideaux d'effectuer la conversion vers le type SQL du paramètre attendu avant d'envoyer la requête à la base de données.*/
				
			preparedStatement.setObject( i + 1, objets[i] );
			}
			return preparedStatement;
			}
	
	
	
	public static void fermetureSilencieuse( ResultSet resultSet )
	{
		if ( resultSet != null ) {
		try {
		resultSet.close();
		} catch ( SQLException e ) {
		System.out.println( "Échec de la fermeture du ResultSet : " + e.getMessage() );
		}
		}
		}
		/* Fermeture silencieuse du statement */
		public static void fermetureSilencieuse( Statement statement ) {
		if ( statement != null ) {
		try {
		statement.close();
		} 
		catch ( SQLException e ) 
		{
		System.out.println( "Échec de la fermeture du Statement : " + e.getMessage() );
		}
		}
		}
		/* Fermeture silencieuse de la connexion */
		public static void fermetureSilencieuse( Connection connexion )
		{
		if ( connexion != null ) {
		try {
		connexion.close();
		} 
		catch ( SQLException e ) 
		{
		System.out.println( "Échec de la fermeture de la connexion : " + e.getMessage() );
		}
		}
		}
		/* Fermetures silencieuses du statement et de la connexion */
		public static void fermeturesSilencieuses( Statement statement,Connection connexion ) {
		fermetureSilencieuse( statement );
		fermetureSilencieuse( connexion );
		}
		/* Fermetures silencieuses du resultset, du statement et de la
		connexion */
		public static void fermeturesSilencieuses( ResultSet resultSet,Statement statement, Connection connexion ) 
		{
		fermetureSilencieuse( resultSet );
		fermetureSilencieuse( statement );
		fermetureSilencieuse( connexion );
		}
}
