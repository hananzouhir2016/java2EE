package com.projet.dao;
import com.projet.model.Reservation;
import com.projet.model.Vol;
import static com.projet.dao.DAOUtilitaire2.fermeturesSilencieuses;
import static com.projet.dao.DAOUtilitaire2.initialisationRequetePreparee;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public  class VolDAOImpl implements VolDAO {

	private static final String SQL_Aj_Ar = "";
	private static final String SQL_Aj_V = "INSERT INTO Vol (dateDepart,dateArrivee,heureDepart,heureArrivee,prix,nbPlaceReserve,duree) VALUES (?,?,?,?,?,?,?)";
	private static final String SQL_SELECT_PAR_ID="SELECT * FROM Vol WHERE id = ?";
	private static final String SQL_UPDATE_PAR_ID="UPDATE vol SET nbPlaceReserve=? WHERE id=?";
	
	private static DAOFactory daoFactory;

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
	
	public List<Vol> trouver( int id ) throws DAOException {
		return trouver( SQL_SELECT_PAR_ID, id);
		}
	private List<Vol>trouver( String sql, Object... objets ) throws DAOException {
	Connection connexion = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	List<Vol> vols = new ArrayList<Vol>();
	try {
	/* Récupération d'une connexion depuis la Factory */
	connexion = daoFactory.getConnection();
	/*
	* Préparation de la requête avec les objets passés en arguments
	* (ici, uniquement un id) et exécution.
	*/
	preparedStatement = initialisationRequetePreparee(connexion, sql, objets );
	resultSet = preparedStatement.executeQuery();
	/* Parcours de la ligne de données retournée dans le
	ResultSet */
	while ( resultSet.next() ) {
		vols.add( map( resultSet ) );
	}
	} catch ( SQLException e ) {
	throw new DAOException( e );
	} 
	finally {
	fermeturesSilencieuses( resultSet, preparedStatement,
	connexion );
	}
	return vols;
	}
	
	
	public void CompterNbrReservation(int nbrpassager, int id) throws DAOException {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		PreparedStatement preparedStatement1 = null;
		ResultSet resultSet1 = null;
		try {
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			/*
			* Préparation de la requête avec les objets passés en arguments
			* (ici, uniquement un id) et exécution.
			*/
			preparedStatement = initialisationRequetePreparee(connexion,SQL_SELECT_PAR_ID,id);
			resultSet = preparedStatement.executeQuery();
			/* Parcours de la ligne de données retournée dans le
			ResultSet */
			if ( resultSet.next() ) {
				
				int b=resultSet.getInt("nbPlaceReserve");
				int a=b+nbrpassager;
				try {
				preparedStatement1= initialisationRequetePreparee(connexion,SQL_UPDATE_PAR_ID,a,id);
				int statut = preparedStatement1.executeUpdate();
				if (statut == 0 ) 
				{
					throw new DAOException( "Échec de la création du client, aucune ligne ajoutée dans la table." );
				}
			}
			catch ( SQLException e ) 
			{
				throw new DAOException( e );
			}
			}
		} catch ( SQLException e ) {
			throw new DAOException( e );
			} 
			finally {
			fermeturesSilencieuses( resultSet, preparedStatement,
			connexion );
			}
			
			}
	
	
	
	private static Vol map(ResultSet resultSet ) throws SQLException 
	{
		Vol vol = new Vol ();
		vol.setId(resultSet.getInt("id"));
		vol.setPrix(resultSet.getDouble("prix"));
		vol.setDuree(resultSet.getInt("duree"));
		vol.setHeureArrivee(resultSet.getString("heureArrivee"));
		vol.setHeureDepart(resultSet.getString("heureDepart"));
		vol.setDateArrivee(resultSet.getDate("dateArrivee"));
		vol.setDateDepart(resultSet.getDate("dateDepart"));
		AvionDao aviondao = daoFactory.getAvionDao();
		vol.setAvion( aviondao.trouver( resultSet.getInt("Avi_id" )));
		AeropDAO aeropdao = daoFactory.getAeropDAO();
		vol.setAirport1( aeropdao.trouver( resultSet.getInt("Aer_id" )));
		vol.setAirport2( aeropdao.trouver( resultSet.getInt("Aer_id2" )));
		EscaleDao escaledao = daoFactory.getEscaleDao();
		vol.setNbrescale(escaledao.compter(resultSet.getInt("id" )));
	    return vol;
	}

	
		
}
