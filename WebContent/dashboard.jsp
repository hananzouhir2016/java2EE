<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Gestion Ville</title>
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

  
        
<div class="container">
    <div class="row my-3">
        <div class="col">
            <h4>Variation Des <span style="color:green">Reservations</span> Et Des <span style="color:blue"> Utilisateurs </span> par chaque mois</h4>
           
        </div>
    </div>
    <div class="row my-2">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <canvas id="chLine" height="100"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>
  
<script>

/* chart.js chart examples */

//chart colors
var colors = ['#007bff','#28a745','#333333','#c3e6cb','#dc3545','#6c757d'];

/* large line chart */
var chLine = document.getElementById("chLine");
var chartData = {
labels: ["Janvier", "Fevrier", "Mars", "Avril", "Mai", "Juin", "Juillet","Août", "Septembre","Octobre","Novembre","Décembre"],
datasets: [{
	
data: [589, 445, 483, 503, 689, 692, 634,465, 493, 478, 589, 632, 674,],	
 //data: [${ jan }, ${ fev }, ${ mar }, ${ avr }, ${ mai }, ${ jun }, ${ juil }, ${ aout }, ${ sep }, ${ oct }, ${ nov }, ${ dec }],
 backgroundColor: 'transparent',
 borderColor: colors[0],
 borderWidth: 4,
 pointBackgroundColor: colors[0]
},
{
 data: [639, 465, 493, 478, 589, 632, 674, 634, 483, 478, 589, 632, 674,],
 //data: [${ janV }, ${ fevV }, ${ marV }, ${ avrV }, ${ maiV }, ${ junV }, ${ juilV }, ${ aoutV }, ${ sepV }, ${ octV }, ${ novV }, ${ decV }],
 backgroundColor: colors[3],
 borderColor: colors[1],
 borderWidth: 4,
 pointBackgroundColor: colors[1]
}]
};

if (chLine) {
new Chart(chLine, {
type: 'line',
data: chartData,
options: {
 scales: {
   yAxes: [{
     ticks: {
       beginAtZero: false
     }
   }]
 },
 legend: {
   display: false
 }
}
});
}

</script>

<div class="sta" style="margin-top: -135px;">  

<div class="container" >
    <div class="row my-3">
        <div class="col">
            <h4>Certains Statistiques</h4>
        </div>
    </div>
    <div class="row py-2">
        <div class="col-md-4 py-1">
            <div class="card">
                <div class="card-body">
                    <canvas id="chDonut1"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-4 py-1">
             <div >
               <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="fa fa-flag text-primary border-primary"></i></div>
                            <div class="stat-content dib">
                                <div class="stat-text">Nombre Des Aéroport</div>
                                <div class="stat-digit">${ nbAe }</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# card -->
            </div>
        </div>
        <div class="col-md-4 py-1">
            <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="fa fa-plane text-warning border-warning"></i></div>
                            <div class="stat-content dib">
                                <div class="stat-text">Nombre Des Avions</div>
                                <div class="stat-digit">${ nbAv }</div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
</div>


<script>

/* chart.js chart examples */

//chart colors
var colors = ['#007bff','#28a745','#333333','#c3e6cb','#dc3545','#6c757d'];

/* 3 donut charts */
var donutOptions = {
cutoutPercentage: 85, 
legend: {position:'bottom', padding:5, labels: {pointStyle:'circle', usePointStyle:true}}
};

//donut 1
var chDonutData1 = {
 labels: ['Utilisateurs', 'Reservations', 'Vols'],
 datasets: [
   {
     backgroundColor: colors.slice(0,3),
     borderWidth: 0,
     data: [${ nbU }, ${ nbR }, ${ nbV }]
   }
 ]
};

var chDonut1 = document.getElementById("chDonut1");
if (chDonut1) {
new Chart(chDonut1, {
   type: 'pie',
   data: chDonutData1,
   options: donutOptions
});
}
</script>
         

</body>

</html>