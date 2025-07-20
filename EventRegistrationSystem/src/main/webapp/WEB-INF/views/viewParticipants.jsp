<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Page</title>
</head>
<body>




<h2>Registered Participants</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Event</th>
        <th>update</th>
    </tr>
   <c:forEach var="p" items="${participants}">
    <tr>
        <td>${p.id}</td>
        <td>${p.name}</td>
        <td>${p.email}</td>
        <td>${p.eventName}</td>
        <td>
            <a href="${pageContext.request.contextPath}/edit/${p.id}">Edit</a> |
            <a href="${pageContext.request.contextPath}/delete/${p.id}" >Delete</a>
        </td>
    </tr>
</c:forEach>
   
</table>


    <a href="${pageContext.request.contextPath}/register">Back to Registration</a> 


</body>
</html>