<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>

<html>
<head>
<title>Travel</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/login.css" />
<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
<link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/animate.css" />
<link rel="stylesheet" href="assets/css/hover-min.css">
<link rel="stylesheet"  href="assets/css/datepicker.css" >
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>
<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/bootsnav.css"/>
<link rel="stylesheet" href="assets/css/style3.css" />
<link rel="stylesheet" href="assets/css/responsive.css" />
<link rel="stylesheet"  href="assets/css/datepicker.css" >
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
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
									<li class="smooth-menu"><a href="/index.jsp">
					

									home</a></li>
									<li class="smooth-menu"><a href="#spo">Special Offers</a></li>
									<li>
									<form method="get" action="Connexions">
										<button type="submit" class="book-btn"  onclick="document.getElementById('id01').style.display='block'">
										Se connecter
										</button>
					               </form>					
										
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
	
	
	<script src="assets/js/jquery.js"></script>
	<script type="text/javascript">
	
	var modal = document.getElementById('id01');
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) 
	{
	    if (event.target == modal) 
	    {
	        modal.style.display = "none";
	    }
	}
	</script>
</body>
</html>