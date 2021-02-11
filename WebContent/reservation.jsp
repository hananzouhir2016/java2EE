<!doctype html>
<html class="no-js" lang="en">
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<style type="text/css">
#k1,#k2 
{
display: inline-block;
vertical-align: top;
text-align: justify;
}


</style>
</head>
<body>
	<jsp:include page="Menu.jsp"/>

		
		<!--about-us start -->
		<section id="home" class="about-flights">
			<div class="container">
				<div class="about-us-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="single-about-us">
								<div class="about-us-txt">
									<h2>

									</h2>
									
								</div><!--/.about-us-txt-->
							</div><!--/.single-about-us-->
						</div><!--/.col-->
						
					</div><!--/.row-->
				</div><!--/.about-us-content-->
			</div><!--/.container-->

		</section><!--/.about-us-->
		<!--about-us end -->

		<!--travel-box start-->
		<section  class="travel-box">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				<div class="single-travel-boxes">
        					<div id="desc-tabs" class="desc-tabs">

								
								<!-- Tab panes -->
	
	


		<div id="as" style="width:100%;margin-left: 30%;">
			<label style="color: #00d8ff;font-family: 'Poppins', sans-serif;margin-top:8%" href="gerercompte.jsp"> 
			<i class='fas'>&#xf4fe;</i>
			Information Reservation
			</label>
			<br>
			<br>
		
			<br>
			
		    
		     <form method="post" action="Reserv.sql" >
		     
		       <div class="mb-3">
                 <label for="nom" class="form-label" >Nom </label>
                 <input type="text" class="form-control" placeholder="Nom" name="nom" id="nom" aria-describedby=""  value="${sessionScope.sessionUtilisateur.nom}"style="margin-left: 118px;width: 210px;">
                 <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
                 <p><span>${form.erreurs['nom']}</span></p>
               </div>
			  
			  <div class="mb-3">
                <label for="pre" class="form-label">Prénom </label>
                <input type="text" class="form-control" placeholder="Prénom" name="prenom" id="pre" aria-describedby=""  value="${sessionScope.sessionUtilisateur.prenom}" style="margin-left: 96px;width: 210px;"> 
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
                <p><span>${form.erreurs['prenom']}</span>   
             </div>
        
       
             <div class="mb-3">
                <label for="tel" class="form-label">téléphone </label>
                <input type="text" class="form-control" placeholder="téléphone" id="tel" name="telephone" aria-describedby="" value="${sessionScope.sessionUtilisateur.telephone}" style="margin-left: 80px;width: 210px;">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-phone"></i></span>
                <p><span>${form.erreurs['telephone']}</span></p> 
           
  
             </div>
        
        <div class="mb-3">
                <label for="tel" class="form-label">email </label>
                <input  type="text" class="form-control" placeholder="CIN" id="tel" name="cin" aria-describedby="" value="${sessionScope.sessionUtilisateur.email}" style="margin-left:134px;width: 210px;">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-phone"></i></span>
                <p><span>${form.erreurs['email']}</span></p> 
           

        </div>

 <div class="mb-3">
                  <label for="nom" class="form-label">Nombre de passagers </label>
                 <input type="text" class="form-control" placeholder="Nombre de passagers " name="passagers" id="passagers" aria-describedby=""   style="width: 210px;">
                 <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
             </div>             
          
		     <div class="mb-3">
                <label for="password" class="form-label">Date réservation</label>
          	    <form action="#">
				<input type="text" name="DateReserv" class="form-control" data-toggle="datepicker" placeholder="" style="margin-left:42px;width: 210px;">
				</form>
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-key"></i></span>
               
          </div>
          <br>
          <br>
          

		
		
		
		<div class="blog-content">
							<div class="row">

								<div class="col-sm-4 col-md-12">
									<div class="thumbnail">
										<div class="plane" style="margin-left:0px;">
        
                                            <div class="cockpit">
                                              <h3>Please select a seat</h3>
                                              <ol class="cabin fuselage">
                                              <li class="row row--1">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" disabled id="1A" />               
                                                    <label for="1A">T</label>               
                                                  </li>
                                                </ol>
                                                </li>
                                               </ol>
                                               <ol class="cabin fuselage">
                                                <li class="row row--1">
                                                  <ol class="seats" type="A">
                                                    <li class="seat">
                                                      <input type="checkbox"  id="1A" />
                                                      <label for="1A">T</label>
                                                    </li>
                                                  </ol>
                                                  </li>
                                                 </ol>
                                                 <ol class="cabin fuselage">
                                                    <li class="row row--1">
                                                      <ol class="seats" type="A">
                                                        <li class="seat">
                                                          <input type="checkbox" checked  id="1A" />
                                                          <label for="1A">T</label>
                                                        </li>
                                                      </ol>
                                                      </li>
                                                     </ol>
                                            </div>
                                            <div class="exit exit--front fuselage">
                                          
                                            </div>
                                            <ol class="cabin fuselage">
                                              <li class="row row--1">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="1A" />
                                                    <label for="1A">1A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="1B" />
                                                    <label for="1B">1B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="1C" />
                                                    <label for="1C">1C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" disabled id="1D" />
                                                    <label for="1D">Occupied</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="1E" />
                                                    <label for="1E">1E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="1F" />
                                                    <label for="1F">1F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--2">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="2A" />
                                                    <label for="2A">2A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="2B" />
                                                    <label for="2B">2B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="2C" />
                                                    <label for="2C">2C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="2D" />
                                                    <label for="2D">2D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="2E" />
                                                    <label for="2E">2E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="2F" />
                                                    <label for="2F">2F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--3">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="3A" />
                                                    <label for="3A">3A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="3B" />
                                                    <label for="3B">3B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="3C" />
                                                    <label for="3C">3C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="3D" />
                                                    <label for="3D">3D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="3E" />
                                                    <label for="3E">3E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="3F" />
                                                    <label for="3F">3F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--4">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="4A" />
                                                    <label for="4A">4A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="4B" />
                                                    <label for="4B">4B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="4C" />
                                                    <label for="4C">4C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="4D" />
                                                    <label for="4D">4D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="4E" />
                                                    <label for="4E">4E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="4F" />
                                                    <label for="4F">4F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--5">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="5A" />
                                                    <label for="5A">5A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="5B" />
                                                    <label for="5B">5B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="5C" />
                                                    <label for="5C">5C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="5D" />
                                                    <label for="5D">5D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="5E" />
                                                    <label for="5E">5E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="5F" />
                                                    <label for="5F">5F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--6">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="6A" />
                                                    <label for="6A">6A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="6B" />
                                                    <label for="6B">6B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="6C" />
                                                    <label for="6C">6C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="6D" />
                                                    <label for="6D">6D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="6E" />
                                                    <label for="6E">6E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="6F" />
                                                    <label for="6F">6F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--7">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="7A" />
                                                    <label for="7A">7A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="7B" />
                                                    <label for="7B">7B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="7C" />
                                                    <label for="7C">7C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="7D" />
                                                    <label for="7D">7D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="7E" />
                                                    <label for="7E">7E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="7F" />
                                                    <label for="7F">7F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--8">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="8A" />
                                                    <label for="8A">8A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="8B" />
                                                    <label for="8B">8B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="8C" />
                                                    <label for="8C">8C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="8D" />
                                                    <label for="8D">8D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="8E" />
                                                    <label for="8E">8E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="8F" />
                                                    <label for="8F">8F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--9">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="9A" />
                                                    <label for="9A">9A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="9B" />
                                                    <label for="9B">9B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="9C" />
                                                    <label for="9C">9C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="9D" />
                                                    <label for="9D">9D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="9E" />
                                                    <label for="9E">9E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="9F" />
                                                    <label for="9F">9F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                              <li class="row row--10">
                                                <ol class="seats" type="A">
                                                  <li class="seat">
                                                    <input type="checkbox" id="10A" />
                                                    <label for="10A">10A</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="10B" />
                                                    <label for="10B">10B</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="10C" />
                                                    <label for="10C">10C</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="10D" />
                                                    <label for="10D">10D</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="10E" />
                                                    <label for="10E">10E</label>
                                                  </li>
                                                  <li class="seat">
                                                    <input type="checkbox" id="10F" />
                                                    <label for="10F">10F</label>
                                                  </li>
                                                </ol>
                                              </li>
                                            </ol>
                                            <div class="exit exit--back fuselage">
                                          
                                            </div>
                                          </div>
                                        
		</div>
									</div><!--/.thumbnail-->

								</div><!--/.col-->

								

							</div><!--/.row-->
			
		    
						
						  <div class="mb-3">	
  <input type="submit" value="Réserver" name="reserversql"  class="book-btn"  style="background-color:#00d8ff;font-size:1.3 rem;">
							     
		    
		    </div>
		    					               </form>
		    
		
		
		<span>${form.msg}</span>
						</div><!--/.blog-content-->
		
					</div><!--/.tab content-->
							</div><!--/.desc-tabs-->
        				</div><!--/.single-travel-box-->
        			</div><!--/.col-->
        		</div><!--/.row-->
        	</div><!--/.container-->

        </section><!--/.travel-box-->
        
        
		<script src="assets/js/jquery.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->

		<!--modernizr.min.js-->
		<script  src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


		<!--bootstrap.min.js-->
		<script  src="assets/js/bootstrap.min.js"></script>

		<!-- bootsnav js -->
		<script src="assets/js/bootsnav.js"></script>

		<!-- jquery.filterizr.min.js -->
		<script src="assets/js/jquery.filterizr.min.js"></script>

		<script  src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

		<!--jquery-ui.min.js-->
        <script src="assets/js/jquery-ui.min.js"></script>

        <!-- counter js -->
		<script src="assets/js/jquery.counterup.min.js"></script>
		<script src="assets/js/waypoints.min.js"></script>

		<!--owl.carousel.js-->
        <script  src="assets/js/owl.carousel.min.js"></script>

        <!-- jquery.sticky.js -->
		<script src="assets/js/jquery.sticky.js"></script>

        <!--datepicker.js-->
        <script  src="assets/js/datepicker.js"></script>

		<!--Custom JS-->
		<script src="assets/js/custom.js"></script>
        <script src="js/jquery-2.1.4.min.js"></script>
 </body>
 </html>