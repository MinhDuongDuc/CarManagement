
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
                
                <div class="row">
                    <form>
                        <div class="col-lg-2"></div>
                        <div class="col-lg-4 input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" name="1" class="form-control" placeholder="Ticket Search">
                        </div>
                        <div class="col-lg-2 input-group">
                            <span class="input-group-addon"><i class="fa fa-filter"></i> Filter By</span>
                            <select class="form-control">
                                <option value="license_plate">License plate</option>
                                <option value="customer">Customer name</option>
                            </select>
                        </div>
                        <div class="col-lg-1 input-group">
                            <button type="button" name="1" class="btn btn-info">Search</button>
                        </div>
                        <div class="col-lg-1 input-group">
                            <select class="form-control">
                                <option value="01">01</option>
                                <option value="02" selected>02</option>
                            </select>
                        </div>
                        <div class="col-lg-1 input-group">
                            <select class="form-control">
                                <option value="01">01</option>
                                <option value="02" selected>02</option>
                            </select>
                        </div>
                        <div class="col-lg-1 input-group">
                            <select class="form-control">
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                            </select>
                        </div>
                    </form>
                </div>

                <div class="table-responsive pt-15">    
                    <table class="table table-hover table-striped table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Trip</th>
                                <th scope="col">License plate</th>
                                <th scope="col">Customer</th>
                                <th scope="col">Booking time</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ticketList}" var="ticket">
                                <tr>
                                    <td scope="row">${ticket.ticketId}</td>
                                    <td scope="row">${ticket.trip.destination}</td>
                                    <td scope="row">${ticket.car.licensePlate}</td>
                                    <td scope="row">${ticket.customerName}</td>
                                    <td scope="row">${ticket.time}</td>
                                    <td scope="row">
                                        <a href="${pageContext.request.contextPath}/ticket/edit/${ticket.ticketId}"><i class="fa fa-pencil-square-o"></i> Update</a> | 
                                        <a onclick="deleteWarning('ticket/delete/','${ticket.ticketId}')"><i class="fa fa-trash"></i> Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                    <nav>
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>

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
