<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>

<h2>Event Registration</h2>

<form:form method="POST" modelAttribute="eventRegistration">
	ID: <form:input path="id" /><br/><br/>
    Name: <form:input path="name" /><br/><br/>
    Email: <form:input path="email" /><br/><br/>
    Event:
    <form:select path="eventName">
        <form:option value="Spring Boot Workshop" />
        <form:option value="Java Conference" />
        <form:option value="Web Dev Bootcamp" />
    </form:select><br/><br/>
    <input type="submit" value="Register"/>
    
    <!-- Event: <form:input path="eventName" /><br/><br/>   -->
    
    
    <br/>
<a href="${pageContext.request.contextPath}/participants">View All Participants</a>
    
</form:form>
</body>
</html>