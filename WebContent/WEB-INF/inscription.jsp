<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/animate.css" />
		<link rel="stylesheet" href="assets/css/hover-min.css">
		<link rel="stylesheet"  href="assets/css/datepicker.css" >
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>
        <link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/bootsnav.css"/>
		<link rel="stylesheet" href="assets/css/style.css" />
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 40%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;

}

input[type=submit] {
  background-color: #00d8ff;;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
   margin-left: 680px;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container{
  margin-top: 250px;
    margin-left: 350px;
}

.col-25 {
  float: left;
  width: 20%;
  margin-top: 6px;
}

.col-75 {
  

  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
span
{
color:blue;}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body> 
<section id="home" class="about-us" style="align-items: first baseline;">
			<div class="container">
				<div class="about-us-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="single-about-us">
								<div class="about-us-txt">
							
									<form method="post" action="GestionUtilis">
                                      <div class="row">
                                        <div class="col-25">
                                                <label for="fname">Nom</label>
                                        </div>
                                        <div class="col-75">
                                                <input type="text" id="fname" name="nom" placeholder="Enter votre nom" value="${utilisateur.nom}">
                                                <br><span>${form.erreurs['nom']}</span> 
                                         </div>
                                       </div>
                                       <div class="row">
                                         <div class="col-25">
                                                 <label for="lname">Prénom</label>
                                       </div>
                                       <div class="col-75">
                                       <input type="text" id="lname" name="prenom" placeholder="Entrer votre prenom" value="${utilisateur.prenom}">
                                       <br><span>${form.erreurs['prenom']}</span>
                                       </div>
                                      </div>
                                      
                          
                                       
                                      <div class="row">
                                         <div class="col-25">
                                                 <label for="lname">Numero Téléphone</label>
                                       </div>
                                       <div class="col-75">
                                       <input type="text" id="lname" name="telephone" placeholder="Votre telephone"value="${utilisateur.telephone}">
                                       <br> <span>${form.erreurs['telephone']}</span>
                                       </div>
                                      </div>
                                      
                                      
                                      <div class="row">
                                         <div class="col-25">
                                                 <label for="lname">Email</label>
                                       </div>
                                       <div class="col-75">
                                       <input type="text" id="lname" name="email" placeholder="Entrer votre email" value="${utilisateur.email}">
                                       <br> <span>${form.erreurs['email']}</span>
                                       </div>
                                      </div>
                                      
                                      <div class="row">
                                         <div class="col-25">
                                                 <label for="lname">mots de passe</label>
                                       </div>
                                       <div class="col-75">
                                       <input type="text" id="lname" name="mdp" placeholder="Entrer votre mots de passe " >
                                       </div>
                                      </div>
                                    <span> ${form.resultat}</span> 
                                  <div class="row">
                                      <input type="submit" value="Submit">
                                   </div>
                                 </form>
									
								</div>
							</div>
						</div>
						<div class="col-sm-0">
							<div class="single-about-us">	
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

 
</body>
</html>