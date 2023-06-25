<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: lightgreen;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
</style>
</head>
<body>

<h1 align=center> Project</h1>

<br>

<ul>
  <li><a class="active" href="adminhome">Home</a></li>
   <li><a href="viewallstudents">View All Students</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br>

<h3 align=right>Welcome&nbsp;<c:out value="${suname}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${student.sid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${student.sname}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${student.dob}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${student.sdept}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${student.smailid}</td></tr>
<tr><th>User Name:</th>&nbsp;<td>${student.susername}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${student.scontactno}</td></tr>

</table>



</body>
</html>

 
