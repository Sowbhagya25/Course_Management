<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Management System</title>

</head>
<body>
<h2 align=center>COURSE MANAGEMENT SYSTEM</h2>
<hr><hr>

<br><br>

<h3 align=center><u>View All Student</u></h3>

<table align=center border=2>
<tr>
<th>ID</th>
<th>Name</th>

<th>Date of Birth</th>

<th>Department</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>

</tr>
<c:forEach items="${studentlist}" var="student">

<tr>

<td> <c:out value="${student.sid}"></c:out>   </td>
<td> <c:out value="${student.sname}"></c:out>   </td>
<td> <c:out value="${student.dob}"></c:out>   </td>

<td> <c:out value="${student.sdept}"></c:out>   </td>

<td> <c:out value="${student.smailid}"></c:out>   </td>
<td> <c:out value="${student.susername}"></c:out>   </td>
<td> <c:out value="${student.scontactno}"></c:out>   </td>

<td>

<a href='<c:url value='deletestudent?id=${student.sid}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewstudentbyid?id=${student.sid}'></c:url>'>View</a>&nbsp;&nbsp;


</td>

</tr>
</c:forEach>

</table>
</body>
</html>