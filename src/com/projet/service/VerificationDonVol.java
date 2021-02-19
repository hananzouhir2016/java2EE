package com.projet.service;

import javax.servlet.http.HttpServletRequest;

public class VerificationDonVol {
	
	static String getValeurChamp(HttpServletRequest request, String nomChamp) 
	{
		String valeur = request.getParameter(nomChamp);
		if (valeur == null || valeur.trim().length() == 0) {
			return null;
		} else {
			return valeur;
		}
	}
	
	static void validationEtat(String nom) throws Exception 
	{ 
		if (nom != null && nom.length() < 6)
			{
				throw new Exception("L'etat du vol doit contenir au moins 6 caractères.");
			}
		
	}
	
	

}
