<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
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
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
<link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png" />
<link rel="stylesheet" href="assets/css/style3.css" />
<link rel="stylesheet" href="assets/css/datepicker.css">
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
									<i class="fa fa-bars" aria-hidden="true"></i>
								</button>
							</div>
							<div class="collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right">
									<li><a href="index.jsp">home</a></li>
											
									<li class="smooth-menu"><a href="#spo">Special Offers</a></li>
									<li>
										<button class="book-btn" style="width:200px;"
											onclick="document.getElementById('id01').style.display='block'">
											<c:if test="${!empty sessionScope.sessionUtilisateur}">
                                            <%-- Si l'utilisateur existe en session, alors
                                             on affiche son adresse email. --%>
                                             <p class="succes"> bonjour;${sessionScope.sessionUtilisateur.nom}${sessionScope.sessionUtilisateur.prenom}</p>
                                                  </c:if>
											</button>
										<div id="id01" class="modal">
											<form class="modal-content animate" style="width: 26%;" method="get" action="Deconnexions">
												<div class="imgcontainer">
													<span
														onclick="document.getElementById('id01').style.display='none'"
														class="close" title="Close Modal">&times;</span>
												</div>
												<div class="container">
													<a style="color: #00d8ff; margin-left: 40px;"><i
														style='font-size: 24px' class='fas'>&#xf502;</i>Détails compte</a><br> 
														<a style="color: #00d8ff; margin-left: 40px;"><i style='font-size: 24px' class='fas'>&#xf072;</i>Mes voyages</a><br> 
														          
										        <button type="submit" class="book-btn" >Se deconnecter
										        </button>
												</div>
												</form>
												
												</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="home-border"></div>
		</div>
		

	</header>

	<section id="home" class="about-flights"
		style="min-height: 260px; background: url(assets/images/home/banner.jpg) no-repeat center fixed;">
		<div class="container">
			<div class="about-us-content">
				<div class="row">
					<div class="col-sm-12">
						<div class="single-about-us">
							<div class="about-us-txt" style="margin-top: 200px;">
								<div class="collapse navbar-collapse">
									<ul class="nav1 navbar-nav ">
										<a href="utilisateur.jsp"style="color: #f3f4f4; margin-right:50px;font-family: 'Poppins', sans-serif;font-size: 14px;">Accuiel</a>
										<a href="MesVoyage.jsp" style="color: #f3f4f4;margin-right:50px;font-family: 'Poppins', sans-serif;font-size: 14px;">Mes voyages</a>
								        <a href="gerercompte.jsp" style="color: #f3f4f4;margin-right:50px; font-family: 'Poppins', sans-serif;font-size: 14px;">Details du compte</a>
									</ul>
								</div>

							</div>
							<!--/.about-us-txt-->
						</div>
						<!--/.single-about-us-->
					</div>
					<!--/.col-->

				</div>
				<!--/.row-->
			</div>
			<!--/.about-us-content-->
		</div>
		<!--/.container-->

	</section>
	<!--/.about-us-->
	<!--about-us end -->

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