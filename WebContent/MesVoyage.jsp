<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/style2.css" />
<link rel="stylesheet" href="assets/css/style2.css" />


</head>
<body>
	<jsp:include page="Menu2.jsp" />
	
	

	<article>


		
			<c:forEach items="${ sessionScope.sessionUtilisateur.reservations }" var="reservation" varStatus="boucle">
	
		<div class="tab-content clearfix col-md-9" style="display: block !important;width: 70%;" id="k">
		
				<!-- Tab 4 -->
				<div class="tab-pane " id="4a" style="display: block !important;margin: 4px;">
				<!-- Current Active Tab WITH "show active" classes in DIV tag -->
					<div class="tm-recommended-place-wrap" style="display: block !important;">
						<div class="tm-recommended-place" style="margin-bottom:0px;">
					
							<div class="tm-recommended-description-box" style="padding:20px;padding-top:0px;">
								<div class="LegDetails_container__3uhle LegSummary_legDetailsWithChevron__333Y2" aria-hidden="false">
									<div class="LogoImage_container__2Q2Ny LegLogo_logoContainer__1Zf8A LegSummary_legLogo__3WRVi">
										<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xs__1ycc8">+ easyJet</span>
									</div>
									<br>
									<br>
									<br>
									<br>
									
								   
									<div class="LegInfo_legInfo__2UyXp">
										<div class="LegInfo_routePartialDepart__Ix_Rt">
											<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--lg__1PdnC LegInfo_routePartialTime__ngmkT">
												<div>
													<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xl__HqAik"></span>
												</div>
											</span>
											<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ">
												<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ LegInfo_routePartialCityTooltip__Ao7U-"></span></br>
												<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ LegInfo_routePartialCityTooltip__Ao7U-">
</span>
											</span>
										</div>
										<div class="LegInfo_stopsContainer__2Larg">
											<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xs__1ycc8 Duration_duration__2Evn6"></span>
											<div class="LegInfo_stopLine__3Zhmj">
												<span class="LegInfo_stopDot__3pQwb"></span>
										<span class="LegInfo_stopDot__3pQwb"></span>
										<span class="LegInfo_stopDot__3pQwb"></span>
										<svg version="1.1" id="Layer_1" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 12 12" enable-background="new 0 0 12 12" xml:space="preserve" class="LegInfo_planeEnd__sWZ93">
											<path fill="#898294" d="M3.922,12h0.499c0.181,0,0.349-0.093,0.444-0.247L7.949,6.8l3.233-0.019C11.625,6.791,11.989,6.44,12,6 c-0.012-0.44-0.375-0.792-0.818-0.781L7.949,5.2L4.866,0.246C4.77,0.093,4.602,0,4.421,0L3.922,0c-0.367,0-0.62,0.367-0.489,0.71 L5.149,5.2l-2.853,0L1.632,3.87c-0.084-0.167-0.25-0.277-0.436-0.288L0,3.509L1.097,6L0,8.491l1.196-0.073 C1.382,8.407,1.548,8.297,1.632,8.13L2.296,6.8h2.853l-1.716,4.49C3.302,11.633,3.555,12,3.922,12"></path>
										</svg>
									</div>
									<div class="LegInfo_stopsLabelContainer__1S6VX">
										<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xs__1ycc8 LegInfo_stopsLabelRed__33562">
											3 escales
										</span>
										&nbsp;
								</div>
								</div>
								<div class="LegInfo_routePartialArrive__1fHVy">
									<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--lg__1PdnC LegInfo_routePartialTime__ngmkT">
										<div>
											<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xl__HqAik"></span>
										</div>
									</span>
									<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ">
										<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ LegInfo_routePartialCityTooltip__Ao7U-">
											ORY</span><br>
											
											<span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ LegInfo_routePartialCityTooltip__Ao7U-">
											</span>
										</span>
									</div>
								</div>
								
								
								
								</div>
							</div>
							<div style="background-color: #00d8ff;width: 300px;padding:20px;">
							
							    <p class="tm-recommended-price-link">Prix:</p>
							    <p class="tm-recommended-price-link">Date Reservation:${ reservation.date}</p>
								<p class="tm-recommended-price-link">Nombre de passager:</p>
								<p class="tm-recommended-price-link">Etat Reservation:</p>
								
							</div>                        
						</div>
						</div>
						</div>
						</div>
						</c:forEach>
						
						
						
					
						
						<div id="s" style="width:20%;margin-right: 80px;">
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif" href="gerercompte.jsp"> 
			<i class='fas'>&#xf4fe;</i>
			Voyages Valider
			</a>
			<hr>
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif" href="Securiter.jsp"> 
			<i class='fas'>&#xf502;</i>
		Voyages
			</a>
			<hr>
			<a style="color: #00d8ff;font-family: 'Poppins', sans-serif">
		  <i class="fa fas" style="	padding: 15px;">&#xf011;</i>
		  voyages annuler
			</a>
			<hr>
		</div>
						</article>

		<!--travel-box start-->
		

	<jsp:include page="footer.jsp" />


	<script type="text/javascript">

        function openForm(a,b,c,d) 
        {
        	  a.style.display = "block";
        	  b.style.display = "none";
        	  c.style.display = "block";
        	  d.style.display = "none";
         }
        
        function openFor(a1,b1,c1,d1) 
        {
        	  a1.style.display = "none";
        	  b1.style.display = "block";
        	  c1.style.display = "none";
        	  d1.style.display = "block";
         }
        	
</script>
</body>