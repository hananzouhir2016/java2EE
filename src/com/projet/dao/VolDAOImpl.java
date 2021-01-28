package com.projet.dao;

import com.projet.model.Vol;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public  class VolDAOImpl implements VolDAO {

	private static final String SQL_Aj_Ar = "";
	private static final String SQL_Aj_V = "INSERT INTO Vol (dateDepart,dateArrivee,heureDepart,heureArrivee,prix,nbPlaceReserve,duree) VALUES (?,?,?,?,?,?,?)";
	
	
	private DAOFactory daoFactory;

    VolDAOImpl(DAOFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public void ajouter(Vol vol) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(SQL_Aj_V);
            preparedStatement.setDate(1, vol.getDateDepart());
            preparedStatement.setDate(2, vol.getDateArrivee());
            preparedStatement.setString(3, vol.getHeureDepart());
            preparedStatement.setString(4, vol.getHeureArrivee());
            preparedStatement.setDouble(5, vol.getPrix());
            preparedStatement.setInt(6, vol.getNbPlaceReserve());
            preparedStatement.setInt(7, vol.getDuree());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

	@Override
	public Boolean annuler(Vol vol) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void supprimer(Vol vol) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifier(Vol vol) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Vol> chercher() throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	

  /**  @Override
    public List<Vol> lister() {
        List<Vol> vol = new ArrayList<Vol>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT dateDepart,dateArrivee,heureDepart,heureArrivee,prix,nbPlaceReserve,duree  FROM Vol;");

            while (resultat.next()) {
                Date dateDepart = resultat.getDate("dateDepart");
                Date dateArrivee = resultat.getDate("dateArrivee");
                String heureDepart = resultat.getString("heureDepart");
                String heureArrivee = resultat.getString("heureArrivee");
                Double prix = resultat.getDouble("prix");
                Int nbPlaceReserve = resultat.getInt("nbPlaceReserve");
                Int duree = resultat.getInt("duree");

                Vol vol = new Vol();
                
                vol.setDateDepart(dateDepart);
                vol.setDateArrivee(dateArrivee);
                vol.setHeureDepart(heureDepart);
                vol.setHeureArrivee(heureArrivee);
                vol.setPrix(prix);
                vol.setNbPlaceReserve(nbPlaceReserve);
                vol.setDuree(duree);
                
                

                vol.add(vol);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vol;
    }

}*/
	
	
}
