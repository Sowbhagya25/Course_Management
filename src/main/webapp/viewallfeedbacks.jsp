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

<h3 align=center><u>View All Feedbacks</u></h3>

<table align=center border=2>
<tr>
<th>ID</th>
<th>Instructor FirstName</th>
<th>Instructor LastName</th>
<th>Department</th>
<th>Subject</th>
<th>CourseCode</th>
<th>Level Of Knowledge</th>
<th>Level Of Communication</th>
<th>Would U like to recommend to others</th>
<th>Action</th>

</tr>
<c:forEach items="${feedbacklist}" var="feedback">

<tr>

<td> <c:out value="${feedback.feid}"></c:out>   </td>
<td> <c:out value="${feedback.ffname}"></c:out>   </td>
<td> <c:out value="${feedback.flname}"></c:out>   </td>
<td> <c:out value="${feedback.fdept}"></c:out>   </td>
<td> <c:out value="${feedback.fsub}"></c:out>   </td>
<td> <c:out value="${feedback.fcoursecode}"></c:out>   </td>
<td> <c:out value="${feedback.flevelofknow}"></c:out>   </td>
<td> <c:out value="${feedback.flevelofcomm}"></c:out>   </td>
<td> <c:out value="${feedback.frecomend}"></c:out>   </td>

<td>

<a href='<c:url value='deletefeedback?id=${feedback.feid}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewfeedbackbyid?id=${feedback.feid}'></c:url>'>View</a>&nbsp;&nbsp;


</td>

</tr>
</c:forEach>

</table>
</body>
</html>