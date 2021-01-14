<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Rufina:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />
<link rel="stylesheet" href="assets/css/animate.css" />
<link rel="stylesheet" href="assets/css/hover-min.css">
<link rel="stylesheet" href="assets/css/datepicker.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />
<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/bootsnav.css" />
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="stylesheet" href="assets/css/login.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/responsive.css" />
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<style>
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: red;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}
</style>
</head>
<body>
	<header class="top-area">
		<div class="header-area">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="logo">
							<a href="index.html"> Sky<span>Fly</span>
							</a>
						</div>
					</div>
					<div class="col-sm-10">
						<div class="main-menu">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<i class="fa fa-bars"></i>
								</button>
							</div>
							<div class="collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right">
									<li class="smooth-menu"><a href="#home">home</a></li>
									<li class="smooth-menu"><a href="#spo">Special Offers</a></li>
									<li>



										<div class="dropdown">
											<button onclick="myFunction()" class=" book-btn"
												style="width: 160px;">Se connecter</button>
											<div id="myDropdown" class="dropdown-content">
												<h7 href="#home">Gérer du compte</h7>
												</br>
												<h7 href="#about">Mes voyages</h7>
												</br>
												<h7 href="#contact">Déconnexion</h7>
												</br>
											</div>
										</div>


									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="home-border"></div>
			</div>
		</div>
	</header>
	<section class="rt"
		style="background: url(assets/images/home/offer-timer.jpg) no-repeat center fixed;">
		<div class="collapse navbar-collapse">
			<ul class="nav1 navbar-nav ">
				<li class="smooth-menu"><a href="utilisateur.jsp" style="color: #f3f4f4;">Accuiel</a></li>
				<li class="smooth-menu"><a  style="color: #f3f4f4;">Mes
						voyages</a></li>
				<li class="smooth-menu"><a href="parametre.jsp" style="color: #f3f4f4;">Details
						du compte</a></li>
			</ul>
		</div>


	</section>
	<script src="assets/js/jquery.js"></script>
	<script type="text/javascript">
		var modal = document.getElementById('id01');
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>

	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.book-btn ')) {
				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootsnav.js"></script>
	<script src="assets/js/jquery.filterizr.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/jquery.counterup.min.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.sticky.js"></script>
	<script src="assets/js/datepicker.js"></script>

</body>
</html>