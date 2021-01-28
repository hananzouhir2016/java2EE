package com.projet.dao;

import java.util.List;

import com.projet.model.Airport;

public interface AeropDAO {
	
	void ajouter( Airport airport ) throws DAOException;
	
	void supprimer( Airport airport) throws DAOException;
	void modifier( Airport airport) throws DAOException;
	
	List<Airport> rechercher()throws DAOException;

}
