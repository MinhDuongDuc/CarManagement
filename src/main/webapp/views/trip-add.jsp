<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
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
        <jsp:include page="sidebar.jsp" />
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Add Trip</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

            <form:form action="${pageContext.request.contextPath}/trip/add" method="post" modelAttribute="trip">
                <form:hidden path="tripId"/>
                <div class="row pt-15">
                    <label for="destination" class="col-lg-2 col-form-label">Destination <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="destination" class="form-control" id="destination" type="text" placeholder="Enter destination" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="departure_time" class="col-lg-2 col-form-label">Departure time <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="depaturTime" class="form-control" id="departure_time" type="time" placeholder="Enter departure time" required="required"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="driver" class="col-lg-2 col-form-label">Driver <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="driver" class="form-control" id="driver" type="text" placeholder="Enter driver" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="car_type" class="col-lg-2 col-form-label">Car type <span class="red">(*)</span></label>
                    <div class="col-lg-3">
                      <form:input path="carType" class="form-control" id="car_type" type="text" placeholder="Enter car type" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="maximum_online_ticket_number" class="col-lg-2 col-form-label">Maximum online ticket number <span class="red">(*)</span></label>
                    <div class="col-lg-3">
                      <form:input path="maxTicket" class="form-control" id="maximum_online_ticket_number" type="number" placeholder="Enter maximum online ticket number" required="required"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="departure_date" class="col-lg-2 col-form-label">Departure date <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="depatureDate" class="form-control" id="departure_date" type="date" placeholder="departure_date" required="required"/>
                    </div>
                </div>

                <div class="form-group pt-15">
                  <div class="form-row">
                      <div class="col-md-5" align="center">
                            <form:button type="reset" class="btn btn-warning"><i class="fa fa-undo"></i> Reset</form:button>
                            <form:button type="submit" class="btn btn-success"><i class="fa fa-plus"></i> Add</form:button>
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
