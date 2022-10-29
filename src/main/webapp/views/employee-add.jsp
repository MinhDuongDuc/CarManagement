<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
        <jsp:include page="sidebar.jsp" />

        <!-- Navigation -->
        
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"> Add Employee</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

            <form:form action="${pageContext.request.contextPath}/employee/add" method="post" modelAttribute="employee">
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

                <!-- <div class="row pt-15">
                    <label for="Password" class="col-lg-2 col-form-label">Password <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="password" class="form-control" id="Password" type="password" placeholder="Enter Password" required="required" minlength="8" maxlength="50"/>
                    </div>
                </div> -->
                <form:hidden path="password"/>
                <div class="row pt-15">
                    <label for="department" class="col-lg-2 col-form-label">Department <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                        
                      <form:select path="department" class="form-control" id="department" type="text" required="required">
                        <c:forEach items="${deptList}" var="dept">
                            <form:option value="${dept.deptId}">${dept.deptName}</form:option>
                        </c:forEach>
                      </form:select>
                    </div>
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
</body>

</html>
