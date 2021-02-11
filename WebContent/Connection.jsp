<!doctype html>
<html class="no-js"  lang="en">
	<head>
		<title>Travel</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/animate.css" />
		<link rel="stylesheet" href="assets/css/hover-min.css">
		<link rel="stylesheet"  href="assets/css/datepicker.css" >
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>
        <link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/bootsnav.css"/>
		<link rel="stylesheet" href="assets/css/style.css" />
		
	</head>
	<body>
		
		<jsp:include page="Menu.jsp" />
		<section id="home" class="about-us">
			
									
										<div>
											<form class="modal-content animate" style="width: 50%;" method="post" action="Connexions">
												<div class="imgcontainer">
													<span class="close" title="Close Modal">&times;</span> 
												</div>
												<div class="container connection">
												<div class="gallary-header ">
												<h2 style="font-size: 20px;margin-left:150px;">Utilisateur - Se connecter</h2>
												</div>
													<label style="font-family: 'Poppins', sans-serif"><b>Email</b></label> <br>
													<input style="width: 45%;" type="text" placeholder="Enter email" name="email"required><br>
													 
													<label style="font-family: 'Poppins', sans-serif"><b>Mots passe</b></label><br>
													<input style="width: 45%;"type="password" placeholder="Enter mots passe" name="mdp" required><br>
													<span> ${form.resultat}</span><br>
													<button type="submit" class="book-btn" style="width: 45%;margin-top:10px;">SE CONNECTER</button>
													</form>
													
													
													
													<div class="gallary-header ">
												    <h2 style="font-size: 20px;margin-left:150px;margin-top:20px;">Nouveau utilisateur</h2>
												      </div>
													
													
													<form method="get" action="GestionUtilis">
													<button type="submit" class="book-btn" style="width: 45%;margin-top:5px;">CREER UN COMPTE</button>
		                                             </form>
		                                        </div>
		
		</section>
		
		
		
		<jsp:include page="footer.jsp"/>
		
		
		
		
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