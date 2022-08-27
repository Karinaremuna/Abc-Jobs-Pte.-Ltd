<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Page - ABC Community Portal</title>
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
  </head>
<body>
<jsp:include page="Header-In-Admin.jsp"></jsp:include>

 <!-- view job start -->
  <dd:forEach var="user" items="${testv}">
    <div>
      <div class="viewjob1" style="height: 180px">
        <div class="vj1">
       
          <h3 class="display-7 mb-1 m-0"><a class="text-dark" href="">${user.username}</a></h3>
          <h4 class="display-7 mb-1 text-primary m-0"><a href="">${user.email}</a></h4>
          <h5 class="display-7 mb-1  m-0"><a class="text-muted" href="">${user.contact}</a></h5>
          <p ><a class="text-muted" href="">${user.country}</a></p>
         
        </div>

        <div style="margin-top: -30px">
        <button type="button" id="submit" name="submit" class="btn btn-danger"><a href="/deleteUser/${user.userid}" style="color: white;">Delete</a></button>
        <a style="margin-left: 800px" href="/updateUser/${user.userid}" class="btn btn-primary">Update</a>
        
      </div> 
    </div>
    </dd:forEach>
    
    <!-- view job end  -->
   <div style="margin-top: 500px">
<jsp:include page="Footer-In-Admin.jsp"></jsp:include>
</div>
<!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>
</html>