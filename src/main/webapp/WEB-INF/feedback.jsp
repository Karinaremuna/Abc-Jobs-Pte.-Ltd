<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css" />
	<meta charset="ISO-8859-1">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Feedback and Suggestion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
</head>
<body>
 <jsp:include page="my-header-in.jsp"></jsp:include>
<h3 style="text-align:center; margin: 20px 0 50px 0;">Please use this form both for suggesting improvements <br> To processes and for providing feedback to our company services</h3>

    <form style="margin: 0 0 0 600px;">
      <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label"> Enter your email:</label>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="inputEmail3" placeholder="Email" style="margin: 10px 0 10px 0; width: 300px; height: 20px;" />
        </div>
      </div>
      <form>
        <div class="form-group row">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Enter your username:</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="inputEmail3" placeholder="User Name" style="margin: 10px 0 10px 0; width: 300px; height: 20px;" />
          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">Please give your feedback below:</label><br>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" style="margin: 10px 0 10px 0; width: 300px; height: 80px;"></textarea>
          </div>
      <div class="form-group row">
        <div class="col-sm-10">
          <button type="submit" class="btn btn-primary" style="margin: 20px 0 0 80px; ;">Send</button>
        </div>
      </div>
    </form>
</body>
</html>