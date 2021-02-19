<html class="no-js" lang="en">
<head>
<title>Travel</title>
<link rel="stylesheet" href="assets/css/acceuil.css" />
	
</head>
<body>
	<jsp:include page="Menu2.jsp"/>
		
	
		<!--travel-box start-->
		<section  class="travel-box">
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
                <button class="btn book-btn btn-sm btn-info mr-4" style="width:110px;font-size: .75rem;" onclick="document.location='MesVoyage.jsp'">Mes Voyages</button>
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
              <form method="post" action="ModifierUtilisa">
			         <div class="card-header bg-white border-0">
                 <div class="row align-items-center">
                    <div class="col-8">
                      <h3 class="mb-0">Mon compte</h3>
                   </div>
                   <div class="col-4 text-right">
				         	     <button type="submit"   class="book-btn" style="width:110px;font-size: .75rem;">Modifier</button>
                   </div>
                 </div>
               </div>
                <h6 class="heading-small text-muted mb-4" style="margin-right:1.5rem;margin-left:1.5rem;margin-top:1.5rem">information personelle</h6>
                <div class="pl-lg-4 formu" style="margin-right:1.5rem;margin-left:1.5rem;">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-controle-label" for="input-username">Cin</label> 
                        <input type="text" id="input-username"  name="cin" class="form-controle form-controle-alternative" placeholder="cin" value="${sessionScope.sessionUtilisateur.cin}">
					             	<p><span>${form.erreurs['cin']}</span></p>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-controle-label" for="input-email">Email </label>
                        <input type="email" id="input-email" name="email" class="form-controle form-controle-alternative" placeholder="${sessionScope.sessionUtilisateur.email}">
						           <p><span>${form.erreurs['email']}</span></p>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-controle-label" for="input-first-name">Nom</label>
                        <input type="text" id="input-first-name" name="nom"  class="form-controle form-controle-alternative" placeholder="Nom"   value="${sessionScope.sessionUtilisateur.nom}">
					            	<p><span>${form.erreurs['nom']}</span></p>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-controle-label" for="input-last-name">Prenom</label>
                        <input type="text" id="input-last-name" class="form-controle form-controle-alternative" placeholder="Prenom" name="prenom" value="${sessionScope.sessionUtilisateur.prenom}">
                        <p><span>${form.erreurs['prenom']}</span> 
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4" style="margin-right:1.5rem;margin-left:1.5rem;margin-top:1.5rem">information de contact</h6>
                <div class="pl-lg-4 formu" style="margin-right:1.5rem;margin-left:1.5rem;">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-controle-label" for="input-city">Telephone</label>
                        <input type="text" id="input-city" class="form-controle form-controle-alternative" placeholder="telephone" name="telephone"  value="${sessionScope.sessionUtilisateur.telephone}">
					              <p><span>${form.erreurs['telephone']}</span></p>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-controle-label" for="input-country">Mot de passe</label>
						            <input type="text"id="input-country" class="form-controle form-controle-alternative" placeholder="Mot de passe" name="mdp"  value="${sessionScope.sessionUtilisateur.mdp}">
						            <input type="hidden" name="id" class="form-controle"    value="${sessionScope.sessionUtilisateur.id}" style="margin-left: 57px;width: 210px;">
                           <p><span>${form.erreurs['mdp']}</span> </p>
                           <p><span>${form.resultat}</span></p>
                      </div>
                    </div>  
                  </div>
                </div>
                <hr class="my-4">
                <!-- Description --> 
              </form> 
           </div>  
        </div>
      </div>
    </div>
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
					<img src="assets/images/gallary/PH1.jpg" style="width: 200px;height: 200px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->


					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 200px;height: 200px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->


					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 200px;height: 200px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->  
					
					<div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 200px;height: 200px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->

					
                    <div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 200px;height: 200px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->

                    <div class="home1-testm item" >
					<img src="assets/images/gallary/PH1.jpg" style="width: 200px;height: 200px;line-height: 80px;border-radius: 50%;"/>
					</div><!--/.item-->
				    
				</div><!--/.testemonial-carousel-->
			</div><!--/.container-->

		</section><!--/.testimonial-->	
		<!-- testemonial End -->
				
		
	
	<jsp:include page="footer.jsp"/>
</body>
</html>