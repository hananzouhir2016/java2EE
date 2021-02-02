package com.projet.service;

import javax.servlet.http.HttpServletRequest;

public class VerificationDonneeAv {
	
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
			if (nom != null && nom.length() < 4)
				{
					throw new Exception("Le nom d'avion doit contenir au moins 4 caractères.");
				}
			
		}
	
	static void validationReference(String reference) throws Exception 
		{ 
			if (reference != null && reference.length() < 6)
				{
					throw new Exception("La référence d'avion doit contenir au moins 6 caractères.");
				}
			
		}
	
	

}
