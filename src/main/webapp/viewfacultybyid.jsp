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

<h1 align=center> Course Management System</h1>

<br>

<ul>
  <li><a  href="adminhome">Home</a></li>
   <li><a class="active" href="viewallfaculty">View All Faculty</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br>

<h3 align=right>Welcome&nbsp;<c:out value="${funame}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${faculty.fid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${faculty.fname}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${faculty.fgender}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${faculty.fdepartment}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${faculty.fdesignation}</td></tr>
<tr><th>Salary:</th>&nbsp;<td>${faculty.fsalary}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${faculty.flocation}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${faculty.fmailid}</td></tr>
<tr><th>User Name:</th>&nbsp;<td>${faculty.fusername}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${faculty.fcontactno}</td></tr>

</table>



</body>
</html>

 
