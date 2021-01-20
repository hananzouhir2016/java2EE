<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Vol</title>
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

            <h1 class="principTitle">GESTION VOL</h1>
              <button type="button" class="btn btn-success" style="background-color:#00d8ff;" data-toggle="modal" data-target="#myModal">
                      <i class="ti-plus"></i> </button>
                      
              <div >
                        <table class="container" style="max-width:95%;">
                          <thead>
                            <tr class="id">
                              <th><h1>id</h1></th>
                              <th><h1>Date Départ</h1></th>
                              <th><h1>Date Arrivée</h1></th>
                              <th><h1>Heure Départ</h1></th>
                              <th><h1>Heure Arrivée</h1></th>
                              <th ><h1>Prix</h1></th>
                              <th ><h1>Nombre de Place</h1></th>
                              <th ><h1>Durée</h1></th>
                              <th><h1>Aéroport Arrivé</h1></th>
                              <th><h1>Aéroport Départ</h1></th>
                              <th width="10%"><h1>Action</h1></th>
                              
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
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>01:32:50</td>
                              <td>00:55:22</td>
                              <td width="15%">
                                <button id="k" type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button  id="s" type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                          </tbody>
                          
                          <tbody>
                            <tr>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>01:32:50</td>
                              <td>00:51:22</td>
                              <td>
                                <button type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                          </tbody>
                          
                          <tbody>
                            <tr>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>01:32:50</td>
                              <td>00:51:22</td>
                              <td>
                                <button type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                          </tbody>
                          
                       <tbody>
                            <tr>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>Google</td>
                              <td>9518</td>
                              <td>6369</td>
                              <td>01:32:50</td>
                              <td>01:32:50</td>
                              <td>00:51:22</td>
                              <td>
                                <button type="button" class="btn btn-primary" title="Modifier" data-toggle="modal" data-target="#myMod"><i class="fas fa-edit"></i></button>
                                <button type="button" class="btn btn-danger" title="Supprimer"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                          </tbody>
                          
                        </table>
                    </div>

                     <!-- The Modal -->
  <div class="modal fade" id="myModal" >
    <div class="modal-dialog" style="margin-left: 25%">
      <div class="modal-content" style="width: 1000px ;background-color:#191919; height: 600px">
      
        <!-- Modal Header -->
        <div class="modal-header">
          
          <button type="button" class="close" data-dismiss="modal" style="color: white">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <div class="login-box">

      
          
          <form class="box" action="ajout_vol.html" method="post">
              <h1 class="title">Ajouter Vol</h1>
              <br>
                 
                 <table   width="100%" align="center">
                  <tr>
                    <td width="20%" align="center">
                      <label for="dateD">Date Départ</label>  
                    </td>
                    <td width="30%">
                <input class="dateD" type="date" required="required">
              </td>
              <td width="20%" align="center">
                <label for="dateA">Date Arrivée</label>
               </td>
               <td width="30%"> 
                      <input class="dateA" type="date" required="required">
              </td>
          
                  </tr>


                  <tr>
                    <td width="20%" align="center">
                      <label for="tpsD">Temps Départ</label>
                    </td>

                    <td width="30%">
                       <input type="time" name="tpsD" required>
                    </td>

                    <td width="20%" align="center">
                      <label for="tpsA">Temps d'Arrivée</label>
                    </td>

                    <td width="30%"> 
                       <input type="time" name="tpsA" required>
                    </td>

                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="price">Prix</label>
                    </td>

                    <td width="32%">
                      <input type="text" name="" class="price" required="required"><span>DH</span>
                   </td>
                      
                    

                    <td width="20%" align="center">
                      <label for="nbplace">Nombre de place</label>
                    </td>
                    <td width="30%">
                      <input type="number" min="100" max="500" step="3" name="" class="nbplace" required="required">
                    </td>

                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="dure">Durée</label>
                    </td>
                    <td width="30%">
                      <input type="text" name="" class="dure" required="required">
                    </td>
                    <td width="20%" align="center">
                      <label for="aéropD">Aéroport départ</label>
                    </td>
                    <td width="30%">
                      <input type="text" name="" class="aéropD" required="required">
                    </td>
                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="aéropA">Aéroport d'arrivé</label>
                    </td>
                    <td width="30%">
                       <input type="text" name="" class="aéropA" required="required">
                    </td> 
                    
                    <td width="20%" align="center">
                       <label for="avion">Avion</label>
                    </td>
                    <td width="30%">
                      <input type="text" name="" class="avion" required="required">
                    </td>
                  </tr>
                </table>

                 
                 <input type="submit" name="" value="Ajouter le Vol">
            </form>
            </div>
        </div>
        </div>
    </div>
  </div>


                    <!-- The Modal -->
  <div class="modal fade" id="myMod" >
    <div class="modal-dialog" style="margin-left: 15%">
      <div class="modal-content" style="width: 1000px ;background-color:#191919; height: 600px">
      
        <!-- Modal Header -->
        <div class="modal-header">
          
          <button type="button" class="close" data-dismiss="modal" style="color: white">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <div class="login-box">

      
          
          <form class="box"  method="post">
              <h1 class="title">Modifier Vol</h1>
              <br>
                 
                 <table   width="100%" align="center">
                  <tr>
                    <td width="20%" align="center">
                      <label for="dateD">Date Départ</label>  
                    </td>
                    <td width="30%">
                <input class="dateD" type="date" required="required">
              </td>
              <td width="20%" align="center">
                <label for="dateA">Date Arrivée</label>
               </td>
               <td width="30%"> 
                      <input class="dateA" type="date" required="required">
              </td>
          
                  </tr>


                  <tr>
                    <td width="20%" align="center">
                      <label for="tpsD">Temps Départ</label>
                    </td>

                    <td width="30%">
                       <input type="time" name="tpsD" required>
                    </td>

                    <td width="20%" align="center">
                      <label for="tpsA">Temps d'Arrivée</label>
                    </td>

                    <td width="30%"> 
                       <input type="time" name="tpsA" required>
                    </td>

                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="price">Prix</label>
                    </td>

                    <td width="32%">
                      <input type="text" name="" class="price" required="required"><span>DH</span>
                   </td>
                      
                    

                    <td width="20%" align="center">
                      <label for="nbplace">Nombre de place</label>
                    </td>
                    <td width="30%">
                      <input type="number" min="100" max="500" step="3" name="" class="nbplace" required="required">
                    </td>

                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="dure">Durée</label>
                    </td>
                    <td width="30%">
                      <input type="text" name="" class="dure" required="required">
                    </td>
                    <td width="20%" align="center">
                      <label for="aéropD">Aéroport départ</label>
                    </td>
                    <td width="30%">
                      <input type="text" name="" class="aéropD" required="required">
                    </td>
                  </tr>

                  <tr>
                    <td width="20%" align="center">
                      <label for="aéropA">Aéroport d'arrivé</label>
                    </td>
                    <td width="30%">
                       <input type="text" name="" class="aéropA" required="required">
                    </td> 
                    
                    <td width="20%" align="center">
                       <label for="avion">Avion</label>
                    </td>
                    <td width="30%">
                      <input type="text" name="" class="avion" required="required">
                    </td>
                  </tr>
                </table>

                 
                 <input type="submit" name="" value="Modifier le Vol">
            </form>
            </div>
        </div>
        </div>
    </div>
  </div>

</div>


         
          
   

</body>

</html>