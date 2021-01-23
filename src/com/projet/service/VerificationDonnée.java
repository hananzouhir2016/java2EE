package com.projet.service;

import javax.servlet.http.HttpServletRequest;

public class VerificationDonnée 
{
	static String getValeurChamp(HttpServletRequest request, String nomChamp) 
	{
		String valeur = request.getParameter(nomChamp);
		if (valeur == null || valeur.trim().length() == 0) {
			return null;
		} else {
			return valeur;
		}
	}
	
	
	static void validationNom(String nom) throws Exception 
	{ 
		if (nom != null && nom.length() < 2)
			{
				throw new Exception("Le nom d'utilisateur doit contenir au moins 2 caractères.");
			}
		
	}
	
	static void validationPrenom(String prenom) throws Exception 
	{
			if (prenom != null && prenom.length() < 2)
			{
				throw new Exception("Le prenom d'utilisateur doit contenir au moins 2 caractères.");
			}
	}
	
	static void validationAdresse(String adresse) throws Exception 
	{

	    if(adresse != null &&  adresse.length() < 10) 
		{
			throw new Exception("L'Adresse doit contenir au moins 2 caractères.");
		}  
		
	}
	
	static void validationTelephone(String telephone) throws Exception 
	{
	 
		
			if (telephone != null && !telephone.matches("^\\d+$")) 
			{
				throw new Exception("Le numéro de téléphone doit uniquement contenir des chiffres.");
			} 
			else if (telephone.length() < 4) 
			{
				throw new Exception("Le numéro de téléphone doit contenir au moins 4 chiffres.");
			}
		} 
		
	
	static void validationEmail(String email) throws Exception
	{
		if (email != null && !email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) 
		{
			throw new Exception("Merci de saisir une adresse mail valide.");
		}
	}
}
