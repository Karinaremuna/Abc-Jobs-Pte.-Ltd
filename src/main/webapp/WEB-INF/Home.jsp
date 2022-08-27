	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Template Stylesheet -->
	<link rel="stylesheet" href="../css/styles.css" />
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Home Page - ABC Community Portal</title>
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
<body >

  <jsp:include page="My-Header.jsp"></jsp:include>


 <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative" data-dot="<img src='img/carousel1.jpg'>">
          <img class="img-fluid" src="img/carousel1.jpg" alt="" />
          <div class="owl-carousel-inner">
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-10 col-lg-8">
                  <h1 class="display-1 text-white animated slideInDown">Best Software Developers Community</h1>
                  <p class="fs-5 fw-medium text-white mb-4 pb-3">An online community supporting software developers to learn and find jobs and friends</p>
                  <a href="/login" class="btn btn-primary py-3 px-5 animated slideInLeft">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="owl-carousel-item position-relative" data-dot="<img src='img/carousel2.jpg'>">
          <img class="img-fluid" src="img/carousel2.jpg" alt="" />
          <div class="owl-carousel-inner">
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-10 col-lg-8">
                  <h1 class="display-1 text-white animated slideInDown">Best Software Developers Community</h1>
                  <p class="fs-5 fw-medium text-white mb-4 pb-3">An online community supporting software developers to learn and find jobs and friends</p>
                  <a href="/login" class="btn btn-primary py-3 px-5 animated slideInLeft">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="owl-carousel-item position-relative" data-dot="<img src='img/carousel3.jpg'>">
          <img class="img-fluid" src="img/carousel3.jpg" alt="" />
          <div class="owl-carousel-inner">
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-10 col-lg-8">
                  <h1 class="display-1 text-white animated slideInDown">Best Software Developers Community</h1>
                  <p class="fs-5 fw-medium text-white mb-4 pb-3">An online communtiy supporting software developers to learn and find jobs and friends</p>
                  <a href="/login" class="btn btn-primary py-3 px-5 animated slideInLeft">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- Facts Start -->
    <div class="container-xxl py-5">
      <div class="container pt-5">
        <div class="row g-4">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="fact-item text-center bg-light h-100 p-5 pt-0">
              <div class="fact-icon">
                <img src="img/icons/icon-4.png" alt="Icon" />
              </div>
              <h3 class="mb-3">Apply For Jobs</h3>
              <p class="mb-0">Software Developers/Programmers can post and apply for jobs.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="fact-item text-center bg-light h-100 p-5 pt-0">
              <div class="fact-icon">
                <img src="img/icons/icon-3.png" alt="Icon" />
              </div>
              <h3 class="mb-3">Learn New Skill</h3>
              <p class="mb-0">Learn new skills with other fellow Software Developers/Programmers.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="fact-item text-center bg-light h-100 p-5 pt-0">
              <div class="fact-icon">
                <img src="img/icons/icon-2.png" alt="Icon" />
              </div>
              <h3 class="mb-3">Connect With Friends</h3>
              <p class="mb-0">Connect with other fellow Software Developer/Programmer.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Facts End -->

    <!-- About Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
            <div class="about-img">
              <img class="img-fluid" src="img/about-2.jpg" alt="" />
              <img class="img-fluid" src="img/about-1.jpg" alt="" />
            </div>
          </div>
          <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
            <h4 class="section-title">About Us</h4>
            <h1 class="display-5 mb-4">A Job Community Portal For Your Dream Job</h1>
            <p>
              We are community where happiness is presented to every human and other living things related to this community. Rather than thinking of communities as something with asset value, we create new values that will lead us to a new
              stage towards the future. That is the type of community we are aiming for.
            </p>
            <p class="mb-4">We are involved in building bridges between people who want to work together to find work and friends. That is our mission and our challenge.</p>
            <div class="d-flex align-items-center mb-5">
              <div class="d-flex flex-shrink-0 align-items-center justify-content-center border border-5 border-primary" style="width: 120px; height: 120px">
                <h1 class="display-1 mb-n2" data-toggle="counter-up">10</h1>
              </div>
              <div class="ps-4">
                <h3>Years</h3>
                <h3>Working</h3>
                <h3 class="mb-0">Experience</h3>
              </div>
            </div>
            <a class="btn btn-primary py-3 px-5" href="">Read More</a>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Team Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px">
          <h4 class="section-title">ABC Developer Team</h4>
          <h1 class="display-5 mb-4">We Are The Development Team For Your Community Portal</h1>
        </div>
        <div class="row g-0 team-items">
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="team-item position-relative">
              <div class="position-relative">
                <img class="img-fluid" src="img/team-1.jpg" alt="" />
                <div class="team-social text-center">
                  <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                </div>
              </div>
              <div class="bg-light text-center p-4">
                <h3 class="mt-2">Lodyn Abree</h3>
                <span class="text-primary">Developer of Abc Jobs Community Portal</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="team-item position-relative">
              <div class="position-relative">
                <img class="img-fluid" src="img/team-2.jpg" alt="" />
                <div class="team-social text-center">
                  <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                </div>
              </div>
              <div class="bg-light text-center p-4">
                <h3 class="mt-2">Brandon Decclan</h3>
                <span class="text-primary">Developer of Abc Jobs Community Portal</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="team-item position-relative">
              <div class="position-relative">
                <img class="img-fluid" src="img/team-3.jpg" alt="" />
                <div class="team-social text-center">
                  <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                </div>
              </div>
              <div class="bg-light text-center p-4">
                <h3 class="mt-2">Holden Caprio</h3>
                <span class="text-primary">Developer of Abc Jobs Community Portal</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
            <div class="team-item position-relative">
              <div class="position-relative">
                <img class="img-fluid" src="img/team-4.jpg" alt="" />
                <div class="team-social text-center">
                  <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                </div>
              </div>
              <div class="bg-light text-center p-4">
                <h3 class="mt-2">Tessa Oakly</h3>
                <span class="text-primary">Developer of Abc Jobs Community Portal</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team End -->

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