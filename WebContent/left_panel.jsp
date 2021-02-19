<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    
    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="vendors/jqvmap/dist/jqvmap.min.css">
    <link rel="stylesheet" href="css1/style.css">
    
      
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</head>
<body>
   <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" >
                    <i class="fa fa-bars"></i>
                </button>
               
            </div>

            <div id="main-menu" class="">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="dashboard.jsp"> <i class="menu-icon fa fa-line-chart"></i>Tableau de Bord </a>
                    </li>
                    <h3 class="menu-title">Liste des Gestions</h3><!-- /.menu-title -->
                    	<li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="menu-icon fa fa-fighter-jet"></i>Gestion Vol</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li>
                            
                            <form action="GestionVol" method="get">
                                 <button class="ajouter" type="submit"  title="Ajouter"> <i class="fa fa-plus-circle"></i> &nbsp;  &nbsp; Ajouter Vol</button>
                            </form>
                             
                            </li>
                            <br>
                            <li>
                            
                            <form action="ListerVol" method="get">
                               <button class="ajouter" type="submit" style="background-color:#272c33; BORDER: none;cursor: pointer" title="Affichage"> <i class="fa fa-eye"></i> &nbsp; &nbsp; Voir les Vols </button>       
                            </form>
                            </li>
                            
                        </ul>
                    </li>
                 
                    <li class="">
                        <a href="G_Aeroport.jsp" > <i class="menu-icon fa fa-th"></i>Gestion Aéroport</a>
                        
                    </li>

					<li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="menu-icon fa fa-plane"></i>Gestion Avion</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li>
                            
                            <form action="GestionAv" method="get">
                                 <button class="ajouter" type="submit"  title="Ajouter"> <i class="fa fa-plus-circle"></i> &nbsp;  &nbsp; Ajouter Avion</button>
                            </form>
                             
                            </li>
                            <br>
                            <li>
                            
                            <form action="ListerAvions" method="get">
                               <button class="ajouter" type="submit" style="background-color:#272c33; BORDER: none;cursor: pointer" title="Affichage"> <i class="fa fa-eye"></i> &nbsp; &nbsp; Voir les avions </button>       
                            </form>
                            </li>
                            
                        </ul>
                    </li>


                   
                   
                    
                    
                      <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="menu-icon fa fa-user"></i>Gestion Admin</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li>
                            
                            <form action="GestionA" method="get">
                                 <button class="ajouter" type="submit" title="Ajouter"> <i class="fa fa-plus-circle"></i> &nbsp;  &nbsp; Ajouter Admin</button>
                            </form>
                             
                            </li>
                            <br>
                            <li>
                            
                            <form action="ListerA" method="get">
                               <button class="ajouter" type="submit"  title="Affichage"> <i class="fa fa-eye"></i> &nbsp; &nbsp; Voir Des Admins</button>       
                            </form>
                            </li>
                            
                        </ul>
                    </li>
                    

                   <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="menu-icon fa fa-flag"></i>Gestion Ville</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li>
                            
                            <form action="GestionV" method="get">
                                 <button class="ajouter" type="submit"  title="Ajouter"> <i class="fa fa-plus-circle"></i> &nbsp;  &nbsp; Ajouter Ville</button>
                            </form>
                             
                            </li>
                            <br>
                            <li>
                            
                            <form action="ListerVilles" method="get">
                               <button class="ajouter" type="submit" style="background-color:#272c33; BORDER: none;cursor: pointer" title="Affichage"> <i class="fa fa-eye"></i> &nbsp; &nbsp; Voir Des Villes</button>       
                            </form>
                            </li>
                            
                        </ul>
                    </li>
                  
                   </ul>
                   
            </div><!-- /.navbar-collapse -->
        </nav>
     </aside>   
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    
    
    <script src="vendors/chart.js/dist/Chart.bundle.min.js"></script>
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/widgets.js"></script>
    <script src="vendors/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
  
  <!-- --> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="css1/js/main.js"></script>

   
   
  
  
  <!-- si on a un cas d'erreur lié au js alors j'ai deja suppr un code jq-->
</body>
</html>