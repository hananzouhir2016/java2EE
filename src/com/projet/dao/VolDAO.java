package com.projet.dao;


import com.projet.model.Vol;
import java.util.List;

public interface VolDAO {
	
	void ajouter( Vol vol ) throws DAOException;
	void annuler(String etat,int id) throws DAOException;
	
	void supprimer( int id) throws DAOException;
	void modifier( Vol vol) throws DAOException;
	
	Vol search(int id) throws DAOException;
	List<Vol> lister() throws DAOException;
	List<Vol> chercher(int id)throws DAOException;
}
