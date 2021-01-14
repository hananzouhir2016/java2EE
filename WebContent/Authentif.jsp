<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
      <title>Authentification Admin</title>
      <link rel="stylesheet" href="test_style.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
  </head>

  <body>


    <div class="show-login-btn"><i class="fas fa-sign-in-alt"></i> Show Login Form</div>
    

    <div class="login-box">
        <div class="hide-login-btn"><i class="fas fa-times"></i></div>


      <form class="box" action="index.html" method="post">
          <h1>Bienvenu</h1>
             <input type="email" name="" placeholder="Username" required="required">
             <input type="password" name="" placeholder="Password" required="required">
             <input type="submit" name="" value="Login">
      </form>

    </div>


            <script type="text/javascript">
          $(".show-login-btn").on("click",function(){
            $(".login-box").toggleClass("showed");
          });
          $(".hide-login-btn").on("click",function(){
            $(".login-box").toggleClass("showed");
          });
          </script>

  </body>

</html>