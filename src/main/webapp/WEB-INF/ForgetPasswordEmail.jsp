<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Template Stylesheet -->
	<link rel="stylesheet" href="../css/styles.css" />
	<link rel="stylesheet" href="../css/style.css" />
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Verify Email - ABC Community Portal</title>
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
 <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
      <a href="/" class="navbar-brand ms-4 ms-lg-0">
        <h1 class="text-primary m-0"><img class="me-3" src="img/icons/icon-1.jpeg" alt="Icon" style="width: 60px" />Abcommunity</h1>
      </a>
      <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
          <a href="/" class="nav-item nav-link active">Home</a>
          <a href="/about" class="nav-item nav-link">About</a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
            <div class="dropdown-menu border-0 m-0">
              <a href="/feature" class="dropdown-item">Our Features</a>
              <a href="/testimonial" class="dropdown-item">Testimonial</a>
            </div>
          </div>
          <a href="/contact" class="nav-item nav-link">Contact</a>
          <a href="/register" class="nav-item nav-link">Sign Up</a>
        </div>
        <a href="/login" class="btn btn-primary py-2 px-4 d-none d-lg-block">Sign In</a>
      </div>
    </nav>
    <!-- Navbar End -->
    <!-- email confirmation -->
    <section class="fpemail">
      <h3>Forgot Password</h3>
      <p>Enter your email and we'll send you a verification code <br />to reset your password.</p>
      <br />
      <form action="/verifcode" name="submitemail"  method="get" onsubmit="return validateForm()">
      <input type="email" class="email"  id="email" name="email" required/> <br />
      <br /><br />
      <button type="submit">SUBMIT</button><br />
    </form>
      <a href="/login"> > Back to login</a>
    </section>
    
    <!-- footer -->
     <jsp:include page="My-Footer.jsp"></jsp:include>
    <!-- end of footer -->
    
    <script>
      function validateForm() {
        if (document.forms['submitemail']['email'].value == '') {
          alert("Please enter your email address!");
          document.forms['submitemail']['email'].focus();
          return false;
        }
      }
    </script>
    
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
