<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

            <h1 class="principTitle">GESTION Administrateur</h1>
              <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                      <i class="ti-plus"></i> </button>
              <div>
                        <table class="container" style="max-width:95%;">
                          <thead>
                            <tr class="id">
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
                             
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                             <td>
                                
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                            
                            <tr>
                             
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                             <td>
                                
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                            
                            <tr>
                             
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                             <td>
                                
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                            
                          </tbody>
                        </table>

    
                    </div>



                    <!-- The Modal -->
                   <div class="modal fade" id="myModal" >
                      <div class="modal-dialog" style="margin-left: 35%;">
                          <div class="modal-content" style="width: 700px ;background-color:#191919; height: 700px">
      
                <!-- Modal Header -->
                <div class="modal-header">
                  
                  <button type="button" class="close" data-dismiss="modal" style="color: white">×</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                
                      <div class="login-box">
           
          <form class="box" action="ajout_vol.html" method="post">
             <h1 class="title">Ajouter Admin</h1>
                 <table   width="100%" align="center">
                 
                  <tr>
                    <td width="20%" align="center">
                      <label for="nom">Nom</label>  
                    </td>
                    <td width="60%">
                    <input  style="width:90%;" class="nom" type="text" required="required">
                    </td>
                    </tr>
                    
                    <tr>
                     <td width="20%" align="center">
                     <label for="prenom">Prénom</label>
                     </td>
                     <td width="60%"> 
                      <input  style="width:90%;" class="prenom" type="text" required="required">
                     </td>
                  </tr>


                  <tr>
                    <td width="20%" align="center">
                      <label for="date">Date Naissance</label>
                    </td>
                    <td width="60%">
                       <input   style="width:90%;" type="date" name="date" required>
                    </td>
                   </tr>
                   
                   <tr>
                    <td width="20%" align="center">
                      <label for="tele">téléphone</label>
                    </td>

                    <td width="30%"> 
                       <input  style="width:90%;" type="text" name="tele" required>
                    </td>
                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="email">Email</label>
                    </td>

                    <td width="32%">
                      <input  style="width:90%;" type="email" name="" class="email" required="required">
                   </td>
                   </tr> 
                    
  
                   <tr>
                    <td width="20%" align="center">
                      <label for="motpasse">Mot de Passe</label>
                    </td>
                    <td width="30%">
                      <input   style="width:90%;" type="password" min="100" max="500" step="3" name="" class="nbplace" required="required">
                    </td>
                  </tr>

                </table>
                 <input type="submit" name="" value="Ajouter Admin">
            </form>

       </div>
                </div>
        </div>
      </div>
    </div>
  </div>




         
          
    
</body>

</html>