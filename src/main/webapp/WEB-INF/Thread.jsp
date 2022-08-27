<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Thread - ABC Community Portal</title>
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
    <link rel="stylesheet" href="../css/thread.css" />
  </head>
<body>
<jsp:include page="My-Header-In.jsp"></jsp:include>

<!-- thread start-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" integrity="sha256-46r060N2LrChLLb5zowXQ72/iKKNiw/lAmygmHExk/o=" crossorigin="anonymous" />
    <div class="container" style="margin: 20px 0 0 100px">
      <div class="main-body p-0">
        <div class="inner-wrapper">
          <!-- Inner sidebar -->
          <div class="inner-sidebar">
            <!-- Inner sidebar header -->
            <div class="inner-sidebar-header justify-content-center">
              <button class="btn btn-primary has-icon btn-block" type="button" data-toggle="modal" data-target="#threadModal">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus mr-2">
                  <line x1="12" y1="5" x2="12" y2="19"></line>
                  <line x1="5" y1="12" x2="19" y2="12"></line>
                </svg>
                 <a href="/postthreaduser" style="color: white;">
                NEW DISCUSSION</a>
              </button>
            </div>
            <!-- /Inner sidebar header -->

            <!-- Inner sidebar body -->
            <div class="inner-sidebar-body p-0">
              <div class="p-3 h-100" data-simplebar="init">
                <div class="simplebar-wrapper" style="margin: -16px">
                  <div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div>
                  <div class="simplebar-mask">
                    <div class="simplebar-offset" style="right: 0px; bottom: 0px">
                      <div class="simplebar-content-wrapper" style="height: 100%; overflow: hidden scroll">
                        <div class="simplebar-content" style="padding: 16px">
                          <nav class="nav nav-pills nav-gap-y-1 flex-column">
                            <a href="javascript:void(0)" class="nav-link nav-link-faded has-icon active">All Threads</a>
                          </nav>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="simplebar-placeholder" style="width: 234px; height: 292px"></div>
                </div>
                <div class="simplebar-track simplebar-horizontal" style="visibility: hidden"><div class="simplebar-scrollbar" style="width: 0px; display: none"></div></div>
                <div class="simplebar-track simplebar-vertical" style="visibility: visible"><div class="simplebar-scrollbar" style="height: 151px; display: block; transform: translate3d(0px, 0px, 0px)"></div></div>
              </div>
            </div>
            <!-- /Inner sidebar body -->
          </div>
          <!-- /Inner sidebar -->

          <!-- Inner main -->
          <div class="inner-main">
            <!-- Inner main header -->
            <div class="inner-main-header">
              <a class="nav-link nav-icon rounded-circle nav-link-faded mr-3 d-md-none" href="#" data-toggle="inner-sidebar"><i class="material-icons">arrow_forward_ios</i></a>
              <select class="custom-select custom-select-sm w-auto mr-1">
                <option selected="">Latest</option>
              </select>
            </div>
            <!-- /Inner main header -->

            <!-- Inner main body -->

            <!-- Forum List-->
            <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">
            <dd:forEach var="thread" items="${viewthread}">
              <div class="card mb-2">
                <div class="card-body p-2 p-sm-3">
                  <div class="media forum-item">
                    <a href="#" data-toggle="collapse" data-target=".forum-content"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-circle" width="50" alt="User" /></a>
                    <div class="media-body">
                      <h6><a href="" data-toggle="collapse" data-target=".forum-content" class="text-body">${thread.username}</a></h6>
                      <p class="text-secondary"><a href="">${thread.threadMessage}</a></p>
                    </div>
                    <div class="text-muted small text-center align-self-center">
                      <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i></span>
                      <span><i class="far fa-comment ml-2"></i></span>
                    </div>
                  </div>
                </div>
              </div>
            </dd:forEach>
            </div>
            <!-- /Forum List --> 

        
    

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>
</html>