<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="style2.css" />
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>
<body>
  <div class="container">
    <nav>
      <ul>
        <li><a href="#" class="logo">
          <img src="images/admin.jpg">
          <span class="nav-item">Admin</span>
        </a></li>
        <li><a href="adminhome.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">Home</span>
        </a></li>
        <li><a href="viewallfaculty">
          <i class="fas fa-users"></i>
          <span class="nav-item">Faculty List</span>
        </a></li>
        <li><a href="viewallstudents">
          <i class="fas fa-users"></i>
          <span class="nav-item">Student List</span>
        </a></li>
        <li><a href="feedback">
          <i class="fas fa-comments"></i>
          <span class="nav-item">Feedback</span>
        </a></li>
        <li><a href="attendance.html">
          <i class="fas fa-chart-bar"></i>
          <span class="nav-item">Attendance</span>
        </a></li>
        <li><a href="contactus.jsp">
            <i class="fas fa-cog"></i>
            <span class="nav-item">Settings</span>
          </a></li>
        <li><a href="login" class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>
    <main>
        <ul>
          <h1>Dashboard</h1>
        <div class="cards">
            <div class="card-single">
                <div>
                    <h1>554</h1>
                    <span>Faculty</span>
                </div>
                <div>
                    <span class="las la-users"></span>
                </div>
            </div>
            <div class="card-single">
                <div>
                    <h1>1779</h1>
                    <span>Students</span>
                </div>
                <div>
                    <span class="las la-clipboard-list"></span>
                </div>
            </div>
            <div class="card-single">
                <div>
                    <h1>124</h1>
                    <span>Courses</span>
                </div>
                <div>
                    <span class="las la-shopping-bag"></span>
                </div>
            </div>
            <div class="card-single">
                <div>
                    <h1>$6k</h1>
                    <span>Fee</span>
                </div>
                <div>
                    <span class="lab la-google-wallet"></span>
                </div>
            </div>
        </div>
    </main>

  </div>

</body>
</html>
