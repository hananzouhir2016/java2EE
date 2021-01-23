package com.projet.dao;

import com.projet.model.Utilisateur;

public interface Utilisateurdao 
{
	void ajouter( Utilisateur utilisateur ) throws DAOException;
	Utilisateur trouver( String mdp , String email )throws DAOException;
	void supprimer( Utilisateur utilisateur ) throws DAOException;
	void modifier( Utilisateur utilisateur ) throws DAOException;
}
