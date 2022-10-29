<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Car Park</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/views/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<c:url value='/views/vendor/metisMenu/metisMenu.min.css'/>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value='/views/dist/css/sb-admin-2.css'/>" rel="stylesheet">
    <link href="<c:url value='/views/style.css'/>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<c:url value='/views/vendor/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">

</head>

<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><i class="fa fa-users" aria-hidden="true"></i> Employee</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">

                <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/account/${pageContext.request.remoteUser}">Welcome ${pageContext.request.remoteUser}</a>
                </li>
                
                <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.navbar-top-links -->


        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"> Edit Profile</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

            <form:form action="${pageContext.request.contextPath}/" method="post" modelAttribute="employee">
                <form:hidden path="employeeId"/>
                <div class="row pt-15">
                    <label for="full_name" class="col-lg-2 col-form-label">Full name <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="employeeName" class="form-control" id="full_name" type="text" placeholder="Enter full name" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="phone_number" class="col-lg-2 col-form-label">Phone number <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="employeePhone" class="form-control" id="phone_number" type="text" placeholder="Enter phone number" required="required" maxlength="11"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="birth_date" class="col-lg-2 col-form-label">Date of birth <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="employeeBirthdate" class="form-control" id="birth_date" type="date" placeholder="Enter date of birth" required="required"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="sex" class="col-lg-2 col-form-label">Sex <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                        <form:radiobutton path="sex" class="form-check-input"  name="male" id="male" value="0" checked="checked"/>
                        <label class="form-check-label" for="male">Male</label>
                        <form:radiobutton path="sex" class="form-check-input"  name="female" id="female" value="1"/>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="address" class="col-lg-2 col-form-label">Address</label>
                    <div class="col-lg-3">
                      <form:input path="employeeAddress" class="form-control" id="address" type="text" placeholder="Enter address" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="phone_number" class="col-lg-2 col-form-label">Email</label>
                    <div class="col-lg-3">
                      <form:input path="employeeEmail" class="form-control" id="phone_number" type="text" placeholder="Enter phone number" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="account" class="col-lg-2 col-form-label">Account <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="account" class="form-control" id="account" type="text" placeholder="Enter account" required="required" maxlength="50"/>
                    </div>
                </div>


                <form:hidden path="department"/>

                <div class="row pt-15">
                    <label for="Password" class="col-lg-2 col-form-label">Password  </label>
                    <div class="col-lg-3">
                      <form:input path="password" class="form-control" id="Password" type="password" placeholder="Enter Password"  minlength="8" maxlength="50"/>
                    </div>
                </div>
                <div class="row pt-15">
                    <label for="Confirm Password" class="col-lg-2 col-form-label">Confirm Password  </label>
                    <div class="col-lg-3">
                      <form:input path="confirmPassword" class="form-control" id="Re-Password" type="password" placeholder="Enter Password"  minlength="8" maxlength="50" onkeyup="check()"/>
                      
                    </div>
                    <span id='message'></span>
                </div>
                <div class="form-group pt-30">
                  <div class="form-row">
                      <div class="col-lg-5" align="center">
                            <form:button type="reset" class="btn btn-warning"><i class="fa fa-undo"></i> Reset</form:button>
                            <form:button type="submit" class="btn btn-success"><i class="fa fa-plus"></i> Save</form:button>
                      </div>
                  </div>
                </div>

            </form:form>

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

     <!-- jQuery -->
     <script src="<c:url value='/views/vendor/jquery/jquery.min.js'/>"></script>

     <!-- Bootstrap Core JavaScript -->
     <script src="<c:url value='/views/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
 
     <!-- Metis Menu Plugin JavaScript -->
     <script src="<c:url value='/views/vendor/metisMenu/metisMenu.min.js'/>"></script>
 
     <!-- Custom Theme JavaScript -->
     <script src="<c:url value='/views/dist/js/sb-admin-2.js'/>"></script>

     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

     <script src="<c:url value='/views/dist/js/alert.js'/>"></script>

     <script>
        document.getElementById('Password').value = '';
     </script>
</body>

</html>
