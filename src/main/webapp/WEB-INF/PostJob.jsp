<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="ISO-8859-1">
    <title>Posting Job Vacancy - ABC Community Portal</title>
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
  </head>
<body>
<jsp:include page="Header-In-Admin.jsp"></jsp:include>
	<!-- post jobs start -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <div class="container" style="margin-top: 20px; background: #f8f8f8">
      <div class="row flex-lg-nowrap">
        <div class="col">
          <div class="row">
            <div class="col mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="e-profile">
                    <div class="row">
                      <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                        <div class="text-center text-sm-left mb-2 mb-sm-0">
                          <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">Job Vacancy Form</h4>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-content pt-3">
                      <div class="tab-pane active">
                        <sp:form name="job" class="job-form" id="job-form" action="/viewjob-admin" method="POST" modelAttribute="job">
                          <div class="row">
                            <div class="col">
                              <div class="row">
                                <div class="col">
                                  <div class="form-group">
                                    <label for="jobTitle">Jobs Title</label>
                                    <sp:input path="jobTitle" class="form-control" type="text" id="jobTitle" name="jobTitle" />
                                  </div>
                                </div>
                                <div class="col">
                                  <div class="form-group">
                                    <label for="jobAddress">Address</label>
                                    <sp:input path="jobAddress" class="form-control" type="text" id="jobAddress" name="jobAddress"  />
                                  </div>
                                </div>
                              </div>
                              <div class="row" style="margin-top: 20px;">
                                <div class="col">
                                  <div class="form-group">
                                    <label for="jobFamilyGroup">Job Family Group</label>
                                    <sp:input path="jobFamilyGroup" class="form-control" type="text" id="jobFamilyGroup" name="jobFamilyGroup"  />
                                 </div>
                                 </div>
                                 <div class="col">
                                  <div class="form-group">
                                    <label for="jobVacancyLink">Apply Job Vacancy Link</label>
                                    <sp:input path="jobVacancyLink" class="form-control" type="text" id="jobVacancyLink" name="jobVacancyLink"  />
                                  </div>
                                </div>
                              </div>
                              <div class="row" style="margin-top: 20px;">
                                <div class="col mb-3">
                                  <div class="form-group">
                                    <label for="about">About</label>
                                    <sp:textarea value="textbox" path="about" class="form-control" id="about" name="about"  rows="5" ></sp:textarea>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="row">
                              <div class="col mb-3">
                                <div class="form-group">
                                  <label for="jobDescription">Job Description : </label>
                                  <sp:textarea value="textbox" path="jobDescription" class="form-control" id="jobDescription" name="jobDescription" rows="5"></sp:textarea>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col mb-3">
                                <div class="form-group">
                                  <label for="minimumQualification">Minimum Qualifications : </label>
                                  <sp:textarea value="textbox"  path="minimumQualification" class="form-control" id="minimumQualification" name="minimumQualification" rows="5"></sp:textarea>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col mb-3">
                                <div class="form-group">
                                  <label for="preferredSkill">Preferred Skill Requirements : </label>
                                  <sp:textarea value="textbox"  path="preferredSkill" class="form-control" id="preferredSkill" name="preferredSkill" rows="5"></sp:textarea>
                                </div>
                              </div>
                            </div>
                       		  <div class="mb-2"><b>Employee Type</b></div>
                              <div class="row">
                                <div class="col">
                                  <div class="custom-controls-stacked px-2">
                                    <div class="custom-control custom-checkbox">
                                      <sp:checkbox value="Full-Time Employee" path="EmployeeType" class="custom-control-input" id="notifications-blog"></sp:checkbox>
                                      <label class="custom-control-label" for="notifications-blog">Full-Time Employee</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <sp:checkbox value="Part-Time Employee" path="EmployeeType" class="custom-control-input" id="notifications-news"></sp:checkbox>
                                      <label class="custom-control-label" for="notifications-news">Part-Time Employee</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <sp:checkbox value="Temporary Employee" path="EmployeeType" class="custom-control-input" id="notifications-offers"></sp:checkbox>
                                      <label class="custom-control-label" for="notifications-offers">Temporary Employee</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <sp:checkbox value="Intern" path="EmployeeType"  class="custom-control-input" id="notifications-offers"></sp:checkbox>
                                      <label class="custom-control-label" for="notifications-offers">Intern</label>
                                    </div>
                                    </div>
                                </div>
                                
                                <div class="mb-2" style="margin-top: 20px;"><b>Experience range</b></div>
                              <div class="row">
                                <div class="col">
                                  <div class="custom-controls-stacked px-2">
                                    <div class="custom-control custom-checkbox">
                                      <sp:radiobutton  value="0-1 year" path="ExperienceRange" class="custom-control-input" id="notifications-blog" name="experience range"></sp:radiobutton>
                                      <label class="custom-control-label" for="notifications-blog">0-1 year</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <sp:radiobutton value="1-3 years" path="ExperienceRange" class="custom-control-input" id="notifications-news" name="experience range"></sp:radiobutton>
                                      <label class="custom-control-label" for="notifications-news">1-3 years</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <sp:radiobutton  value="3-5 years" path="ExperienceRange" class="custom-control-input" id="notifications-offers" name="experience range"></sp:radiobutton>
                                      
                                      <label class="custom-control-label" for="notifications-offers">3-5 years</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <sp:radiobutton value="5+ years" path="ExperienceRange"  class="custom-control-input" id="notifications-offers" name="experience range" ></sp:radiobutton>
                                      <label class="custom-control-label" for="notifications-offers">5+ years</label>
                                    </div>
                                    
                                  </div>
                                </div>
                              </div>
                           
                            </div>
                          </div>
                          <div class="row">
                            <div class="col d-flex justify-content-end">
                            <button class="btn btn-primary" id="submit" name="Post">Post</button>
                            </div>
                           
                          </div>
                        </sp:form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- post jobs end  -->
<jsp:include page="Footer-In-Admin.jsp"></jsp:include>

</body>
</html>