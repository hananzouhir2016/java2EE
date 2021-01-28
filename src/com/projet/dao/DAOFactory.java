
package com.projet.dao;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
/*
* la mise en place de notre couche de données
* classe qui va être en charge de l'instanciation des différents DAO de notre application
*/

/*
* lire les informations de configuration depuis le fichier propertie
charger le driver JDBC du SGBD utilisé
fournir une connexion à la base de données
*/
public class DAOFactory 
{
	
	private static final String FICHIER_PROPERTIES ="/com/projet/config/dao.properties";
	private static final String PROPERTY_URL = "url";
	private static final String PROPERTY_DRIVER = "driver";
	private static final String PROPERTY_NOM_UTILISATEUR ="nomutilisateur";
	private static final String PROPERTY_MOT_DE_PASSE ="motdepasse";
	private String url;
	private String username;
	private String password;
	DAOFactory( String url, String username, String password ) 
	{
	this.url = url;
	this.username = username;
	this.password = password;
	}
	/*
	* Méthode chargée de récupérer les informations de connexion à la
	base de données, charger le driver JDBC et retourner une instance de la
	Factory nous voulons instancier notre DAOFactory uniquement sous certaines conditions :
    si le fichier dao.properties est accessible ;
    si les données qu'il contient sont valides ;
    si le driver JDBC est bien présent dans l'application.
	*/
	public static DAOFactory getInstance() throws DAOConfigurationException
	{
	/*permettre de gérer notre fichier de configuration*/
	Properties properties = new Properties();
	String url;
	String driver;
	String nomUtilisateur;
	String motDePasse;
	
	/*l'ouverture du fichier dao.properties*/
	ClassLoader classLoader =Thread.currentThread().getContextClassLoader();
	InputStream fichierProperties =classLoader.getResourceAsStream( FICHIER_PROPERTIES );
	if ( fichierProperties == null ) 
	{
	throw new DAOConfigurationException( "Le fichier properties " + FICHIER_PROPERTIES + " est introuvable." );
	}
	try 
	{
	/*chargement des propriétés contenues dans le fichier*/
	properties.load( fichierProperties );
	url = properties.getProperty( PROPERTY_URL );
	driver = properties.getProperty( PROPERTY_DRIVER );
	nomUtilisateur = properties.getProperty(PROPERTY_NOM_UTILISATEUR );
	motDePasse = properties.getProperty(PROPERTY_MOT_DE_PASSE );
	
	} 
	catch ( IOException e ) 
	{
	throw new DAOConfigurationException( "format du fichier properties incorrect " + FICHIER_PROPERTIES, e );
	}
	/*les informations lues avec succès, nous tentons de charger le driver JDBC dont le nom est précisé dans le fichierdao.properties*/
	try 
	{
	Class.forName(driver);
	} 
	catch ( ClassNotFoundException e ) 
	{
	throw new DAOConfigurationException(e.getMessage(),e );
	}

	DAOFactory instance = new DAOFactory( url, nomUtilisateur,motDePasse );
	return instance;
	}
	/* Méthode chargée de fournir une connexion à la base de
	données */
	
	public Connection getConnection() throws SQLException 
	{
	return DriverManager.getConnection( url, username, password);
	}
	/*
	Méthodes de récupération de l'implémentation des différents DAO dans application
	qui va permetre que le DAO va pouvoir acquérir une connexion à la base de données,
     en appelant sa méthode getConnection().
	*/
	public Utilisateurdao getUtilisateurDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new UtilisateurDaoImpl( this );
	}
	public 	Reservationdao 	getReservationDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new ReservationDaoImpl( this );
	}
	public VolDAO getVolDAO()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new VolDAOImpl( this );
	}
	public AeropDAO getAeropDAO()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new AeropDAOImpl( this );
	}
	
	public 	VilleDao 	getVilleDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new VilleDaoImpl( this );
	}
	public 	AdminDao 	getAdminDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new AdminDaoImpl( this );
	}
	}

