<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css1/style_G_vol.css">
      <link rel="stylesheet" href="css1/style_ajout_vol.css">
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
                        <a href="index.html"> <i class="menu-icon fa fa-dashboard"></i>Tableau de Bord </a>
                    </li>
                    <h3 class="menu-title">Liste des Gestions</h3><!-- /.menu-title -->
                    <li class="">
                        <a href="G_vol.jsp" > <i class="menu-icon fa fa-plane" ></i>Gestion Vol</a>
                       
                    </li>
                    <li class="">
                        <a href="G_reservation.jsp"> <i class="menu-icon fa fa-calendar"></i>Gestion Réservation</a>
                        
                    </li>
                    <li class="">
                        <a href="G_Aeroport.jsp" > <i class="menu-icon fa fa-th"></i>Gestion Aéroport</a>
                        
                    </li>

                    
                    <li class="">
                        <a href="G_utilisateur.jsp"> <i class="menu-icon fa fa-user-circle"></i>Gestion Utilisateur</a>
                       
                    </li>
                    

                    
                    <li class="">
                        <a href="G_admin.jsp"> <i class="menu-icon ti-user"></i>Gestion Admin</a>
                        
                    </li>


                    <li class="">
                        <a href="G_ville.jsp"> <i class="menu-icon ti-user"></i>Gestion Ville</a>
                        
                    </li>

                   </ul>
                   
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="css1/js/main.js"></script>
    <script src="vendors/chart.js/dist/Chart.bundle.min.js"></script>
    <script src="css1/js/dashboard.js"></script>
    <script src="css1/js/widgets.js"></script>
    <script src="vendors/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
  <!-- si on a un cas d'erreur lié au js alors j'ai deja suppr un code jq-->
</body>
</html>