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
	
	
	static void validationNom(String nom) throws Exception {
		if (nom != null) {
			if (nom.length() < 2) {
				throw new Exception("Le nom doit contenir au moins 2 caractères.");
			}
		} else {
			throw new Exception("Merci d'entrer un nom.");
		}
	}
	
	static void validationPrenom(String prenom)throws Exception {
		if (prenom != null) {
			if (prenom.length() < 2) {
				throw new Exception("Le prenom doit contenir au moins 2 caractères.");
			}
		} else {
			throw new Exception("Merci d'entrer un prenom.");
		}
	}
	
	
	
	static void validationAdresse(String adresse) throws Exception 
	{
       if(adresse!=null)
       {
	    if(  adresse.length() < 10) 
		{
			throw new Exception("L'Adresse doit contenir au moins 2 caractères.");
		} 
       }
       else {
			throw new Exception("Merci d'entrer l'adresse.");
		}
       
		
	}
	
	static void validationTelephone(String telephone) throws Exception 
	{
	 if(telephone != null) {
		
			if ( !telephone.matches("^\\d+$")) 
			{
				throw new Exception("Le numéro de téléphone doit uniquement contenir des chiffres.");
			} 
			else if (telephone.length() < 4) 
			{
				throw new Exception("Le numéro de téléphone doit contenir au moins 4 chiffres.");
			}
	 }
	 else {
			throw new Exception("Merci d'entrer Numéro téléphone.");
		}
		} 
		
	
	static void validationEmail(String email) throws Exception
	{
		if(email!=null)
		{
		if (email != null && !email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) 
		{
			throw new Exception("Merci de saisir une adresse mail valide.");
		}
		}
		else {
			throw new Exception("Merci d'entrer l'email.");
		}
	}
	
	static void validationMdp(String mdp) throws Exception {
		if (mdp != null) {
			if (mdp.length() < 8) {
				throw new Exception("Les mots de passe doivent contenir au moins 8 caractères.");
			}
		} else {
			throw new Exception("Merci d'entrer un mots passe valide");
		}
	}
}
