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
  background-color: green;
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

<h1 align=center>Course Management System</h1>

<br>

<ul>
  <li><a href="/">Home</a></li>
  <li><a href="facultyhome">Faculty</a></li>
  <li><a class="active" href="feedback">Feedback</a></li>
</ul>

<br><br>

<h3 align=center><u>Feedback</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>


<form:form action="addfeedback" method="post" modelAttribute="fed">

<table align=center>

<tr>
<td><label>Instructor FirstName</label></td>
<td>
<form:input path="ffname" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Instructor LastName</label></td>
<td>
<form:input path="flname" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Department</label></td>
<td>
<form:select path="fdept" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="CSE">CSE</form:option>
<form:option value="ECE">ECE</form:option>
<form:option value="EEE">EEE</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Subject</label></td>
<td>
<form:select path="fsub" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="JAVA FULL STACK DEVELOPMENT">JAVA FULL STACK DEVELOPMENT</form:option>
<form:option value="ENTERPRISE PROGRAMMING">ENTERPRISE PROGRAMMING</form:option>
<form:option value="SOLUTIONS ARCHITECTING ON CLOUD">SOLUTIONS ARCHITECTING ON CLOUD</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>CourseCode</label></td>
<td>
<form:select path="fcoursecode" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="20TS3103AA">20TS3103AA</form:option>
<form:option value="20CS2107AA">20CS2107AA</form:option>
<form:option value="20CS3235AA">20CS3235AA</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Level Of Knowledge</label></td>
<td>
<form:select path="flevelofknow" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="Very Good">Very Good</form:option>
<form:option value="Good">Good</form:option>
<form:option value="Excellent">Excellent</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Level Of Communication</label></td>
<td>
<form:select path="flevelofcomm" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="Very Good">Very Good</form:option>
<form:option value="Good">Good</form:option>
<form:option value="Excellent">Excellent</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Would U like to recommend to others</label></td>
<td>
<form:radiobutton path="frecomend" value="Yes" required="required"/>Yes
<form:radiobutton path="frecomend" value="No" required="required"/>No
</td>
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
  background-image: url('images/fed.jpg');
   background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: 100% 100%;
}
</style> 


</body>
</html>

 
