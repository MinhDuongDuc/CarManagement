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
                        <h1 class="page-header"> Add Car</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

            <form:form action="${pageContext.request.contextPath}/car/add" method="post" modelAttribute="car">
                
                <div class="row pt-15">
                    <label for="license_plate" class="col-lg-2 col-form-label">License plate <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="licensePlate" class="form-control" id="license_plate" type="text" placeholder="Enter license plate" required="required" maxlength="20"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="car_type" class="col-lg-2 col-form-label">Car type</label>
                    <div class="col-lg-3">
                      <form:input path="carType" class="form-control" id="car_type" type="text" placeholder="Enter car type" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="car_color" class="col-lg-2 col-form-label">Car color</label>
                    <div class="col-lg-3">
                      <form:input path="carColor" class="form-control" id="car_color" type="text" placeholder="Enter car color" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="company" class="col-lg-2 col-form-label">Company <span class="red">(*)</span></label>
                    <div class="col-lg-3">
                      <form:select path="company" class="form-control" id="company" type="text" required="required">
                      <form:option value="Phương Trang">Phương Trang</form:option>
                      <form:option value="Hoàng Long">Hoàng Long</form:option>
                      <form:option value="Aba">Aba</form:option>
                      <form:option value="Olia">Olia</form:option>
                      </form:select>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="parking_lot" class="col-lg-2 col-form-label">Parking lot <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:select path="parkingLot" class="form-control" id="parking_lot" type="text" required="required">
                        <c:forEach items="${plList}" var="pl">
                            <form:option value="${pl.parkId}">${pl.parkName}</form:option>
                        </c:forEach> 
                      </form:select>
                    </div>
                </div>  

                <div class="form-group pt-30">
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
