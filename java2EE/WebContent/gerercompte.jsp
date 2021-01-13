<!doctype html>
<html class="no-js" lang="en">
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
</head>
<body>
	<jsp:include page="Menu2.jsp" />
	<article>

		<div id="s">
			<a style="color: #00d8ff;" href="gerercompte.jsp"> 
			<i class='fas'>&#xf4fe;</i>Information personnelles
			</a>
			<hr>
			<a style="color: #00d8ff;" href="Securiter.jsp"> 
			<i class='fas'>&#xf502;</i>Sécurité
			</a>
			<hr>
			<a style="color: #00d8ff;">
		  <i class="fa fas" style="	padding: 15px;">&#xf011;</i>Déconnection
			</a>
			<hr>
		</div>

		<div id="k">
			<a style="color: #00d8ff;">Informations personnelles</a></br> Mettez à
			jour vos informations et découvrez comment elles sont utilisées
			<hr>

			<table>
				<tr>
					<td>Nom&Prénom</td>
					<td>
						<div id="myFor">hanan zouhir</div>
						<div id="myForm" style="display: none;">
						<label class="er">Nom</label> 
						<input id="rtt" type="text" value="entrer nom" /></br>
						<label class="er">Prénom</label>
						<input id="rtt" type="text" value="entrer nom" /></br>
						<input type="submit" class="btn default" value="enregistrer" />	
						</div>
					</td>
					<td>
						<button class="btn default" id="myt"
							onclick="openForm(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">Modifier</button>
						</br>
						<button class="btn default" style="display: none;" id="my"
							onclick="openFor(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">annuler</button>
					</td>
				</tr>
				<tr>
					<td>Adress-Email</td>
					<td>
						<div id="myForr">hananinfo@gmail.com</div>
						<div id="myFormr" style="display: none;">
							<label class="er">Adress-Email</label> 
							<input id="rtt" type="text" value="entrer nom" /></br> 
							<input type="submit" class=" book-btn" value="enregistrer" />
						</div>
					</td>

					<td>
						<button class="btn default" id="mytt"
							onclick="openForm(document.getElementById('myFormr'),document.getElementById('myForr'), document.getElementById('myy'), document.getElementById('mytt'))">Modifier</button>
						</br>
						<button class="btn default" style="display: none;" id="myy"
							onclick="openFor(document.getElementById('myFormr'),document.getElementById('myForr'), document.getElementById('myy'), document.getElementById('mytt'))">annuler</button>
					</td>
				</tr>



				<tr>
					<td>Numero Téléphone</td>
					<td>
						<div id="myForrr">123456789</div>
						<div id="myFormrr" style="display: none;">
							<label class="er">Numero Téléphone</label>
							 <input id="rtt" type="text" value="entrer nom" /></br> 
							 <input type="submit" class=" book-btn" value="enregistrer" />
						</div>
					</td>

					<td>
						<button class="btn default" id="myttt"
							onclick="openForm(document.getElementById('myFormrr'),document.getElementById('myForrr'), document.getElementById('myyy'), document.getElementById('myttt'))">Modifier</button>
						</br>
						<button class="btn default" style="display: none;" id="myyy"
							onclick="openFor(document.getElementById('myFormrr'),document.getElementById('myForrr'), document.getElementById('myyy'), document.getElementById('myttt'))">annuler</button>
					</td>
				</tr>
				<tr>
					<td>Adress</td>
					<td>Taroudant/Maroc</td>
					<td><button class="btn default">Modifier</button></td>
				</tr>
			</table>

		</div>
	</article>

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