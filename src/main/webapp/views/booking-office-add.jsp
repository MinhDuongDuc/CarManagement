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
                        <h1 class="page-header"> Add Booking office</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

            <form:form action="${pageContext.request.contextPath}/bo/add" method="post" modelAttribute="bo">
                <form:hidden path="officeId"/>
                <div class="row pt-15">
                    <label for="booking_office_name" class="col-lg-2 col-form-label">Booking office name <span class="red">(*)</span> </label/>
                    <div class="col-lg-3">
                      <form:input path="officeName" class="form-control" id="booking_office_name" type="text" placeholder="Enter booking office name" required="required" maxlength="50"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="trip" class="col-lg-2 col-form-label">Trip <span class="red">(*)</span></label>
                    <div class="col-lg-3">
                      <form:select path="trip" class="form-control" id="trip" type="text" required="required">
                        <c:forEach items="${tripList}" var="trip">
                            <form:option value="${trip.tripId}">${trip.destination}</form:option>
                        </c:forEach>
                      </form:select>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="phone_number" class="col-lg-2 col-form-label">Phone number <span class="red">(*)</span> </label>
                    <div class="col-lg-3">
                      <form:input path="officePhone" class="form-control" id="phone_number" type="text" placeholder="Enter phone number" required="required" maxlength="11"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="place" class="col-lg-2 col-form-label">Place <span class="red">(*)</span></label>
                    <div class="col-lg-3">
                      <form:select path="officePlace" class="form-control" id="place" type="text" required="required">
                      <form:option value="1">Quầy số 1</form:option>
                      <form:option value="2">Quầy số 2</form:option>
                      <form:option value="3">Quầy số 3</form:option>
                      <form:option value="4">Quầy số 4</form:option>
                      </form:select>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="price" class="col-lg-2 col-form-label">Price <span class="red">(*)</span></label>
                    <div class="col-lg-3">
                      <form:input path="officePrice" class="form-control" id="price" type="text" placeholder="Enter price" required="required" maxlength="20"/>
                    </div>
                    <label class="col-lg-1 pt-5">(VNĐ)</label>
                </div>

                <div class="row pt-15">
                    <label for="birth_date" class="col-lg-2 col-form-label">Contract deadline <span class="red">(*)</span> </label>
                    <div class="col-lg-3 input-group plr-15">
                        <span class="input-group-addon">From date</span>
                        <form:input path="startContractedDeadline" class="form-control" id="birth_date" type="date" placeholder="Enter date of birth" required="required"/>
                    </div>
                </div>

                <div class="row pt-15">
                    <label for="birth_date" class="col-lg-2 col-form-label"></label>
                    <div class="col-lg-3 input-group plr-15">
                        <span class="input-group-addon pr-30">To date</span>
                        <form:input path="endContractDeadline" class="form-control" id="birth_date" type="date" placeholder="Enter date of birth" required="required"/>
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
