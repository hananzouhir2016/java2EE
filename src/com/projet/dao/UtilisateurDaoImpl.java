package com.projet.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.projet.model.Utilisateur;

public class UtilisateurDaoImpl implements Utilisateurdao 
{
	private static final String SQL_INSERT = "INSERT INTO Client (nom, prenom, adresse, telephone, email, image) VALUES (?, ?,?, ?, ?, ?)";
	private DAOFactory daoFactory;
	UtilisateurDaoImpl( DAOFactory daoFactory ) 
	{
	this.daoFactory = daoFactory;
	}
	/* Implémentation de la méthode définie dans l'interface
	ClientDao */
	
	public void ajouter( Utilisateur utilisateur ) throws DAOException 
	{
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	ResultSet valeursAutoGenerees = null;
	}
}
	
	
	
	