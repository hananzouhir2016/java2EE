package com.projet.dao;

import java.util.List;

import com.projet.model.Avion;

public interface Aviondao {
	
	void ajouter( Avion avion ) throws DAOException;
	void modifier( Avion avion) throws DAOException;
	List<Avion> trouver( String nom)throws DAOException;
	 List<Avion> lister() throws DAOException;
	 void supprimer( int id  ) throws DAOException;
	  int trouverId(String nom) throws DAOException;
	  Avion chercher(int id) throws DAOException;
	 
}
