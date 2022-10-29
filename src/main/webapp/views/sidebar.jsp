<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-default navbar-static-top" role="navigation">

    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#"><i class="fa fa-users" aria-hidden="true"></i> Dashboard</a>
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

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="#"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                <sec:authorize access="hasAuthority('hr')">
                <li class="">
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Employee manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a  href="${pageContext.request.contextPath}/employee/list"><i class="fa fa-list"></i> Employee list</a>
                        </li>
                        <li>
                            <a class="" href="${pageContext.request.contextPath}/employee/insert"><i class="fa fa-plus"></i> Add Employee</a>
                        </li>
                    </ul>
                </li>
                </sec:authorize>
                <sec:authorize access="hasAuthority('booking')">
                <li>
                    <a href="#"><i class="fa fa-car"></i> Car manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/car/list"><i class="fa fa-list"></i> Car list</a>
                        </li>
                        <li>
                            <a  href="${pageContext.request.contextPath}/car/insert"><i class="fa fa-plus"></i> Add car </a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="#"><i class="fa fa-cart-plus"></i> Booking office manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="" href="${pageContext.request.contextPath}/bo/list"><i class="fa fa-list"></i> Booking office list</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/bo/insert"><i class="fa fa-plus"></i> Add Booking office</a>
                        </li>
                    </ul>
                </li>
                <li >
                    <a href="#"><i class="fa fa-map-marker"></i> Parking lot manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/pl/list"><i class="fa fa-list"></i> Parking lot list</a>
                        </li>
                        <li>
                            <a  href="${pageContext.request.contextPath}/pl/insert"><i class="fa fa-plus"></i> Add Parking lot</a>
                        </li>
                    </ul>
                </li>
                </sec:authorize>
                <sec:authorize access="hasAuthority('trip')">
                <li>
                    <a href="#"><i class="fa fa-plane"></i> Trip manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/trip/list"><i class="fa fa-list"></i> Trip list</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/trip/insert"><i class="fa fa-plus"></i> Add Trip</a>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-ticket"></i> Ticket manager<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="active" href="${pageContext.request.contextPath}/ticket/list"><i class="fa fa-list"></i> Ticket list</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/ticket/insert"><i class="fa fa-plus"></i> Add Ticket</a>
                        </li>
                    </ul>
                </li>
                </sec:authorize>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->

</nav>
