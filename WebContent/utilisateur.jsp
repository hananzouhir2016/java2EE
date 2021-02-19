<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Travel</title>
<link rel="stylesheet" href="assets/css/style2.css" />
<link rel="stylesheet" href="assets/css/login.css" />	
</head>
<body>
	<jsp:include page="Menu2.jsp"/>
		
	<div style="background-color: #bfbdbb24;">

		<!--travel-box start-->
		<section  class="travel-box">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				<div class="single-travel-boxes">
        					<div id="desc-tabs" class="desc-tabs">
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active fade in" id="tours">
									<ul class="nav nav-tabs" role="tablist" style="margin-top:0px;">
									<li role="presentation">
									<a href="#flights" aria-controls="flights" role="tab" data-toggle="tab"> <i
											class="fa fa-plane"></i> Planifiez votre prochaine vols
											<h1>
										
										</h1>
									</a></li>
								</ul>
										<form  method="post"  action="AffichageVol">
									<div role="tabpanel" id="flights">
										<div class="tab-para">
											<div class="single-trip-circle">
													<input type="radio" id="radio02" value="radio02" name="radio" onclick="fonct()"/>
  													<label for="radio02">
  														<span class="round-boarder">
  															<span class="round-boarder1"></span>
  														</span>aller-simple
  													</label>
												</div>
											<div class="row">
												<div class="col-lg-4 col-md-4 col-sm-12">
													<div class="single-tab-select-box">
														<h2>De</h2>
														<div class="travel-select-icon">
															<select class="form-control "  name="de" value="de">
															<c:forEach items="${list_nomAeroports}" var="nom_aero" varStatus="boucle">
					
															  	<option  value="${nom_aero.nom}" >
															  	<c:out value="${ nom_aero.nom }"></c:out>
															  	</option>
															 </c:forEach> 	
															</select>
														</div>
													</div>
												</div>
												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>Départ</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text"  name="depart" value="depart" class="form-control" data-toggle="datepicker"
																placeholder="12 -01 - 2017 ">
															</form>
														</div>
													</div>
												</div>
												

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>adultes</h2>
														<div class="travel-select-icon">
															<select class="form-control "  name="adulte" value="adulte">
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
															<select class="form-control "  name="enfant" value="enfant">
															  	<option value="default">1</option>
															  	<option value="2">2</option>
															  	<option value="4">4</option>
															  	<option value="8">8</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-4 col-md-4 col-sm-12">
													<div class="single-tab-select-box">
														<h2>à</h2>
														<div class="travel-select-icon">
															<select class="form-control "  name="a" value="a">
															  <c:forEach items="${list_nomAeroports}" var="nom_aero" varStatus="boucle">
					
															  	<option value="${nom_aero.nom}" >
															  	<c:out value="${nom_aero.nom}"></c:out>
															  	</option>
															 </c:forEach>
															</select>
														</div>
													</div>
												</div>
												
												<div class="clo-sm-5">
													<div class="about-btn pull-right">
														<button  class="about-view travel-btn" id="chercherVol" value="chercherVol" name="chercherVol">
								                               Chercher 
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								
								</form>

											</div><!--/.row-->

											
										</div><!--/.tab-para-->

									</div><!--/.tabpannel-->

								</div><!--/.tab content-->
							</div><!--/.desc-tabs-->
        				</div><!--/.single-travel-box-->
        			</div><!--/.col-->
        		</div><!--/.row-->
        	

        </section><!--/.travel-box-->

		<section   class="testemonial">
			<div class="container">

				<div class="gallary-header text-center">
					<h2>
						Petit guide de protection face au coronavirus
					</h2>
					<p>
						si vous devez prendre l'avion Des gestes simples pour ne pas
					gacher son retour de voyage
					</p>

				</div><!--/.gallery-header-->

				<div class="owl-carousel owl-theme" id="testemonial-carousel">

					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 300px;height: 300px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->


					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 300px;height: 300px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->


					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 300px;height: 300px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->  
					
					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 300px;height: 300px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->

					
                    <div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 300px;height: 300px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->

                    <div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 300px;height: 300px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->
				
				</div><!--/.testemonial-carousel-->
			</div><!--/.container-->

		</section><!--/.testimonial-->	
		<!-- testemonial End -->
				
		
	
	<jsp:include page="footer.jsp"/>
</body>
</html>