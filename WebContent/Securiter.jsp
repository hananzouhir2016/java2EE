<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Travel</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
</head>

<body>
	<jsp:include page="Menu2.jsp" />

	<article style="background-color: #f9f9f9;">
		<div id="s">
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
			<a style="color: #00d8ff;">Sécurité<a></a></br> Ajustez vos paramètres
				de sécurité.
				<hr>
				<table>

					<tr>
						<td>Mot de passe</td>
						<td>
							<div id="myFor">Réinitialisez votre mot de passe.</div>
							<div id="myForm" style="display: none;">
								<label>Mots passe</label></br> <input id="rtt" type="text"
									value="entrer nom" /></br> <input type="submit" class=" book-btn"
									value="enregistrer" />
							</div>
						</td>
						<td>
							<button class="btn default" id="myt"
								onclick="openForm(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">Réinitialisez</button>
							</br>
							<button class="btn default" style="display: none;" id="my"
								onclick="openFor(document.getElementById('myForm'),document.getElementById('myFor'), document.getElementById('my'), document.getElementById('myt'))">annuler</button>
						</td>
					</tr>

					<tr>
						<td>Sessions actives</td>
						<td>Cliquez sur « Me déconnecter »</br> pour vous déconnecter
						</td>
						<td><button class="btn default">Me déconnecter</button></td>
					</tr>

					<tr>
						<td>Suppression du compte</td>
						<td>Supprimez définitivement votre</br> compte SKYFLY.com.
						</td>
						<td><button class="btn default">supprimer le compte</button></td>
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