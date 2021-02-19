package com.projet.service;


import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import com.projet.dao.Aviondao;
import com.projet.model.Avion;


public class AvionService {

	private Aviondao aviondao;
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String, String>();
	
	
	public String getResultat() 
			{
				return resultat;
			}
	
	public Map<String, String> getErreurs() 
			{
				return erreurs;
			}
	
	public AvionService( Aviondao  aviondao) 
			{
				this.aviondao = aviondao;
				
			}
	
	
	public Avion creerAvion(HttpServletRequest request)
	{
		Avion avion =new Avion();
		String nom =VerificationDonneeAv.getValeurChamp(request, "nom");
		String reference =VerificationDonneeAv.getValeurChamp(request, "reference");
		
		
		
		
		String nbPla =VerificationDonneeAv.getValeurChamp(request, "nbPlace");
		int nbPlace=Integer.parseInt(nbPla); //cast du nbplace 
		
						try 
						{
							VerificationDonneeAv.validationNom(nom);
							VerificationDonneeAv.validationReference(reference);
							
						} 
						catch (Exception e) 
						{
							setErreur("nom", e.getMessage());
							setErreur("reference", e.getMessage());
							setErreur("dateEntree", e.getMessage());
						}
		
		avion.setNom(nom);
		avion.setReference(reference);
		avion.setNbPlace(nbPlace);
		
		
		
		
		
		if (erreurs.isEmpty())
		{
			aviondao.ajouter(avion);
			resultat = "Succés de la création d'avion.";
		} 
		else 
		{
			resultat = "échec de la création d'avion.";
		}
		return avion;
		
	  }
	
	
	public Avion modifAvion(HttpServletRequest request)
	{
		Avion avion= new Avion();
		String nom =VerificationDonneeAv.getValeurChamp(request, "nom");
		String reference =VerificationDonneeAv.getValeurChamp(request, "reference");
		
		String idAvion=request.getParameter("idAvion");
		int id=Integer.parseInt(idAvion);

			
		
		String date=VerificationDonneeAv.getValeurChamp(request, "dateEntree");
		Date dateEntree= Date.valueOf(date);
	
		
		String nbPla =VerificationDonneeAv.getValeurChamp(request, "nbPlace");
		int nbPlace=Integer.parseInt(nbPla); //cast du nbplace 
		
						try 
						{
							VerificationDonneeAv.validationNom(nom);
							VerificationDonneeAv.validationReference(reference);
							
						} 
						catch (Exception e) 
						{
							setErreur("nom", e.getMessage());
							setErreur("reference", e.getMessage());
							setErreur("dateEntree", e.getMessage());
						}
		
		avion.setNom(nom);
		avion.setReference(reference);
		avion.setNbPlace(nbPlace);
		avion.setDateEntree(dateEntree);
		avion.setId(id);
		
		
		
		if (erreurs.isEmpty())
		{
			aviondao.modifier(avion);
			resultat = "Succés de la modification d'avion.";
		} 
		else 
		{
			resultat = "échec de la modification d'avion.";
		}
		return avion;
		
	  }


		

		private void setErreur(String champ, String message) 
		{
			erreurs.put(champ, message);
		}
	
}
