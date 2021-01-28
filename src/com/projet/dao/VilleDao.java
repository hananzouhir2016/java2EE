package com.projet.dao;


import java.util.List;


import com.projet.model.Ville;

public interface VilleDao {
	void ajouter( Ville ville ) throws DAOException;
	List<Ville> trouver( String nom)throws DAOException;
	 List<Ville> lister() throws DAOException;
	void supprimer( Ville ville  ) throws DAOException;
	

}
