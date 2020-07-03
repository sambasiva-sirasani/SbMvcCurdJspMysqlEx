<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 style="text-align: center;">Student Data</h2>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Gender</th>
			<th>Course</th>
			<th>Address</th>
			<th>Languages</th>
			<th>Operations</th>
		</tr>
	<c:forEach var="ob" items="${list}" >
	<tr>
		<td>${ob.stdId}</td>
		<td>${ob.stdName}</td>
		<td>${ob.stdPwd}</td>
		<td>${ob.stdGen}</td>
		<td>${ob.stdCourse}</td>
		<td>${ob.stdAddr}</td>
		<td>${ob.stdLang}</td>
		<td>
			<a href="delete?id=${ob.stdId}">Delete</a>
			<a href="edit?id=${ob.stdId}">Update</a>
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>