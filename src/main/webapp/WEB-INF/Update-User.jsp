<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Template Stylesheet -->
    <link rel="stylesheet" href="../css/styles.css" />
    <link rel="stylesheet" href="../css/profile.css" />

    <meta charset="ISO-8859-1">
    <title>Update User Profile - ABC Community Portal</title>
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

  </head>
<body>
<jsp:include page="Header-In-Admin.jsp"></jsp:include>
   
    <!-- Edit Profile -->
    <form action="update">
    <div class="container" style="margin: 50px 0 50px 100px">
      <div class="row gutters">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
          <div class="card h-100">
            <div class="card-body">
              <div class="account-settings" style="margin: 0 0px 20px 20px">
                <div class="user-profile">
                  <div class="user-avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" style="width: 200px; height: auto; margin-bottom: 20px" alt="Maxwell Admin" />
                  </div>
                  <h5 class="user-name">${username}</h5>
                  <h6 class="user-email" style="color: grey">${email}</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
          <div class="card h-100">
            <div class="card-body">
              <div class="row gutters">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                  <h6 class="mb-2 text-primary">Personal Details</h6>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="userid"  >User ID</label>
                    <input readonly type="text" id="userid" name="userid" type="text" class="form-control" id="userid" value="${updt.userid}"/>
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="eMail">Email</label>
                    <input type="email" class="form-control" placeholder="Email"  id="email" name="email" value="${updt.email}" />
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="phone">First Name</label>
                    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter first name" value="${updt.firstname}"   />
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="website">User Name</label>
                    <input readonly type="text" class="form-control" id="username" name="username" value="${updt.username}" />
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="website">Last Name</label>
                    <input type="text" class="form-control"  placeholder="Enter last name" id="lastname" name="lastname" value="${updt.lastname}" />
                  </div>
                </div>
              </div>
              <div class="row gutters">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                  <h6 class="mt-3 mb-2 text-primary">Contact & Address</h6>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="Street">Contact</label>
                    <input type="number"  class="form-control" placeholder="Enter phone number" id="contact" name="contact" value="${updt.contact}" />
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="ciTy">Country</label>
                    <input type="text" id="country" name="country" value="${updt.country}" class="form-control" placeholder="Enter Country" />
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="sTate">Role</label>
                    <input readonly type="text" id="role" name="role" value="${updt.role}" class="form-control"/>
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                  <div class="form-group">
                    <label for="zIp">Password</label>
                    <input readonly type="password" id="password" name="password" value="${updt.password}" class="form-control"  placeholder="Password" />
                  </div>
                </div>
              </div>
              <div class="row gutters" style="float: right; margin: 20px 0 0 0">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                  <div class="text-right">
                    <button type="button" id="submit" name="submit" class="btn btn-secondary">Cancel</button>
                    <button type="submit" value="Update" id="submit" name="submit" class="btn btn-primary">Update</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
    
    
<jsp:include page="Footer-In-Admin.jsp"></jsp:include>
<!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>

</body>
</html>
