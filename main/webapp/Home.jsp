<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Online Voting</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>

/* Floating Voting Button */
.vote-btn{
    position:fixed;
    bottom:30px;
    right:30px;
    z-index:1000;
}

</style>

</head>

<body style="background-color:#177ac6bb;">

<h2 style="background-color:#222222; color:#15a66c; text-align:center;margin-bottom:0;">
Welcome to Online Voting System
</h2>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

    <button class="navbar-toggler" data-toggle="collapse" data-target="#myNav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div id="myNav" class="collapse navbar-collapse">

        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Candidates</a></li>
        </ul>

        <!-- Logout Button -->
        <form action="LogoutServlet" method="post" class="form-inline">
            <button class="btn btn-danger">Logout</button>
        </form>

    </div>

</nav>

<div class="container">
<div id="demo" class="carousel slide mt-3" data-ride="carousel">

    <!-- Indicators -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
    </ul>

    <!-- Slides -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="./Party Banners/Online Vote 1.jpg" class="w-100" height="550">
        </div>
        <div class="carousel-item">
            <img src="./Party Banners/Online Vote 2.jpg" class="w-100" height="550">
        </div>
        <div class="carousel-item">
            <img src="./Party Banners/Online Vote 3.jpg" class="w-100" height="550">
        </div>
        <div class="carousel-item">
            <img src="./Party Banners/Online Vote 4.jpg" class="w-100" height="550">
        </div>
    </div>

    <!-- Controls -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>

    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>

</div>
</div>


<!-- Floating Vote Button -->

<div class="vote-btn">
    <a href="Vote.jsp" class="btn btn-success btn-lg shadow">
        Go To Voting Page
    </a>
</div>

</body>
</html>