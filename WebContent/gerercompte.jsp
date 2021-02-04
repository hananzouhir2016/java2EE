<!doctype html>
<html class="no-js" lang="en">
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
<link rel="stylesheet" href="assets/css/style2.css" />
<style type="text/css">
#k1,#k2 
{
display: inline-block;
vertical-align: top;
text-align: justify;
}


</style>
</head>
<body>
	<jsp:include page="Menu2.jsp" />
	
	

	<article >

		<div id="s" style="width:30%;margin-right: 80px;">
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif" href="gerercompte.jsp"> 
			<i class='fas'>&#xf4fe;</i>
			Information personnelles
			</a>
			<hr>
			<hr>
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif">
		  <i class="fa fas" style="	padding: 15px;">&#xf011;</i>
		  Déconnection
			</a>
			<hr>
			  <form method="post" action="ModifierUtilisa" style="display:none;">
		    </form>
		     <form method="post" action="ModifierUtilisa" id="k2">
		     
		       <div class="mb-3">
            <label for="nom" class="form-label" >Nom </label>
                 <input type="text" class="form-control" placeholder="Nom" name="nom" id="nom" aria-describedby=""  value="${sessionScope.sessionUtilisateur.nom}"style="margin-left: 60px;width: 210px;">
                 <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
                 <p><span>${form.erreurs['nom']}</span></p>
             </div>
			  
			  <div class="mb-3">
            <label for="pre" class="form-label">Prénom </label>
                <input type="text" class="form-control" placeholder="Prénom" name="prenom" id="pre" aria-describedby=""  value="${sessionScope.sessionUtilisateur.prenom}" style="margin-left: 38px;width: 210px;"> 
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
                <p><span>${form.erreurs['prenom']}</span>   
        </div>
        
        <div class="mb-3">
            <label for="nom" class="form-label">Email </label>
                 <input type="text" class="form-control" placeholder="Email" name="email" id="nom" aria-describedby=""  value="${sessionScope.sessionUtilisateur.email}" style="margin-left: 57px;width: 210px;">
                 <span class="input-group-text" id="addon-wrapping"><i class="fas fa-envelope-open"></i></span>
                 <p><span>${form.erreurs['email']}</span></p>
             </div>
         <div class="mb-3">
            <label for="tel" class="form-label">téléphone </label>
                <input type="text" class="form-control" placeholder="téléphone" id="tel" name="telephone" aria-describedby="" value="${sessionScope.sessionUtilisateur.telephone}" style="margin-left: 23px;width: 210px;">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-phone"></i></span>
                <p><span>${form.erreurs['telephone']}</span></p> 
           

        </div>
        
        <div class="mb-3">
            <label for="tel" class="form-label">CIN </label>
                <input  type="text" class="form-control" placeholder="CIN" id="tel" name="cin" aria-describedby="" value="${sessionScope.sessionUtilisateur.cin}" style="margin-left: 70px;width: 210px;">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-phone"></i></span>
                <p><span>${form.erreurs['cin']}</span></p> 
           

        </div>
             
          
		     <div class="mb-3">
          <label for="password" class="form-label">Mot de Passe</label>
          
                <input type="text" class="form-control" placeholder="Mot de passe" name="mdp"  value="${sessionScope.sessionUtilisateur.mdp}" style="width: 205px;">
            <span class="input-group-text" id="addon-wrapping"><i class="fas fa-key"></i></span>
            <p><span>${form.erreurs['mdp']}</span> </p>
             <p><span>${form.resultat}</span></p>
       </div>
       
       <div class="mb-3">
                 <input type="hidden" name="id" class="form-control"    value="${sessionScope.sessionUtilisateur.id}" style="margin-left: 57px;width: 210px;">
              
             </div>
		     
		    <button type="submit" class="book-btn" >Modifier</button>
					               </form>
		</div>
		<div id="k" style="width: 720px;">
			<div class="gallary-header text-center">
					<h2>
						Information personnelles
					</h2>
					<p>
						Mettez à jours vos informations et decouvrez comment elles
				                                           sont utilisées
					</p>

				</div><!--/.gallery-header-->
			<hr>

			<table>
				<tr>
					<td>Nom:Prénom</td>
					<td>
						<div id="myFor">${sessionScope.sessionUtilisateur.nom}&&${sessionScope.sessionUtilisateur.prenom}</div>
					</td>
					
				</tr>
				<tr>
					<td>Adress-Email</td>
					<td>
						<div id="myForr">${sessionScope.sessionUtilisateur.email}</div>
				
					</td>
				</tr>
				<tr>
					<td>Numero Téléphone</td>
					<td>
						<div id="myForrr">${sessionScope.sessionUtilisateur.telephone}</div>
						
					</td>
				</tr>
				<tr>
					<td>CIN</td>
					<td>${sessionScope.sessionUtilisateur.cin}</td>
				</tr>
				
				<tr>
						<td>Mot de passe</td>
						<td>
							<div id="myFor">${sessionScope.sessionUtilisateur.mdp}</div>
						</td>
					</tr>
					
					
			</table>
		
	
		</div>
		
	</article>			     
		<!--travel-box start-->
	<jsp:include page="footer.jsp" />

	<script type="text/javascript">

        function openForm(a,b,c,) 
        {
        	
        	  c.style.display = "none";
        	  b.style.display = "block";
        	  a.style.display = "none";
        	 
         }
        
        function openFor(a1,c1,b1) 
        {
      
        	  a1.style.display = "block";
        	  b1.style.display = "none";
        	  c1.style.display = "block";
         }
        	
</script>
</body>