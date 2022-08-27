<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html lang="en">
  <head>
	<!-- Template Stylesheet -->
	<link rel="stylesheet" href="../css/signup.css" />
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Registration - ABC Community Portal</title>
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
<!-- Registration Start -->
    <div class="main">
      <div class="container">
        <div class="signup-content">
          <div class="signup-img">
            <img src="../img/handshake.jpg" alt="" />
          </div>
          <div class="signup-form">
			<sp:form name="sign-up" class="register-form" id="register-form" action="myreg" method="POST" modelAttribute="vajresh">
				<div class="form-row">
                <div class="form-group">
                  <div class="form-input">
					<label for="firstname" class="required">First name</label>
					<sp:input path="firstname" type="text" id="fname" name="fname" />
					</div>
					<div class="form-input">
                    <label for="lastname" class="required">Last name</label>
                    <sp:input path="lastname" type="text" id="lname" name="lname" />
                  </div>
					<div class="form-input">
                    <label for="username" class="required">user name</label>
                    <sp:input path="username" type="text" id="username" name="username" />
                  </div>
					<div class="form-input">
                    <label for="email" class="required">Email</label>
                    <sp:input path="email" type="email" id="email" name="email" placeholder="@gmail.com" />
                  </div>
					<div class="form-input">
                    <label for="contact" class="required">Phone number</label>
                    <sp:input path="contact" type="number" id="contact" name="contact" />
                  </div>
       			</div>
       			<div class="form-group">
                  <div class="form-input">
                    <label for="country" class="required">Country</label>
                   <sp:input path="country" type="text" id="country" name="country" value="" />
                  </div>
       			 <div class="form-input">
                    <label for="password" class="required">password</label>
                    <sp:input path="password" type="password" id="password" name="password" value="" minlength="8" placeholder="Must have at least 8 characters." />
                  </div>
      		 </div>
              </div>
              <div class="form-submit">
                <input type="submit" value="Submit" class="submit" id="submit" name="submit" />
                <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
              </div>
		</sp:form>
	</div>
   </div>
  </div>
</div>
       <!-- Registration End -->



    <!-- Template Javascript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/nouislider/nouislider.min.js"></script>
    <script src="../vendor/wnumb/wNumb.js"></script>
    <script src="../vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="../vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="../js/signup.js"></script>
  </body>
</html>
