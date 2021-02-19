<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Avion</title>
      <link rel="stylesheet" href="css1/N.css">
      <link rel="stylesheet" href="css1/style_G_vol.css">
      <link rel="stylesheet" href="css1/style_ajout_vol.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    
  </head>

  <body>
<jsp:include page="left_panel.jsp"></jsp:include>

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        
                            <form class="d-flex" action="TrouverAv" method="get">
					            <input class="form-control me-2" type="search" name="nom" placeholder="Search" aria-label="Search">
					            <button class="btn btn-outline-warning" type="submit">Chercher</button>
					          </form>
                       

                        
                        
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            

                            <a class="nav-link" href="#"><i class="fa fa-power-off"></i> Déconnecter</a>
                        </div>
                    </div>

                   

                </div>
            </div>
          </header>

    
        
      <div class="container" style="max-width: 360px;">  
        <h4 class="principTitle"><strong>Ajouter Avion</strong></h4>
        <br>
        
		    <form method="post" action="GestionAv">
		        <div class="mb-3">
		            <label for="reference" class="form-label">Référence</label>
		            <div class="input-group flex-nowrap">
		             <input type="text" name="reference" class="form-control" required="required" value="${avion.reference}">
		            
		                 
		            </div>
		            <span>${form.erreurs['reference']}</span> 
		        </div>
		        
		        <div class="mb-3">
		            <label for="nom" class="form-label">Nom</label>
		            <div class="input-group flex-nowrap">
		             <input type="text"  name="nom" class="form-control" required="required" value="${avion.nom}">
		            
		                 
		            </div>
		            <span>${form.erreurs['nom']}</span> 
		        </div>
		        
		        <div class="mb-3">
		        	<label for="nbPlace">Nombre de place</label>
                    <div class="input-group flex-nowrap">
                      <input type="number" min="100" max="500" step="3" name="nbPlace" class="nbPlace" required="required">
		             </div>    
		       </div>
		       
		       
		       <span style="color:green">${form.resultat}</span>
                  
		        <div class="mb-3">
		        <input type="submit" name="" value="Ajouter Avion">
		        
		        </div>
		      </form>
     </div>
							
</body>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="css1/js/main.js"></script>


</html>