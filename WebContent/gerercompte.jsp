<!doctype html>
<html class="no-js" lang="en">
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
<link rel="stylesheet" href="assets/css/style2.css" />


</head>
<body>
	<jsp:include page="Menu2.jsp" />
	
	

	<article>

		<div id="s" style="width:29%;margin-right: 80px;">
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif" href="gerercompte.jsp"> 
			<i class='fas'>&#xf4fe;</i>
			Information personnelles
			</a>
			<hr>
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif" href="Securiter.jsp"> 
			<i class='fas'>&#xf502;</i>
			Sécurité
			</a>
			<hr>
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif">
		  <i class="fa fas" style="	padding: 15px;">&#xf011;</i>
		  Déconnection
			</a>
			<hr>
		</div>

		<div id="k">
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
					<td>Nom&Prénom</td>
					<td>
						<div id="myFor">${sessionScope.sessionUtilisateur.nom}&&${sessionScope.sessionUtilisateur.prenom}</div>
						<div id="myForm" style="display: none;">
						<label class="er" style="margin-right:70px;">Nom </label>
                        <input id="rtt" type="text" value="${sessionScope.sessionUtilisateur.nom}" /> <br> 
                        <label class="er" style="margin-right:51px;">Prénom </label>
                       <input id="rtt" type="text" value="${sessionScope.sessionUtilisateur.prenom}" /><br>
						<input type="submit" class="btn default" value="enregistrer" />	
						</div>
					</td>
					<td>
						<button class="book-btn" id="myt"
							onclick="openForm(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">Modifier</button>
						</br>
						<button class="btn default" style="display: none;" id="my"
							onclick="openFor(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">annuler</button>
					</td>
				</tr>
				<tr>
					<td>Adress-Email</td>
					<td>
						<div id="myForr">${sessionScope.sessionUtilisateur.email}</div>
						<div id="myFormr" style="display: none;">
							<label class="er" style="margin-right:22px;">Adress-Email</label> 
							<input id="rtt" type="text" value="${sessionScope.sessionUtilisateur.email}" /></br> 
							<input type="submit" class="btn default" value="enregistrer" />
						</div>
					</td>

					<td>
						<button class="book-btn" id="mytt"
							onclick="openForm(document.getElementById('myFormr'),document.getElementById('myForr'), document.getElementById('myy'), document.getElementById('mytt'))">Modifier</button>
						</br>
						<button class="btn default" style="display: none;" id="myy"
							onclick="openFor(document.getElementById('myFormr'),document.getElementById('myForr'), document.getElementById('myy'), document.getElementById('mytt'))">annuler</button>
					</td>
				</tr>
				<tr>
					<td>Numero Téléphone</td>
					<td>
						<div id="myForrr">${sessionScope.sessionUtilisateur.telephone}</div>
						<div id="myFormrr" style="display: none;">
							<label class="er">Numero Téléphone</label>
							 <input id="rtt" type="text" value="${sessionScope.sessionUtilisateur.telephone}" /></br> 
							 <input type="submit" class="btn default" value="enregistrer" />
						</div>
					</td>

					<td>
						<button class="book-btn" id="myttt"
							onclick="openForm(document.getElementById('myFormrr'),document.getElementById('myForrr'), document.getElementById('myyy'), document.getElementById('myttt'))">Modifier</button>
						</br>
						<button class="btn default" style="display: none;" id="myyy"
							onclick="openFor(document.getElementById('myFormrr'),document.getElementById('myForrr'), document.getElementById('myyy'), document.getElementById('myttt'))">annuler</button>
					</td>
				</tr>
				<tr>
					<td>CIN</td>
					<td>${sessionScope.sessionUtilisateur.cin}</td>
					<td><button class="book-btn">Modifier</button></td>
				</tr>
			</table>

		</div>
	</article>
	

		<!--travel-box start-->
		

	<jsp:include page="footer.jsp" />


	<script type="text/javascript">

        function openForm(a,b,c,d) 
        {
        	  a.style.display = "block";
        	  b.style.display = "none";
        	  c.style.display = "block";
        	  d.style.display = "none";
         }
        
        function openFor(a1,b1,c1,d1) 
        {
        	  a1.style.display = "none";
        	  b1.style.display = "block";
        	  c1.style.display = "none";
        	  d1.style.display = "block";
         }
        	
</script>
</body>