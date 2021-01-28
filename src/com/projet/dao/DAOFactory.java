
package com.projet.dao;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
/*
* la mise en place de notre couche de donn�es
* classe qui va �tre en charge de l'instanciation des diff�rents DAO de notre application
*/

/*
* lire les informations de configuration depuis le fichier propertie
charger le driver JDBC du SGBD utilis�
fournir une connexion � la base de donn�es
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
	* M�thode charg�e de r�cup�rer les informations de connexion � la
	base de donn�es, charger le driver JDBC et retourner une instance de la
	Factory nous voulons instancier notre DAOFactory uniquement sous certaines conditions :
    si le fichier dao.properties est accessible ;
    si les donn�es qu'il contient sont valides ;
    si le driver JDBC est bien pr�sent dans l'application.
	*/
	public static DAOFactory getInstance() throws DAOConfigurationException
	{
	/*permettre de g�rer notre fichier de configuration*/
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
	/*chargement des propri�t�s contenues dans le fichier*/
	properties.load( fichierProperties );
	url = properties.getProperty( PROPERTY_URL );
	driver = properties.getProperty( PROPERTY_DRIVER );
	nomUtilisateur = properties.getProperty(PROPERTY_NOM_UTILISATEUR );
	motDePasse = properties.getProperty(PROPERTY_MOT_DE_PASSE );
	System.out.print(driver);
	} 
	catch ( IOException e ) 
	{
	throw new DAOConfigurationException( "format du fichier properties incorrect " + FICHIER_PROPERTIES, e );
	}
	/*les informations lues avec succ�s, nous tentons de charger le driver JDBC dont le nom est pr�cis� dans le fichierdao.properties*/
	try 
	{
	Class.forName("com.mysql.jdbc.Driver");
	} 
	catch ( ClassNotFoundException e ) 
	{
	throw new DAOConfigurationException(e.getMessage(),e );
	}

	DAOFactory instance = new DAOFactory( url, nomUtilisateur,motDePasse );
	return instance;
	}
	/* M�thode charg�e de fournir une connexion � la base de
	donn�es */
	
	public Connection getConnection() throws SQLException 
	{
	return DriverManager.getConnection( url, username, password);
	}
	/*
	M�thodes de r�cup�ration de l'impl�mentation des diff�rents DAO dans application
	qui va permetre que le DAO va pouvoir acqu�rir une connexion � la base de donn�es,
     en appelant sa m�thode getConnection().
	*/
	public Utilisateurdao getUtilisateurDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new UtilisateurDaoImpl( this );
	}
	
	public VilleDao getVilleDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new VilleDaoImpl( this );
	}
	
	public AdminDao getAdminDao()
	{
		/*
		this pour instance de la classe DAOFactory
		*/
	return new VolDAOImpl( this );
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
	
	
	}

