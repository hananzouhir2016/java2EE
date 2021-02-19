<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Avion</title>
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

                       

            <h1 class="principTitle">GESTION Avion</h1>
            
         
            
              <c:if test="${!empty avion}">   
              
              <div>
              
                        <table class="container" style="max-width:70%;margin-top: 35px">
                          <thead>
                            <tr class="id">
                              <th><h1>Id</h1></th>
                              <th><h1>Référence</h1></th>
                              <th><h1>Nom</h1></th>
                              <th><h1>Date Entrée</h1></th>
                              <th><h1>Nombre de Place</h1></th>
                             <th><h1>Action</h1></th>
                             
                              
                            </tr>
                          </thead>
                           <tbody>
                            <c:forEach  var="avion" items="${ avion }" >
                         
                            <tr>
                              <td><c:out value="${ avion.id }"></c:out></td>
                              <td><c:out value="${ avion.reference }"></c:out></td>
                              <td><c:out value="${ avion.nom }"></c:out></td>
                              <td><c:out value="${ avion.dateEntree }"></c:out></td>
                              <td><c:out value="${ avion.nbPlace }"></c:out></td>
                           
                             
                              <td>
                               <a href="<c:url value="/SupprimerAv"><c:param name="idAvion" value="${ avion.id }" ></c:param>
                               <c:param name="avion" value="${ avion }" ></c:param>
                               </c:url>">
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button></a>
                                
                                <form action="ModifierAvi" method="get">
                                  <input type="hidden" value="${ avion.id}" name="idAvion">
                                  
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

<c:if test="${empty avion}">  
<br>
   <h1 class="testin"><string  style="color:#d81414cf; text-align:center"><i class="fa fa-times-circle" aria-hidden="true" style="color:#d81414cf;" ></i> &nbsp; Aucun avion enregistré</string><h1>  
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