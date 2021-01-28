package com.projet.dao;
import java.util.List;

import com.projet.model.Reservation;
public interface Reservationdao {
	List<Reservation> trouver( String cin )throws DAOException;
}
