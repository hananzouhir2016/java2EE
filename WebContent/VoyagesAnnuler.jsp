<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="assets/css/acceuil.css" />



</head>
<body>
	<jsp:include page="Menu2.jsp" />
	
	

	<article>
<div class="container-fluid mt--7" style="margin-bottom:40px;">
      <div class="row">
        <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
          <div class="card card-profile shadow">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                  <a href="#">
                    <img src="assets/images/client/user.png" class="rounded-circle">
                  </a>
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
                <button class="btn book-btn btn-sm btn-info mr-4" style="width:110px;font-size: .75rem;" onclick="document.location='gerercompte.jsp'">Mon compte</button>
                <button onclick="document.location='Deconnexions'" class="btn book-btn btn-sm btn-default float-right" style="width:110px;font-size: .75rem;">deconnexion</button>
              </div>
            </div>
            <div class="card-body pt-0 pt-md-4">
              
              <div class="text-center">
                <h3>
                  ${sessionScope.sessionUtilisateur.nom} ${sessionScope.sessionUtilisateur.prenom}<span class="font-weight-light"></span>
                </h3>
                <div class="h5 font-weight-300">
                  <i class="ni location_pin mr-2"></i>${sessionScope.sessionUtilisateur.email}
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Mes voyages</h3>
                </div>
               <div class="col-4 text-right">
                   <button onclick="document.location='MesVoyage.jsp'" class="btn book-btn btn-sm btn-info mr-4" style="width:80px;font-size: .75rem;margin-right: 0px !important;">Validees</button>
                    <button onclick="document.location='ReservationNonEnregistrer.jsp'" class="btn book-btn btn-sm btn-info mr-4" style="width:80px;font-size: .75rem;margin-right: 0px !important;">En attente</button>
                    <button onclick="document.location='VoyagesAnnuler.jsp'" class="btn book-btn btn-sm btn-info mr-4" style="width:80px;font-size: .75rem;margin-right: 0px !important;">Annulees</button>
                  </div>
              </div>
            </div>
            <div class="card-body">
              <form>
                <h6 class="heading-small text-muted mb-4">Voyages annulees</h6>
                <div class="pl-lg-4">
                 	<c:forEach items="${ sessionScope.sessionUtilisateur.reservations }" var="reservation" varStatus="boucle">
	                <c:forEach items="${reservation.vols }" var="vol" varStatus="boucle">
	                  	<div class="tab-content clearfix col-md-9" style="display: block !important;width: 100%;" id="k">
				<!-- Tab 4 -->
			               	<div class="tab-pane " id="4a" style="display: block !important;margin: 4px;">
				<!-- Current Active Tab WITH "show active" classes in DIV tag -->
					<div class="tm-recommended-place-wrap" style="display: block !important;">
						<div class="tm-recommended-place" style="margin-bottom:0px;border-radius:5px 5px 5px 5px;">
					
							<div class="tm-recommended-description-box" style="padding:20px;padding-top:0px;">
								<div class="LegDetails_container_3uhle LegSummary_legDetailsWithChevron_333Y2" aria-hidden="false">
									<div class="LogoImage_container_2Q2Ny LegLogo_logoContainer1Zf8A LegSummary_legLogo_3WRVi"style="padding-top: 30px;font-weight: normal;">
										<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--xs_1ycc8">Nom Avion :${vol.avion.nom}</span>
									</div>
									<br>
									
									
								   
									<div class="LegInfo_legInfo__2UyXp" style="flex-flow: initial;font-weight: initial;">
										<div class="LegInfo_routePartialDepart__Ix_Rt">
											<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--lg1PdnC LegInfo_routePartialTime_ngmkT">
												<div>
													<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--xl_HqAik">${vol.heureDepart}</span>
												</div>
											</span>
											<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--base_3REoZ">
												<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--base3REoZ LegInfo_routePartialCityTooltip_Ao7U-">Airport Départ:${vol.airport1.nom}</span></br>
												<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--base3REoZ LegInfo_routePartialCityTooltip_Ao7U-">${vol.dateDepart}
</span>
											</span>
										</div>
										<div class="LegInfo_stopsContainer__2Larg">
											<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--xs1ycc8 Duration_duration_2Evn6">${vol.duree}h</span>
											<div class="LegInfo_stopLine__3Zhmj">
												<span class="LegInfo_stopDot__3pQwb"></span>
										<span class="LegInfo_stopDot__3pQwb"></span>
										<span class="LegInfo_stopDot__3pQwb"></span>
										<svg version="1.1" id="Layer_1" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 12 12" enable-background="new 0 0 12 12" xml:space="preserve" class="LegInfo_planeEnd__sWZ93">
											<path fill="#898294" d="M3.922,12h0.499c0.181,0,0.349-0.093,0.444-0.247L7.949,6.8l3.233-0.019C11.625,6.791,11.989,6.44,12,6 c-0.012-0.44-0.375-0.792-0.818-0.781L7.949,5.2L4.866,0.246C4.77,0.093,4.602,0,4.421,0L3.922,0c-0.367,0-0.62,0.367-0.489,0.71 L5.149,5.2l-2.853,0L1.632,3.87c-0.084-0.167-0.25-0.277-0.436-0.288L0,3.509L1.097,6L0,8.491l1.196-0.073 C1.382,8.407,1.548,8.297,1.632,8.13L2.296,6.8h2.853l-1.716,4.49C3.302,11.633,3.555,12,3.922,12"></path>
										</svg>
									</div>
									<div class="LegInfo_stopsLabelContainer__1S6VX">
										<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--xs1ycc8 LegInfo_stopsLabelRed_33562">
											${vol.nbrescale}Escales
										</span>
										&nbsp;
								</div>
								</div>
								<div class="LegInfo_routePartialArrive__1fHVy">
									<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--lg1PdnC LegInfo_routePartialTime_ngmkT">
										<div>
											<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--xl_HqAik">${vol.heureArrivee}</span>
										</div>
									</span>
									<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--base_3REoZ">
										<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--base3REoZ LegInfo_routePartialCityTooltip_Ao7U-">
											Airport D'arrivée:${vol.airport2.nom}</span><br>
											
											<span class="BpkText_bpk-text_2VouB BpkText_bpk-text--base3REoZ LegInfo_routePartialCityTooltip_Ao7U-">${vol.dateArrivee}
											</span>
										</span>
									</div>
								</div>
								
								
								
								</div>
							</div>
							<div style="background-color: #00d8ff;width: 400px;padding:20px;border-radius:5px 5px 5px 5px;">
							
							    <p class="tm-recommended-price-link">Prix:${vol.prix}DH</p>
							    <p class="tm-recommended-price-link">Date Reservation:${ reservation.date}</p>
								<p class="tm-recommended-price-link">Nombre de passager:${ reservation.nbpassagers}</p>
								<p class="tm-recommended-price-link">Etat Reservation:${ reservation.etat}</p>
								<p class="tm-recommended-price-link">Durée Vol:${ vol.duree}</p>
							</div>                        
						</div>
					</div>
				</div>
						</div>
						</c:forEach>
					       	</c:forEach>
                 	
                </div>
                 
              </form>
            </div>     
            <hr class="my-4">
          </div>
        </div>
      </div>
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