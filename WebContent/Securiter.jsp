<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Travel</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
</head>

<body>
	<jsp:include page="Menu2.jsp" />

	<article style="background-color: #f9f9f9;">
		<div id="s" style="width:29%;margin-right: 80px;">
			<a  href="gerercompte.jsp" style="color: #00d8ff;"> <i class='fas'>&#xf4fe;</i>Information
				personnelles
			</a>
			<hr>
			<a href="Securiter.jsp" style="color: #00d8ff;"><i class='fas'>&#xf502;</i>Sécurité</a>
			<hr>
			<a style="color: #00d8ff;"> <i class="fa fas" style="	padding: 15px;">&#xf011;</i>Déconnection
			</a>
			<hr>
		</div>
		<div id="k" style="margin-top: 20px;">
			
				<div class="gallary-header text-center">
					<h2>
						Sécurité
					</h2>
					<p>
					Ajustez vos paramètres
				de sécurité
					</p>

				</div><!--/.gallery-header-->
			<hr>
				<table>

					<tr>
						<td>Mot de passe</td>
						<td>
							<div id="myFor">Réinitialisez votre mot de passe.</div>
							<div id="myForm" style="display: none;">
								<label class="er" style="margin-right:10px;">Nom </label>
                        <input id="rtt" type="text" value="entrer nom" /> <br> 
						<input type="submit" class="btn default" value="enregistrer" />	
						</div>
							</div>
						</td>
						<td>
							<button class="book-btn" id="myt"
								onclick="openForm(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">Réinitialisez</button>
							</br>
							<button class="btn default" style="display: none;" id="my"
								onclick="openFor(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">annuler</button>
						</td>
					</tr>

					<tr>
						<td>Sessions actives</td>
						<td>Cliquez sur « Me déconnecter »<br>pour vous déconnecter
						</td>
						<td><button class="book-btn" style="width:75%;">Me déconnecter</button></td>
					</tr>

					<tr>
						<td>Suppression du compte</td>
						<td>Supprimez définitivement votre<br> compte SKYFLY.com.</td>
						<td><button class="book-btn" style="width:75%;">Supprission</button></td>
					</tr>
				</table>
		</div>
	</article>

	<jsp:include page="footer.jsp"/>

	<script>
		function openForm(a, b, c, d) {
			a.style.display = "block";
			b.style.display = "none";
			c.style.display = "block";
			d.style.display = "none";
		}

		function openFor(a1, b1, c1, d1) {
			a1.style.display = "none";
			b1.style.display = "block";
			c1.style.display = "none";
			d1.style.display = "block";
		}
	</script>
</body>