<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myproperty</title>
</head>
<body>

<table border="2px" class="table table-striped">
<tr>
	<td>ID</td>
	<td>Name</td>
	<td>Details</td>
	<td>Location</td>
	<td>Image</td>
	<td>Operation</td>
</tr>

<c:forEach items="${all}" var="e">
<tr>
	<td>${e.fid}</td>
	<td>${e.fname}</td>
	<td>${e.fdetail}</td>
	<td>${e.flocation }</td>
<td>
<img alt="" src="/images/${e.filename}" width="300px" height="200px">
</td>
		<%
			 HttpSession s1=request.getSession();
			 String x =(String)s1.getAttribute("all");
			  
		%>
<td>
<button class="btn "><a href="deleteProp/<%=x%>">Delete</a></button>

</td>

</tr>
</c:forEach>
</table>
</body>
</html>