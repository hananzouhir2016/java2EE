package com.projet.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.projet.dao.Utilisateurdao;
import com.projet.dao.VilleDao;
import com.projet.model.Ville;

public class VilleService {
	private VilleDao villedao;
	
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String, String>();
	public String getResultat() {
		return resultat;
	}
	public Map<String, String> getErreurs() {
		return erreurs;
	}
	
	public VilleService( VilleDao  villedao) 
	{
		this.villedao = villedao;
	}
	public Ville creerVille(HttpServletRequest request)
	{
		Ville ville =new Ville();
		String nom =VerificationDonnée.getValeurChamp(request, "nom");
		
		try 
		{
			VerificationDonnée.validationNom(nom);
		} 
		catch (Exception e) 
		{
			setErreur("nom", e.getMessage());
		}
		ville.setNom(nom);
		
		if (erreurs.isEmpty())
		{
			villedao.ajouter(ville);
			resultat = "Succès de la création du client.";
		} 
		else 
		{
			resultat = "Échec de la création du client.";
		}
		return ville;
		
	}


private void setErreur(String champ, String message) 
{
	erreurs.put(champ, message);
}
}