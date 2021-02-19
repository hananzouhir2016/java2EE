<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Aéroport</title>
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

            <h1 class="principTitle">GESTION Aéroport</h1>
              <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                      <i class="ti-plus"></i> </button>
              <div>
                        <table class="container" style="width: 70%;">
                          <thead>
                            <tr class="id">
                              <th><h1>Id</h1></th>
                              <th ><h1>Nom</h1></th>
                              <th ><h1>Ville</h1></th>
                              <th><h1>Action</h1></th>
                             
                              
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td width="10%">Google</td>
                              <td width="10%">9518</td>
                              <td width="10%">6369</td>
                              <td width="15%">
                              
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                             
                            </tr>
                            <tr>
                              <td>Twitter</td>
                              <td>7326</td>
                              <td>10437</td>
                              <td>
                                
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                            
                              </td>
                             

                            </tr>
                            <tr>
                              <td>Amazon</td>
                              <td>4162</td>
                              <td>5327</td>
                              <td>
                                 
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                            
                              </td>
                             
                              
                            </tr>
                            <tr>
                              <td>LinkedIn</td>
                              <td>3654</td>
                              <td>2961</td>
                              <td>
                                
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                            
                              </td>
                             
                              
                            </tr>
                            
                          </tbody>
                        </table>

    
                    </div>



                    <!-- The Modal -->
  <div class="modal fade" id="myModal" style="height: 500px" >
    <div class="modal-dialog" style="margin-left: 35%">
      <div class="modal-content" style="width: 700px ;background-color:#191919; height: 600px;margin-top:100px;">
      
              <!-- Modal Header -->
              <div class="modal-header">
                
                <button type="button" class="close" data-dismiss="modal" style="color: white">×</button>
              </div>
              
              <!-- Modal body -->
              <div class="modal-body">
                    <div class="login-box">
          
          <form class="box" action="ajout_vol.html" method="post">
              <h1 class="title">Ajouter Aéroport</h1>
              <br>
                 
                 <table   width="100%" align="center">
                 
                  <tr>
                    <td width="20%" align="center">
                      <label for="nom">Nom</label>  
                    </td>
                    <td width="30%">
                    <input class="nom" type="text" required="required">
                    </td>
                 </tr>
                 
                 <tr>
                    
                    <td width="20%" align="center">
                    <label for="pre" class="form-label">Ville </label>
                    </td>
                    <td width="20%" align="center">
                     <div class="input-group flex-nowrap">
                                       <select  id="pet-select" >
                                            <option value="">--Choisir une Ville--</option>
                                            <option value="dog">Agadir</option>
                                            <option value="cat">Titouane</option>
                                            <option value="hamster">Tanger</option>
                                        </select>
                                     </div>
                      </td>  
                  
                  </tr>



                </table>

                 
                 <input type="submit" name="" value="Ajouter Aéroport" >
            </form>

       </div>
              </div>
        </div>
    </div>
  </div>

</div>


         
   

</body>

</html>