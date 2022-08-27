<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
     <%
    Integer uid = (Integer) request.getSession().getAttribute("jobid");
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Details Job Vacancy - ABC Community Portal</title>
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
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="../css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/admin.css" />
  </head>
<body>
<jsp:include page="My-Header-In.jsp"></jsp:include>

    <!-- Page Header Start -->
    <div><img src="../img/jobresult.jpg" style="width: 1519px; height: auto" alt="" /></div>

    <!-- Page Header End -->

    <!-- Feature Start -->
    <div style="margin: 0 0 0 300px">
      <div class="container-xxl py-5">
        <div class="container">
          <i class="bi bi-arrow-left"> <a href="/viewjob" style="text-decoration: none">Go Back To Jobs</a><br /><br /></i>
          <div class="row g-5">
            <div class="col-lg-10 wow fadeInUp" data-wow-delay="0.1s">
              <h1 class="display-5 mb-4"><a class="text-dark" href="">${job.jobTitle}</a></h1>
              <h4 class="text-primary m-0"><a href="">${job.jobAddress}</a></h4>
              <br />
              <br />

              <div style="display: flex; padding: 0 0 50px 0">
                <p><a class="text-dark" href="">${job.jobFamilyGroup}</a></p>
                <p style="padding: 0 10px 0 20px"><a class="text-dark" href="">${job.employeeType}</a></p>
                <p style="padding: 0 10px 0 10px"><a class="text-dark" href="">${job.experienceRange}</a></p>
              </div>
				<h3 class="mb-3">About</h3>
              <p class="mb-4">
               <a class="text-muted" href="">${job.about}</a>
              </p>

              <br />
              <div class="row g-4">
                <div class="col-12">
                  <h3 class="mb-3">Job Description</h3>
                  <p class="mb-0">
                    <a class="text-muted" href="">${job.jobDescription}</a>
                  </p>
                </div>
                <div class="col-12">
                  <h3 class="mb-3">Minimum Qualifications</h3>
                  <p class="mb-0">
                    <a class="text-muted" href="">${job.minimumQualification}</a>
                  </p>
                </div>
              </div>
              <br />
              <div class="col-12">
                <h3 class="mb-3">Preferred Skill Requirements</h3>
                <p class="mb-0">
                  <a class="text-muted" href="">${job.preferredSkill}</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Feature End -->
<jsp:include page="My-Footer-In.jsp"></jsp:include>
</body>
</html>