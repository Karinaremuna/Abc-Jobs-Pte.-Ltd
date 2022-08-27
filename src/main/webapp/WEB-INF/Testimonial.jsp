<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<!-- Template Stylesheet -->
	<!-- Template Stylesheet -->
	<link rel="stylesheet" href="../css/styles.css" />
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Testimonial - ABC Community Portal</title>
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
  
  <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="container py-5">
        <h1 class="display-1 text-white animated slideInDown">Testimonial</h1>
        <nav aria-label="breadcrumb animated slideInDown">
          <ol class="breadcrumb text-uppercase mb-0">
            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
            <li class="breadcrumb-item text-primary active" aria-current="page">Testimonial</li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px">
          <h4 class="section-title">Testimonial</h4>
          <h1 class="display-5 mb-4">Thousands Of Software Developers Who Trust Us And Our Services</h1>
        </div>
        <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
          <div class="testimonial-item text-center" data-dot="<img class='img-fluid' src='img/testimonial1.jpg' alt=''>">
            <p class="fs-5">"Highly recommended for software developers and programmers. I can make friends with fellow software developers and can improve my skills and also apply for jobs here, I really like this website!."</p>
            <h3>Brandon Decclan</h3>
            <span class="text-primary">Software Developer</span>
          </div>
          <div class="testimonial-item text-center" data-dot="<img class='img-fluid' src='img/testimonial2.jpg' alt=''>">
            <p class="fs-5">"I search and apply for jobs here very easily, this website is very easy to use."</p>
            <h3>Aaron London</h3>
            <span class="text-primary">Software Programmer</span>
          </div>
          <div class="testimonial-item text-center" data-dot="<img class='img-fluid' src='img/testimonial3.jpg' alt=''>">
            <p class="fs-5">"I can post jobs and get workers who already have skills, highly recommended for companies/startups that need workers."</p>
            <h3>Karina Reese</h3>
            <span class="text-primary"></span>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonial End -->

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