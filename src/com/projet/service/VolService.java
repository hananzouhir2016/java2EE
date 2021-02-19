package com.projet.service;

import java.sql.Date;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.projet.dao.AeropDAO;
import com.projet.dao.Aviondao;
import com.projet.dao.VolDAO;

import com.projet.model.Vol;

public class VolService {
	
	private VolDAO voldao;
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String, String>();
	private Aviondao aviondao;
	private AeropDAO aeropdao;
	
	public String getResultat() 
	{
		return resultat;
	}

  public Map<String, String> getErreurs() 
	{
		return erreurs;
	}
	
	public VolService( VolDAO voldao, Aviondao aviondao, AeropDAO aeropdao) 
			{
				this.voldao = voldao;
				this.aviondao = aviondao;
				this.aeropdao = aeropdao;
			}
	
	
	public Vol creerVol(HttpServletRequest request)
	{
		Vol vol =new Vol();
		
		
		String nomaero =VerificationDonVol.getValeurChamp(request, "aeroDnom"); 
		int idaeroD =aeropdao.trouverId(nomaero);
		
		String nomaeroA =VerificationDonVol.getValeurChamp(request, "aeroAnom"); 
		int idaeroA =aeropdao.trouverId(nomaeroA);	
		
		
		String nomAv =VerificationDonVol.getValeurChamp(request, "avionNom"); 
		int idavion =aviondao.trouverId(nomAv);	
		
		String dated=VerificationDonVol.getValeurChamp(request, "dateDepart");
		Date dateDepart= Date.valueOf(dated);
		
		String datea=VerificationDonVol.getValeurChamp(request, "dateArrivee");
		Date dateArrivee= Date.valueOf(datea);
		
		String heureDepart =VerificationDonVol.getValeurChamp(request, "heureDepart");
		String heureArrivee =VerificationDonVol.getValeurChamp(request, "heureArrivee");
		
		String price =VerificationDonVol.getValeurChamp(request, "prix");
		double prix= Double.parseDouble(price); //cast prix
		
		String dur =VerificationDonVol.getValeurChamp(request, "duree");
		int duree=Integer.parseInt(dur); //cast duree 
		
		
		
		
		vol.setDateDepart(dateDepart);
		vol.setDateArrivee(dateArrivee);
		vol.setHeureDepart(heureDepart);
		vol.setHeureArrivee(heureArrivee);
		vol.setPrix(prix);
		vol.setDuree(duree);
		
		vol.setAvionid(idavion);
		vol.setAerDid(idaeroD);
		vol.setAerAid(idaeroA);
		
		
		
		if (erreurs.isEmpty())
		{
			voldao.ajouter(vol);
			resultat = "Succés d'Ajout VOL.";
		} 
		else 
		{
			resultat = "Echec d'Ajout VOL";
		}
		return vol;
		
	  }
	
	
	public Vol modifVol(HttpServletRequest request)
	{
		Vol vol =new Vol();
		

		String idVol=request.getParameter("idVol");
		int id=Integer.parseInt(idVol);
		
		
		
		String nomaero =VerificationDonVol.getValeurChamp(request, "aero1"); 
		String nomaero2=VerificationDonVol.getValeurChamp(request, "aero2");
		
		int idaeroD =aeropdao.trouverId(nomaero); 
		int idaeroA =aeropdao.trouverId(nomaero2);	
		
		
		String nomAv =VerificationDonVol.getValeurChamp(request, "avionNom"); 
		int idavion =aviondao.trouverId(nomAv);	
		
		
		String dated=VerificationDonVol.getValeurChamp(request, "dateDepart");
		Date dateDepart= Date.valueOf(dated);
		
		String datea=VerificationDonVol.getValeurChamp(request, "dateArrivee");
		Date dateArrivee= Date.valueOf(datea);
		
		String heureDepart =VerificationDonVol.getValeurChamp(request, "heureDepart");
		String heureArrivee =VerificationDonVol.getValeurChamp(request, "heureArrivee");
		String etat=VerificationDonVol.getValeurChamp(request, "etat"); 
		
		String price =VerificationDonVol.getValeurChamp(request, "prix");
		double prix= Double.parseDouble(price); //cast prix
		
		String dur =VerificationDonVol.getValeurChamp(request, "duree");
		int duree=Integer.parseInt(dur); //cast duree 
		
		

		try 
		{
			VerificationDonneeAv.validationNom(etat);
			
			
		} 
		catch (Exception e) 
		{
			setErreur("etat", e.getMessage());
			
		}

		
		
		
		vol.setDateDepart(dateDepart);
		vol.setDateArrivee(dateArrivee);
		vol.setHeureDepart(heureDepart);
		vol.setHeureArrivee(heureArrivee);
		vol.setPrix(prix);
		vol.setDuree(duree);
		
		vol.setAvionid(idavion);
		
		vol.setAerDid(idaeroD);
		vol.setAerAid(idaeroA);
		
		vol.setEtat(etat);
		vol.setId(id);
		
		
		if (erreurs.isEmpty())
		{
			voldao.modifier(vol);
			resultat = "Succés de la modification du vol.";
		} 
		else 
		{
			resultat = "Echec de la modification du vol.";
		}
		return vol;
		
	  }

	private void setErreur(String champ, String message) 
	{
		erreurs.put(champ, message);
	}

	
	
		
}
