package com.projet.service;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.projet.model.Utilisateur;
import com.projet.dao.Utilisateurdao;


public class UtilisateurService {
	
	
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String, String>();
	public Map<String, String> getErreurs() 
	{
		return erreurs;
	}
	
	public String getResultat() 
	{
		return resultat;
	}
	private Utilisateurdao utilisateurdao;
	
	public UtilisateurService( Utilisateurdao  utilisateurdao) 
	{
		this.utilisateurdao = utilisateurdao;
	}
	public Utilisateur creerUtilisateur(HttpServletRequest request)
	{
	String nom =VerificationDonnée.getValeurChamp(request, "nom");
	String prenom= VerificationDonnée.getValeurChamp(request, "prenom");
	String cin =VerificationDonnée.getValeurChamp(request, "cin");
	String telephone =VerificationDonnée.getValeurChamp(request, "telephone");
	String email =VerificationDonnée.getValeurChamp(request, "email");
	String mdp =VerificationDonnée.getValeurChamp(request, "mdp");
	Utilisateur utilisateur = new Utilisateur();
	Utilisateur u = new Utilisateur();
	try 
	{
		VerificationDonnée.validationNom(nom);
	} 
	catch (Exception e) 
	{
		setErreurs("nom", e.getMessage());
	}
	utilisateur.setNom(nom);
	try 
	{
		VerificationDonnée.validationPrenom(prenom);
	} 
	catch (Exception e) 
	{
		setErreurs("prenom", e.getMessage());
	}
	utilisateur.setPrenom(prenom);
	utilisateur.setCin(cin);
	try 
	{
		VerificationDonnée.validationEmail(email);
	} 
	catch (Exception e) 
	{
		setErreurs("email", e.getMessage());
	}
	utilisateur.setEmail(email);
	utilisateur.setMdp(mdp);
	try 
	{
		VerificationDonnée.validationTelephone(telephone);
	} 
	catch (Exception e) 
	{
		setErreurs("telephone", e.getMessage());
	}
	utilisateur.setTelephone(telephone);
	
	if (erreurs.isEmpty())
	{ 
	   u= utilisateurdao.Chercher(email);
	   if(u==null)
	   {
		   utilisateurdao.ajouter(utilisateur);
	   }
	   else
	   {
			resultat = "Adresse email déja utilisé"; 
	   }
	} 
	else 
	{
		resultat = "Échec de la création du client.";
	}
	
	return utilisateur;
	
}
	
	
	
	public Utilisateur connecterUtilisateur(HttpServletRequest request)
	{ 
	String email =VerificationDonnée.getValeurChamp(request, "email");
	String mdp =VerificationDonnée.getValeurChamp(request, "mdp");
	Utilisateur utilisateur=utilisateurdao.trouver(email,mdp);
	if(utilisateur==null)
	   {
		resultat = "Adresse email ou mots passe incorrecte"; 
	   }
	return utilisateur;
    }
	
	
	public Utilisateur ModifierUtilisateur(HttpServletRequest request, Utilisateur utilisateur)
	{
	String nom =VerificationDonnée.getValeurChamp(request, "nom");
	String prenom= VerificationDonnée.getValeurChamp(request, "prenom");
	String cin =VerificationDonnée.getValeurChamp(request, "cin");
	String telephone =VerificationDonnée.getValeurChamp(request, "telephone");
	String email =VerificationDonnée.getValeurChamp(request, "email");
	String mdp =VerificationDonnée.getValeurChamp(request, "mdp");
	String valeur =VerificationDonnée.getValeurChamp(request, "id");
	utilisateur.setId(Integer.parseInt(valeur));
	try 
	{
		VerificationDonnée.validationNom(nom);
	} 
	catch (Exception e) 
	{
		setErreurs("nom", e.getMessage());
	}
	utilisateur.setNom(nom);
	try 
	{
		VerificationDonnée.validationPrenom(prenom);
	} 
	catch (Exception e) 
	{
		setErreurs("prenom", e.getMessage());
	}
	utilisateur.setPrenom(prenom);
	utilisateur.setCin(cin);
	try 
	{
		VerificationDonnée.validationEmail(email);
	} 
	catch (Exception e) 
	{
		setErreurs("email", e.getMessage());
	}
	utilisateur.setEmail(email);
	utilisateur.setMdp(mdp);
	try 
	{
		VerificationDonnée.validationTelephone(telephone);
	} 
	catch (Exception e) 
	{
		setErreurs("telephone", e.getMessage());
	}
	utilisateur.setTelephone(telephone);
	
	if (erreurs.isEmpty())
	{
		utilisateurdao.modifier( utilisateur);
	
		resultat = "Reussite de la Modification du Information Personnelles";
	
	} 
	else 
	{
		resultat = "Échec de la Modification du Information Personnelles";	
	}
	return utilisateur;
}
	
private void setErreurs(String champ, String message) 
{
	erreurs.put(champ, message);
}

}