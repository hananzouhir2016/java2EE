<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Travel</title>
<link rel="stylesheet" href="assets/css/style2.css" />
<link rel="stylesheet" href="assets/css/login.css" />
</head>
<body>
	<jsp:include page="Menu2.jsp" />

	<div style="background-color: #bfbdbb24;">

		<section class="travel" id="k2">
			<div class="containe">
				<div class="row">
					<div class="col-md-12">
						<div class="single-travel-boxes">
							<div id="desc-tabs" class="desc-tabs">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation"><a href="#flights"
										aria-controls="flights" role="tab" data-toggle="tab"> <i
											class="fa fa-plane"></i> Planifiez votre prochaine vols
									</a></li>
								</ul>
								<div role="tabpanel" class="tab-pane fade in" id="flights">
									<div class="tab">
										<div class="trip-circle">
											<div class="single-trip-circle">
												<input type="radio" id="radio01" name="radio" /> <label
													for="radio01"> <span class="round-boarder">
														<span class="round-boarder1"></span>
												</span>aller-retour
												</label>
											</div>
											<div class="single-trip-circle">
												<input type="radio" id="radio02" name="radio" /> <label
													for="radio02"> <span class="round-boarder">
														<span class="round-boarder1"></span>
												</span>en route
												</label>
											</div>
										</div>



										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-12">
												<div class="single-tab-select-box">
													<h2>De</h2>
													<div class="travel-select-icon">
														<select class="form-control ">
															<option value="default">entrez votre emplacement</option>
															<option value="turkey">turkey</option>
															<option value="russia">russia</option>
															<option value="egept">egypt</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-lg-2 col-md-3 col-sm-4">
												<div class="single-tab-select-box">
													<h2>Départ</h2>
													<div class="travel-check-icon">
														<form action="#">
															<input type="text" name="departure" class="form-control"
																data-toggle="datepicker" placeholder="12 -01 - 2017 ">
														</form>
													</div>
												</div>
											</div>
											<div class="col-lg-2 col-md-3 col-sm-4">
												<div class="single-tab-select-box">
													<h2>retour</h2>
													<div class="travel-check-icon">
														<form action="#">
															<input type="text" name="return" class="form-control"
																data-toggle="datepicker" placeholder="22 -01 - 2017 ">
														</form>
													</div>
												</div>
											</div>

										</div>





										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-12">
												<div class="single-tab-select-box">
													<h2>à</h2>
													<div class="travel-select-icon">
														<select class="form-control ">
															<option value="default">entrez votre emplacement</option>
															<option value="istambul">istambul</option>
															<option value="mosko">mosko</option>
															<option value="cairo">cairo</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-lg-3 col-md-3 col-sm-4">
												<div class="single-tab-select-box">
													<h2>class</h2>
													<div class="travel-select-icon">
														<select class="form-control ">
															<option value="default">enter class</option>
															<option value="A">A</option>
															<option value="B">B</option>
															<option value="C">C</option>
														</select>
													</div>
												</div>
											</div>

										</div>


										<div class="row">
											<div class="col-lg-2 col-md-1 col-sm-4">
												<div class="single-tab-select-box">
													<h2>adultes</h2>
													<div class="travel-select-icon">
														<select class="form-control ">
															<option value="default">5</option>
															<option value="10">10</option>
															<option value="15">15</option>
															<option value="20">20</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-lg-2 col-md-1 col-sm-4">
												<div class="single-tab-select-box">
													<h2>Enfants</h2>
													<div class="travel-select-icon">
														<select class="form-control ">
															<option value="default">1</option>
															<option value="2">2</option>
															<option value="4">4</option>
															<option value="8">8</option>
														</select>
													</div>
												</div>
											</div>
											<div class="clo-sm-5">
												<div class="about-btn pull-right">
													<button class="about-view travel-btn">chercher du
														vols</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>

		<section id="s2" style="width: 60%;">
			<div class="logo">
				<a class="fu">Bienvenue sur Sky<span>Fly!</span></a>
			</div>
			<div style="background-color: white; padding: 30px; margin: 20px;">

				<h7>Petit guide de protection face au coronavirus</h7>
				<p>si vous devez prendre l'avion Des gestes simples pour ne pas
					gacher son retour de voyage
				<ul>
					<li>Porter vos masque dans lavion</li>
					<li>Siege pres de la fenetre</li>
					<li>Desinfecter tout(desinfecter tout votre espace)</li>
				</ul>
				</p>
			</div>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>