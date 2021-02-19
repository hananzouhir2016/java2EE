<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Vol</title>
      <link rel="stylesheet" href="css1/style_G_vol.css">
      <link rel="stylesheet" href="css1/style_ajout_vol.css">
      
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

                       

             <h1 class="principTitle">GESTION Vol</h1>
            
              <c:if test="${!empty vol}">   
              
              <div>
              
                        <table class="container" style="max-width:95%;margin-top: 35px">
                          <thead>
                            <tr class="id" >
                              <th ><h1>Id</h1></th>
                              <th><h1>Avion</h1></th>
                              <th><h1>Aeroport Départ</h1></th>
                              <th><h1>Aeroport Arrivé</h1></th>
                             
                              <th><h1>Date Départ</h1></th>
                             <th><h1>Date Arrivée</h1></th>
                             <th><h1>Heure Départ</h1></th>
                             <th><h1>Heure Arrivée</h1></th>
                             <th><h1>Prix</h1></th>
                             <th><h1>Nombre de Place Réservée</h1></th>
                             <th><h1>Durée</h1></th>
                             <th><h1>Etat</h1></th>
                             <th><h1>Action</h1></th>
                              
                            </tr>
                          </thead>
                           <tbody>
                            <c:forEach  var="vol" items="${ vol }" >
                         
                            <tr>
                              <td align="center"><c:out value="${ vol.id }"></c:out></td>
                              <td align="center" width="10%"><c:out value="${ vol.avi_id }"></c:out></td>
                              <td align="center" width="10%"><c:out value="${ vol.aer_id }"></c:out></td>
                              <td align="center" width="10%"><c:out value="${ vol.aer_id2 }"></c:out></td>
			                   <td align="center" width="10%"><c:out value="${ vol.dateDepart }"></c:out></td>
			                   <td align="center" width="10%"><c:out value="${ vol.dateArrivee }"></c:out></td>
			                   <td align="center" width="10%"><c:out value="${ vol.heureDepart }"></c:out></td>
			                   <td align="center" width="10%"><c:out value="${ vol.heureArrivee }"></c:out></td>
			                   <td align="center"><c:out value="${ vol.prix }"></c:out></td>
			                   <td align="center" width="10%"><c:out value="${ vol.nbPlaceReserve }"></c:out></td>  
			                   <td align="center" width="5%" ><c:out value="${ vol.duree }"></c:out></td>
			                   <td align="center" ><c:out value="${ vol.etat }"></c:out></td>                         
                             
                              <td width="20%" align="center">
                               <a href="<c:url value="/SupprimerVol"><c:param name="idVol" value="${ vol.id }" ></c:param>
                               <c:param name="vol" value="${ vol }" ></c:param>
                               </c:url>">
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button></a>
                               
                               
                               <a href="<c:url value="/AnnulerVol"><c:param name="idVol" value="${ vol.id }" ></c:param>
                               <c:param name="vol" value="${ vol }" ></c:param>
                               </c:url>">
                                <button type="button" class="btn btn-warning" title="Annuler"><i class="fa fa-ban"></i></button></a>
                               
                                
                                <form action="ModifierVol" method="get">
                                  <input type="hidden" value="${vol.id}" name="idVol">
                                  
                                   <button type="submit" class="btn btn-primary" title="Modifier"><i class="fas fa-edit"></i></button>
                                </form>
                               
                              </td>
                             
                            </tr>
                          </c:forEach>
                          </tbody>
                          
                           
                        </table>
     
  
                    </div>
  </c:if>
            
<div class="test" style="margin-top: 150px;">

<c:if test="${empty vol}">  
<br>
   <h1 class="testin"><string  style="color:#d81414cf; text-align:center"><i class="fa fa-times-circle" aria-hidden="true" style="color:#d81414cf;" ></i> &nbsp; Aucun Vol enregistré</string><h1>  
</c:if> 
</div>
</div>
     
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="css1/js/main.js"></script>
    
    
</body>

</html>