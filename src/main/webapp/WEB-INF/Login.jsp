<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
 <meta charset="ISO-8859-1">
 <!-- Template Stylesheet -->
    <link href="../css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/signin.css" />
    
    <title>Login - ABC Community Portal</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&family=Teko:wght@400;500;600&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    
  </head>
<body>
   <jsp:include page="My-Header.jsp"></jsp:include>
         <!-- reg form -->
     <div class="regform">
      <h4 class="regtitle">Login</h4>
      <form name="login" class="form" action="login" method="POST">
      <div>
        <label for="username">User Name:</label><br>
        <input autocomplete="off" type="text" id="username" name="username" required /><br />
        <div class="invalid-feedback">A valid username is required!</div>
        </div>
        <div>
        <label for="Password">Password:</label><br>
        <input autocomplete="off" id="password" name="password" value="" minlength="8" type="password" required  />
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="invalid-feedback">Password must be 8 character!</div>
        <div>
          <button type="submit">Login</button>
          </div>
          <div class="forpass"><a style="text-decoration: none; float: right;margin: 150px 30px 0 0px; color: grey;" href="/verifemail">Forget Password?</a></div>
        </div>
        
		
      </form>
    </div>
    <!-- end of reg form -->
    <!-- import img  -->
    <img class="handshake" src="../img/12.jpeg" />
    <!-- end of import img -->
    
      <!-- footer -->
     <jsp:include page="My-Footer.jsp"></jsp:include>
    <!-- end of footer -->
    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>
</html>