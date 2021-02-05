package com.projet.dao;

import java.util.List;

import com.projet.model.Airport;

public interface AeropDAO {
	
	
      Airport trouver(int id)throws DAOException;
      void ajouter( Airport aeroport ) throws DAOException;
      List<Airport> trouver( String nom)throws DAOException;
  	  List<Airport> lister() throws DAOException;
      void supprimer( int id  ) throws DAOException;
  	  int trouverId(String nom) throws DAOException;
  	  Airport chercher(String nom) throws DAOException;
  	List<Airport> selectionner() throws DAOException;
}
