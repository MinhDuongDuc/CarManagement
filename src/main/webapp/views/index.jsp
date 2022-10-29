
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
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
