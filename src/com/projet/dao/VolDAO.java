package com.projet.dao;

import com.projet.model.Vol;
import java.util.List;

public interface VolDAO {
	
	void ajouter( Vol vol ) throws DAOException;
	Boolean	annuler(Vol vol) throws DAOException;
	
	void supprimer( Vol vol) throws DAOException;
	void modifier( Vol vol) throws DAOException;
	
	List<Vol> chercher()throws DAOException;
}
