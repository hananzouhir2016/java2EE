<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Vol</title>
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
                        
							<form class="d-flex" action="TrouverVol" method="get">
							            <input class="form-control me-2" type="search" name="id" placeholder="Search" aria-label="Search">
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
      
        <div class="container" >  
        <h4 class="principTitle"><strong>Modifier Vol</strong></h4>
        <br>
         <form  method="post" action="ModifierVol">
              <input type="hidden" value="${ vol.id}" name="idVol">
                 
                 <table   width="100%" align="center">
                  <tr>
                    <td width="20%" align="center">
                      <label for="dateDepart">Date Départ</label>  
                    </td>
                    <td width="30%">
                <input class="dateDepart" type="date"  name="dateDepart"  value="${ vol.dateDepart }">
              </td>
              <td width="20%" align="center">
                <label for="dateArrivee">Date Arrivée</label>
               </td>
               <td width="30%"> 
                      <input class="dateArrivee" type="date"  name="dateArrivee" value="${ vol.dateArrivee }">
              </td>
          
                  </tr>


                  <tr>
                    <td width="20%" align="center">
                      <label for="tpsD">Temps Départ</label>
                    </td>

                    <td width="30%">
                       <input type="text" name="heureDepart" pattern="[0-2][0-9]:[0-5][0-9]:[0-5][0-9]"  placeholder="--:--:--" value="${ vol.heureDepart }">
                    </td>

                    <td width="20%" align="center">
                      <label for="tpsA">Temps d'Arrivée</label>
                    </td>

                    <td width="30%">
                       
                       <input type="text" name="heureArrivee" pattern="[0-2][0-9]:[0-5][0-9]:[0-5][0-9]"  placeholder="--:--:--" value="${ vol.heureArrivee }">
                       
                    </td>

                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="prix">Prix</label>
                    </td>

                    <td width="32%">
                      <input type="text"  name="prix" class="prix"  value="${ vol.prix }"><span>DH</span>
                   </td>
                      
                    

                    <td width="20%" align="center">
                       <label for="avionNom">Avion</label>
                    </td>
                    <td width="30%">
                      <select name="avionNom" id="pet-select">
                      
                      <c:forEach  var="avion" items="${ avion }" >
							<option><c:out value="${ avion.nom }"></c:out></option>  
							
						</c:forEach> 
                      </select>
                    </td>

                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="duree">Durée</label>
                    </td>
                    <td width="30%">
                      <input type="number" min="1" max="31" name="duree" class="duree" >
                    </td>
                    <td width="20%" align="center">
                      <label for="aeroD">Aéroport départ</label>
                    </td>
                    <td width="30%">
                    <select name="aero1" id="pet-select">
                      
                      <c:forEach  var="aerop" items="${ aerop }" >
							<option><c:out value="${ aerop.nom }"></c:out></option>  
							
						</c:forEach> 
                      </select>
                      
                    
                    </td>
                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="aeroA">Aéroport d'arrivé</label>
                    </td>
                    <td width="30%">
                       <select name="aero2" id="pet-select">
                      <c:forEach  var="aerop" items="${ aerop }" >
							<option ><c:out value="${ aerop.nom }"></c:out></option>   
						</c:forEach> 
                      </select>
                    </td> 
                    
                    <td width="20%" align="center">
                      <label for="etat">Etat</label>
                    </td>

                    <td width="32%">
                      <input type="text"  name="etat" class="etat"  value="${ vol.etat }">
                   </td>
                  </tr>
                </table>

                 <span style="color:green">${form.resultat}</span>
                 <input type="submit" name="" value="Modifier Vol">
            </form>
		</div>
		  </div>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="css1/js/main.js"></script>
</html>