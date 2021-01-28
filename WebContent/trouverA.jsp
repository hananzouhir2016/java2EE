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
                            <form class="search-form"  action="TrouverAdmin"></form>
                                <input class="form-control mr-sm-2" type="text" name="nomA" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                        
                        

                        <div class="dropdown for-notification">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="count bg-danger">6</span>
                            </button>
                            
                        </div>

                        <div class="dropdown for-message">
                            
                            <div class="dropdown-menu" aria-labelledby="message">
                                
                                
                                
                                
                            </div>
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

                   

                </div>
            </div>
          </header>
          
                       <div class="form-inline">
                            <form class="search-form"  action="TrouverAdmin" method="get">
                                <input class="form-control mr-sm-2" type="text" name="nomA" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

            <h1 class="principTitle">GESTION Administrateur</h1>
              
              <div>
                        <table class="container" style="max-width:95%;margin-top: 35px">
                          <thead>
                            <tr class="id">
                              <th><h1>Id</h1></th>
                              <th><h1>Nom</h1></th>
                              <th><h1>Prénom</h1></th>
                              <th><h1>Télephone</h1></th>
                              <th><h1>Email</h1></th>
                              <th><h1>Action</h1></th>
                            </tr>
                          </thead>
                          <tbody>
                  <c:forEach  var="admin" items="${ adminss }" varStatus="loop">
                            
                            <tr>
                             
                              <td><c:out value="${ admin.id }"></c:out></td>
                              <td><c:out value="${ admin.nom }"></c:out></td>
                              <td><c:out value="${ admin.prenom }"></c:out></td>
                              <td><c:out value="${ admin.telephone }"></c:out></td>
                              <td><c:out value="${ admin.email }"></c:out></td>
                             <td>
                                
                              
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                          </c:forEach>  
                          </tbody>
                        </table>

    
                    </div>


  </div>




         
          
    
</body>

</html>