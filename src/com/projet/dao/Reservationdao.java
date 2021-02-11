package com.projet.dao;
import java.util.List;

import com.projet.model.Reservation;
import com.projet.model.Utilisateur;
public interface Reservationdao {
	List<Reservation> trouver( int id, String etat )throws DAOException;
	void modifier( Reservation reservation) throws DAOException;
	void annuler( Reservation reservation) throws DAOException;
	void insert(Reservation reservation) throws DAOException;
}
