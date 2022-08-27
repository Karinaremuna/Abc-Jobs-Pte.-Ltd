<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
     <%
    Integer uid = (Integer) request.getSession().getAttribute("userid");
    %>
    	
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Public Profile - ABC Community Portal</title>
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

    <!-- Template Stylesheet -->
    <link href="../css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/profile.css" />
  </head>
<body>
<jsp:include page="Header-In-Admin.jsp"></jsp:include>

 
  <!-- profile -->
    <div class="container" style="margin: 50px 0 0 100px">
      <div class="profile-env">
        <header class="row">
          <div class="col-sm-2">
            <a href="#" class="profile-picture"> <img src="https://bootdey.com/img/Content/avatar/avatar7.png" style="width: 130px; height: auto; border-radius: 100px" class="img-responsive img-circle" /> </a>
          </div>
          <div class="col-sm-7" style="margin: 35px 0 0">
            <ul class="profile-info-sections">
              <li>
                <div class="profile-name">
                  <strong>
                    <a href="#" class="name">${username}</a><br />
                    <a href="#" class="user-status is-online tooltip-primary" data-toggle="tooltip" data-placement="top" data-original-title="Online"></a>
                  </strong>
                  <span>
                    <a href="#" class="title">Software Developer</a>
                  </span>
                </div>
              </li>
            </ul>
          </div>
        </header>
        <section class="profile-info-tabs" style="background-color: #f2f2f2; padding: 10px 0 20px 220px">
          <div class="row">
            <div class="col-sm-offset-2 col-sm-10">
              <ul class="user-details">
                <li>
                  <a href="#">
                    <i class="entypo-calendar"></i>
                    ${email}
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="entypo-location"></i>
                    ${country}
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="entypo-suitcase"></i>
                    Works as
                    <span>Software Developer</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="entypo-calendar"></i>
                    ${contact}
                  </a>
                </li>
              </ul>
              <!-- tabs for the profile links -->
              <ul class="nav nav-tabs">
                <li>
                 <a href="/updateProfile-admin/${userid}">
                  <button class="editprofilebtn">Edit Profile</button>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </section>
        <section class="profile-feed" style="margin: 20px 0 0 45px">
          <!-- profile post form -->
          <form class="profile-post-form" method="post" style="width: 1200px">
            <textarea class="form-control autogrow" placeholder="What's on your mind?" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 80px"></textarea>
            <div class="form-options">
              <div class="post-type">
                <a href="#" class="tooltip-primary" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Upload a Picture">
                  <i class="entypo-camera"></i>
                </a>
                <a href="#" class="tooltip-primary" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Attach a file">
                  <i class="entypo-attach"></i>
                </a>
                <a href="#" class="tooltip-primary" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Check-in">
                  <i class="entypo-location"></i>
                </a>
              </div>
              <div class="post-submit" style="background-color: #f2f2f2; height: 60px">
              <button type="button" class="btn btn-primary" style="float: right; margin: 10px 0 0 0">POST</button>
              </div>
            </div>
          </form>
        </section>
      </div>
    </div>
  
<jsp:include page="Footer-In-Admin.jsp"></jsp:include>
<!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>
</html>