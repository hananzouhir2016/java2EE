package com.projet.dao;

import java.util.List;

import com.projet.model.Utilisateur;



public interface AdminDao {
	void ajouter( Utilisateur utilisateur ) throws DAOException;
	 List<Utilisateur> trouver( String nom)throws DAOException;
	 List<Utilisateur> lister() throws DAOException;
	 void supprimer( int id ) throws DAOException;
}
