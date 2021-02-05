<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css1/style.css" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

    
    <title>Ajouter Admin</title>
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
  
    <div class="container"  style="max-width: 360px;">  
      <div style="color :green"> <h5> ${form.resultat}	</h5></div>  
      <br> <br>
    
        <h4 class="titre"><strong>Ajouter Admin</strong></h4>
        <p></p>
    <form method="post" action="GestionA">
     
    
        <div class="mb-3">
            <label for="nom" class="form-label">Nom </label>
            <div class="input-group flex-nowrap">
                 <input type="text" class="form-control" placeholder="Nom" name="nom" id="nom" aria-describedby="" value="${admin.nom}">
                 <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
                 <p><span>${form.erreurs['nom']}</span></p> 
            </div>
           
        </div>

        <div class="mb-3">
            <label for="pre" class="form-label">Prénom </label>
            <div class="input-group flex-nowrap">
                <input type="text" class="form-control" placeholder="Prénom" name="prenom" id="pre" aria-describedby="" value="${admin.prenom}"> 
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user"></i></span>
                <p><span>${form.erreurs['prenom']}</span> 
           </div>
           
        </div>

        

        <div class="mb-3">
            <label for="tel" class="form-label">téléphone </label>
            <div class="input-group flex-nowrap">
                <input type="text" class="form-control" placeholder="téléphone" id="tel" name="telephone" aria-describedby="" value="${admin.telephone}">
                <span class="input-group-text" id="addon-wrapping"><i class="fas fa-phone"></i></span>
                <p><span>${form.erreurs['telephone']}</span></p> 
           </div>

        </div>

        

        <div class="mb-3">
          <label for="email" class="form-label">Email </label>
          <div class="input-group flex-nowrap">
               <input type="email" class="form-control" placeholder="Email" id="email" name="email" aria-describedby="emailHelp" value="${admin.email}">
            <span class="input-group-text" id="addon-wrapping"><i class="fas fa-envelope-open"></i></span>
            <p><span>${form.erreurs['email']}</span> </p>
       </div>
          
        </div>
      
        

        <div class="mb-3">
          <label for="password" class="form-label">Mot de Passe</label>
          <div class="input-group flex-nowrap">
                <input type="password" class="form-control" placeholder="Mot de passe" name="mdp" id="password">
            <span class="input-group-text" id="addon-wrapping"><i class="fas fa-key"></i></span>
            <p><span>${form.erreurs['mdp']}</span> </p>
       </div>
         
        </div>
        <div class="mb-3">
        <button type="submit" class="btn btn-primary btn-block">Crée Compte</button>
        </div>
      </form>
   </div>
</body>
</html>