package com.projet.dao;
import com.projet.model.Utilisateur;

public interface Utilisateurdao 
{
	void ajouter( Utilisateur utilisateur ) throws DAOException;
	Utilisateur trouver( String mdp , String email)throws DAOException;
	Utilisateur Chercher(String emaile) throws DAOException ;
	void modifier( Utilisateur utilisateur) throws DAOException;
	Utilisateur chercher(String email) throws DAOException ;
	
	
}
