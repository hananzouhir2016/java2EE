<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion administrateur</title>
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
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                        <div class="dropdown for-notification">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="count bg-danger">5</span>
                            </button>
                            
                            
                        </div>

                    
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>


                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i> Mon Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa-bell"></i> Notifications </a>

                            <a class="nav-link" href="#"><i class="fa fa-power-off"></i> Déconnecter</a>
                        </div>
                    </div>
                              <form class="d-flex" action="TrouverVille" method="get">
					            <input class="form-control me-2" type="search" name="nomV" placeholder="Search" aria-label="Search">
					            <button class="btn btn-outline-warning" type="submit">Chercher</button>
					          </form>
                   

                </div>
            </div>
          </header>

                       

            <h1 class="principTitle">GESTION VILLE</h1>
              <c:if test="${!empty villes}">  
              
              <div>
              
                        <table class="container" style="max-width:70%;margin-top: 35px">
                          <thead>
                            <tr class="id">
                              <th><h1>Id</h1></th>
                              <th><h1>Libellé Ville</h1></th>
                             
                              
                              <th><h1>Action</h1></th>
                             
                              
                            </tr>
                          </thead>
                           <tbody>
                            <c:forEach  var="ville" items="${ villes }" >
                         
                            <tr>
                              <td><c:out value="${ ville.id }"></c:out></td>
                              <td><c:out value="${ ville.nom }"></c:out></td>
                           
                             
                              <td>
                              
                               <a href="<c:url value="/SupprimerV"><c:param name="idVille" value="${ ville.id }" ></c:param>
                               <c:param name="villes" value="${ villes }" ></c:param>
                               </c:url>">
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button></a>
                              </td>
                             
                            </tr>
                          </c:forEach>
                          </tbody>
                          
                           
                        </table>
     
  
                    </div>
  </c:if>
            
<div class="test" style="margin-top: 150px;">
<c:if test="${empty villes}">  
<br>
   <h1 class="testin"><string  style="color:#d81414cf; text-align:center"><i class="fa fa-times-circle" aria-hidden="true" style="color:#d81414cf;" ></i> &nbsp; Aucune ville enregistrée</string><h1>  
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