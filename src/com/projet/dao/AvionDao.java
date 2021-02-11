package com.projet.dao;

import java.util.List;

import com.projet.model.Airport;
import com.projet.model.Avion;
import com.projet.model.Vol;

public interface AvionDao {
	Avion trouver( int id )throws DAOException;
	public Avion chercher(String nom) throws DAOException ;

	
}
