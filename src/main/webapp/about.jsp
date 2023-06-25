<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="with=device-width, initial-scale=1.0">
    <title>Courseproj- Place for Course Management</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,600;0,700;1,100;1,200;1,300;1,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<section class="sub-header">
        <nav> 
            <a href="index.html"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times"onclick="hideMenu()" ></i>
                <ul>
                 <li><a class="active" href="/">HOME</a></li>
                   <li><a href="/about">ABOUT US</a></li>
           
                    <li><a href="/contactus">CONTACTUS</a></li>
                    <li><a href="/login">LOGIN</a></li>
                    
                    
                </ul>
            </div>
            <i class="fa fa-bars"onClick="showMenu()"></i>
        </nav>  
          <h1>About Us</h1>
    </section>

<section class="about-us">
<div class="row">
    <div class="about-col">
    <h1>One of the best Course management tool</h1>
    <p>Students will get enrolled to the courses and submit the assignments and Projects and faculty evaluates and gives feedback
    </p>
    <a href=""class="hero-btn red-btn">EXPLORE NOW</a>
 </div>
        <div class="about-col">
            <img src="images/lms1.jpg">
        </div>
    </div>

</section>

<section class="footer">
    <h4>About Us</h4>
    <p> Student Developer, KL University<br>
        Vaddeswaram, 522502 <br>
        Guntur, AP.
    </p>
    <div class="icons">
        <i class="fa fa-facebook"></i>
        <i class="fa fa-twitter"></i>
        <i class="fa fa-instagram"></i>
        <i class="fa fa-linkedin"></i>
    </div>
    <p>Made with <i class="fa fa-heart-o"></i> Spring Boot Applications</p>
</section>


</body>
</html>