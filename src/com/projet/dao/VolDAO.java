package com.projet.dao;

import com.projet.model.Vol;

import java.util.Date;
import java.util.List;

public interface VolDAO {
	void ajouter( Vol vol ) throws DAOException;
	Boolean	annuler(Vol vol) throws DAOException;
	void supprimer( Vol vol) throws DAOException;
	void modifier( Vol vol) throws DAOException;
	List<Vol> trouver( int id )throws DAOException;
	void CompterNbrReservation(int nbrpassager,int id)throws DAOException;
    int chercher_id_avion ( Vol vol) throws DAOException;
    List<Vol> recupererVol(Date date_depart, int id1,int id2) throws DAOException;
	List<Vol> chercher()throws DAOException;
}
