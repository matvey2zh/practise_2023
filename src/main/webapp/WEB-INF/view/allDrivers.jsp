<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>

    <title></title>
    <meta charset="UTF-8">


    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Logo and responsive toggle -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>
        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="navbar">
            <ul class="nav navbar-nav">
                <li>
                    <a  onclick="window.location.href = 'orders'">Orders</a>
                </li>
                <li>
                    <a  onclick="window.location.href = 'dispatchers'">Dispatchers</a>
                </li>
                <li  class="active">
                    <a  onclick="window.location.href = 'drivers'">Drivers</a>
                </li>
                <li>
                    <a  onclick="window.location.href = 'routes'">Routes</a>
                </li>
                <li>
                    <a  onclick="window.location.href = 'cars'">Cars</a>
                </li>
            </ul>



        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<div class="jumbotron feature">
    <div class="container">
        <h1>Drivers</h1>
        <p>On this page you can easily view information about drivers, as well as add new ones.</p>
        <p><a class="btn btn-default" onclick="window.location.href = 'addNewDriver1'">Add new driver</a></p>
    </div>
</div>

<!-- Content -->
<div class="container">

    <!-- Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Existing drivers</h1>
            <p>You can change the driver information at any time if it is invalid or delete it.</p>
        </div>
    </div>
    <!-- /.row -->

    <!-- Feature Row -->
    <div class="row">
        <c:forEach var="dr" items="${drivers}">




            <c:url var="deleteButton" value="/deleteDriver">
                <c:param name="driverId" value="${dr.id}"/>
            </c:url>


            <article class="col-md-4 article-intro">
                <h3>
                    <a  href="#">${dr.name}</a>
                </h3>
                <p><b>Work experience:</b> ${dr.workExperience} years</p>
                <p><a class="btn btn-default" onclick="window.location.href = '${deleteButton}'">Delete</a></p>
            </article>
        </c:forEach>
    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<footer>
    <div class="footer-blurb">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 footer-blurb-item">
                    <h3>Dispatchers</h3>
                    <p>After clicking on the button below, you will be taken to a page where all dispatchers and detailed information about them will be indicated.</p>
                    <p><a class="btn btn-default" onclick="window.location.href = 'dispatchers'">To Dispatchers</a></p>
                </div>
                <div class="col-sm-4 footer-blurb-item">
                    <h3>Cars</h3>
                    <p>After clicking on the button below, you will be taken to a page where all cars and detailed information about them will be listed. </p>
                    <p><a class="btn btn-default" onclick="window.location.href = 'cars'">To Cars</a></p>
                </div>
                <div class="col-sm-4 footer-blurb-item">
                    <h3>Routes</h3>
                    <p>After clicking on the button below, you will be taken to a page where all routes and detailed information about them will be indicated.</p>
                    <p><a class="btn btn-default" onclick="window.location.href = 'routes'">To Routes</a></p>
                </div>

            </div>
            <!-- /.row -->
        </div>
    </div>

    <div class="small-print">
        <div class="container">
            <p><a href="#">Terms &amp; Conditions</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact</a></p>
            <p>Copyright &copy; Example.com 2015 </p>
        </div>
    </div>
</footer>


<!-- jQuery -->
<script src="js/jquery-1.11.3.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- IE10 viewport bug workaround -->
<script src="js/ie10-viewport-bug-workaround.js"></script>

<!-- Placeholder Images -->
<script src="js/holder.min.js"></script>

</body>

</html>
