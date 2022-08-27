<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
    <title>Bulk Email - ABC Community Portal</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="../img/favicon.ico" rel="icon" />

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
    <link rel="stylesheet" href="../css/bulk.css" />
  </head>
<body>
<jsp:include page="Header-In-Admin.jsp"></jsp:include>

	<div class="container">
      <div class="row">
        <!-- BEGIN INBOX -->
        <div class="col-md-12">
          <div class="grid email">
            <div class="grid-body">
              <div class="row">
                <!-- BEGIN INBOX MENU -->
                <div class="col-md-3">
                  <a href="/bulkemail" class="btn btn-block btn-primary" data-toggle="modal" data-target="#compose-modal"><i class="fa fa-pencil"></i>&nbsp;&nbsp;NEW MESSAGE</a>

                  <hr />

                  <div>
                    <ul class="nav nav-pills nav-stacked">
                      <li class="active">
                        <a href="#"><i class="fa fa-mail-forward"></i> Sent</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- END INBOX MENU -->

                <!-- BEGIN INBOX CONTENT -->
                <div class="col-md-9">
                  <div class="row">
                    <div class="col-sm-6">
                      <label style="margin-right: 8px" class="">
                        <div class="icheckbox_square-blue" style="position: relative">
                          <input
                            type="checkbox"
                            id="check-all"
                            class="icheck"
                            style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255)"
                          /><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255)"></ins>
                        </div>
                      </label>
                    </div>

                    <div class="col-md-6 search-form">
                      <form action="#" class="text-right">
                        <div class="input-group">
                          <input type="text" class="form-control input-sm" placeholder="Search" />
                          <span class="input-group-btn">
                            <button type="submit" name="search" class="btn_ btn-primary btn-sm search"><i class="fa fa-search"></i></button
                          ></span>
                        </div>
                      </form>
                    </div>
                  </div>

                  <div class="padding"></div>
					 
                  <div class="table-responsive" style="margin-top: 30px">
                    <table class="table">
                     <thead >
      					<tr>
       					 <th>Recipients</th>
       					 <th>Subject</th>
      					  <th>Date/Time </th>

    				  </tr>
     				 </thead>
                      <tbody>
                      
                  		<dd:forEach var="bulkemail" items="${bulkemail}">
                        <tr>
                         
                          <td class="name">${bulkemail.recipients}</td>
                          <td class="subject">${bulkemail.subject}</td>
                          <td class="time">Date/Time</td>
                        </tr>
                       </dd:forEach>
                      </tbody>
                    </table>
                  </div>
                  
                </div>
                <!-- END INBOX CONTENT -->
              </div>
            </div>
          </div>
        </div>
        <!-- END INBOX -->
      </div>
    </div>
<jsp:include page="Footer-In-Admin.jsp"></jsp:include>

</body>
</html>