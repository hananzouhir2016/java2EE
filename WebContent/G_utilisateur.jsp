<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Utilisateur</title>
      <link rel="stylesheet" href="style_G_vol.css">
      <link rel="stylesheet" href="style_ajout_vol.css">
    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="vendors/jqvmap/dist/jqvmap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
      
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

            <h1 class="principTitle">GESTION Utilisateur</h1>
              
              <div>
                        <table class="container" >
                          <thead>
                            <tr>
                              <th><h1>Id</h1></th>
                              <th><h1>Nom</h1></th>
                              <th><h1>Prénom</h1></th>
                              <th><h1>Télephone</h1></th>
                              <th><h1>Email</h1></th>
                              <th><h1>Date Naissance</h1></th>
                              <th><h1>Action</h1></th>
                             
                              
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                            
                              </td>
                             
                            </tr>
                            <tr>
                              <td>Twitter</td>
                              <td>7326</td>
                              <td>10437</td>
                              <td>00:51:22</td>
                              <td>Twitter</td>
                              <td>7326</td>
                              <td>
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                            
                              </td>
                             

                            </tr>
    
                          </tbody>
                        </table>
                      </div>
                      </div>



          

</body>

</html>