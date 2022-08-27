<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Search - ABC Community Portal</title>
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

     <style>
      body {
        font-family: Arial;
      }

      * {
        box-sizing: border-box;
      }

      form.example input[type='text'] {
        margin: 50px 0 0 0;
        padding: 10px;
        font-size: 17px;
        border: 1px solid grey;
        float: left;
        width: 80%;
        background: #f1f1f1;
      }

      form.example button {
        margin: 50px 0 0 0;
        float: left;
        width: 20%;
        padding: 10px;
        background: #2196f3;
        color: white;
        font-size: 17px;
        border: 1px solid grey;
        border-left: none;
        cursor: pointer;
      }

      form.example button:hover {
        background: #0b7dda;
      }

      form.example::after {
        content: '';
        clear: both;
        display: table;
      }
    </style>
</head>
<body>
<jsp:include page="Header-In-Admin.jsp"></jsp:include>

    <sf:form action="/searchusadmin" method="post" modelAttribute="searchu" class="example" style="margin: auto; max-width: 300px">
      <sf:input path="username" type="text" placeholder="Search.." name="search2" />
      <button type="submit"><i class="fa fa-search"></i></button>
    </sf:form>
<jsp:include page="Footer-In-Admin.jsp"></jsp:include>
</body>
</html>
