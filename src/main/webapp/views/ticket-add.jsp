
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
                        <h1 class="page-header">Ticket list</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <form:form action="${pageContext.request.contextPath}/ticket/add" method="post" modelAttribute = "ticket">
					<form:input type="hidden" path="ticketId"/>
					<div class="row pt-15">
						<label for="destination" class="col-lg-2 col-form-label">
                            Customer Name <span class="red">(*)</span>
						</label>
						<div class="col-lg-3">
							<form:input class="form-control" id="customerName" type="text" placeholder="Enter customer name" required="required" maxlength="50" path="customerName"/>
						</div>
					</div>

					<div class="row pt-15">
						<label for="departure_time" class="col-lg-2 col-form-label">Booking time<span class="red">(*)</span>
						</label>
						<div class="col-lg-3">
							<form:input class="form-control" id="time" type="time" placeholder="Enter booking time" required="required" path="time"/>
						</div>
					</div>

					<div class="row pt-15">
						<label for="driver" class="col-lg-2 col-form-label">Destination
							<span class="red">(*)</span>
						</label>
						<div class="col-lg-3">
							<form:select class="form-control" aria-label="Default select example"
                            path="trip">
								<!-- <option selected>Choose Destination</option> -->
								<c:forEach var="trip" items="${tripList}">
									<form:option value="${trip.tripId}">${trip.destination}</form:option>
								</c:forEach>
							</form:select>
						</div>
					</div>

					<div class="row pt-15">
						<label for="car_type" class="col-lg-2 col-form-label">License
							Plate <span class="red">(*)</span>
						</label>
						<div class="col-lg-3">

							<form:select class="form-control" aria-label="Default select example"
                            path="car">
								<!-- <option selected>Choose license plate</option> -->
								<c:forEach var="car" items="${carList}">
									<form:option value="${car.licensePlate}">${car.licensePlate}</form:option>
								</c:forEach>
							</form:select>

						</div>
					</div>

					<div class="form-group pt-15">
						<div class="form-row">
							<div class="col-md-5" align="center">
								<form:button type="reset" class="btn btn-warning">
									<i class="fa fa-undo"></i> Reset
								</form:button>
								<form:button type="submit" class="btn btn-success">
									<i class="fa fa-plus"></i> Add
								</form:button>
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
     
 
     <!-- SweetAlert2 -->
     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 
     <script src="<c:url value='/views/dist/js/alert.js'/>"></script>

</body>

</html>
