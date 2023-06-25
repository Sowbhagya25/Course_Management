<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>

.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: blue;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: white;
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

<h1 align=center>Course Management System</h1>

<br>



<br><br>

<h3 align=center><u>Student Registration</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>


<form:form action="addstudent" method="post" modelAttribute="stu">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="sname" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td><form:input path="dob" required="required" placeholder="DD/MM/YYYY"/></td>
</tr>

<tr><td></td></tr>



<tr><td></td></tr>

<tr>
<td><label>Department</label></td>
<td>
<form:select path="sdept" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="CSE">CSE</form:option>
<form:option value="ECE">ECE</form:option>
<form:option value="EEE">EEE</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="smailid" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Username</label></td>
<td><form:input path="susername" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><form:password path="spassword" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><form:input path="scontactno" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form:form>


<style>
body {
  background-image: url('images/1.jpg');
   background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: 100% 100%;
}
</style> 
</body>
</html>