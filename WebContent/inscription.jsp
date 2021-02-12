<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
		<title>Travel</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/animate.css" />
		<link rel="stylesheet" href="assets/css/hover-min.css">
		<link rel="stylesheet" href="assets/css/datepicker.css" >
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>
        <link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/bootsnav.css"/>
		<link rel="stylesheet" href="assets/css/style.css" />
		<link rel="stylesheet" href="assets/css/connex.css" />
		
	</head>
<body>
<jsp:include page="Menu.jsp" /> 
<section id="home" class="about-us w3l-forms-23" >
<br>
	<div class="forms23-block-hny" style="margin-top:120px;">
			<div class="wrappercnx">
				
				<div class="d-grid forms23-grids" style="width:500px;">
					<div class="form23" style="max-width: 100%;">
						<div class="main-bg">
							<h6 class="sec-one">Utilisateur</h6>
							<div class="speci-login first-look">
								<img src="assets/images/client/user.png" alt="" class="img-responsive">
							</div>
						</div>
						<div class="bottom-content">
							<form method="post" action="GestionUtilis">
							 <label for="fname">Nom</label>
							 <input  class="input-form" type="text" name="nom" placeholder="Enter votre nom" value="${utilisateur.nom}">
                             <br><span>${form.erreurs['nom']}</span><br><br>
							 <label for="fname">Prénom</label>
                             <input  class="input-form" type="text" name="prenom" placeholder="Entrer votre prenom" value="${utilisateur.prenom}">
                             <br><span>${form.erreurs['prenom']}</span><br> 
							 <label for="lname">Téléphone</label>
							 <input  class="input-form"  type="text"  name="telephone" placeholder="Votre telephone"value="${utilisateur.telephone}">
                             <br> <span>${form.erreurs['telephone']}</span><br><br> 
                             <label for="lname">Email</label>  
							 <input type="email" name="email" class="input-form" placeholder="Your Email"
										required="required" name="email" value="${utilisateur.email}">
                             <br> <span>${form.erreurs['email']}</span><br><br>
							 <label for="lname">mots de passe</label>
							 <input type="password" name="mdp" class="input-form"
								placeholder="Your Password" required="required" >
                             <br> <span>${form.erreurs['mdp']}</span><br><br>
							 <button type="submit" class="book-btn">se connecter</button><br><br>
							</form>
							  <span> ${form.resultat}</span> 
							<p>Deja un membre? <a href="Connection.jsp">Connecte toi!</a></p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</section>
		
		
		<jsp:include page="footer.jsp" />
		
		
		<script  src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		<script  src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/bootsnav.js"></script>
		<script src="assets/js/jquery.filterizr.min.js"></script>
		<script  src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/jquery.counterup.min.js"></script>
		<script src="assets/js/waypoints.min.js"></script>
        <script  src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/jquery.sticky.js"></script>
        <script  src="assets/js/datepicker.js"></script>
		<script>
		function openForm() {
			  document.getElementById("er").style.display = "block";
			}
		</script>

 
</body>
</html>