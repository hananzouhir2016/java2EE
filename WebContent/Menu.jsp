<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/login.css" />
<title>Travel</title>
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
									<li class="smooth-menu"><a href="#home">home</a></li>
									<li class="smooth-menu"><a href="#spo">Special Offers</a></li>
									<li>
										<button class="book-btn"  onclick="document.getElementById('id01').style.display='block'">Connecter</button>
										<div id="id01" class="modal">
											<form class="modal-content animate">
												<div class="imgcontainer">
													<span onclick="document.getElementById('id01').style.display='none'"class="close" title="Close Modal">&times;</span> 
												</div>
												<div class="container">
													<label><b>Email</b></label> </br>
													<input type="text" placeholder="Enter email" name="email"required></br> 
													<label><b>Mots passe</b></label></br>
													<input type="password" placeholder="Enter mots passe" name="psw" required></br>
													<button type="submit" class="book-btn" style="width: 55%;">SE CONNECTER</button>
													</form>
													<form>
													<button type="submit" class="book-btn" style="width: 55%;">CREER UN COMPTE</button>
													</form>
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