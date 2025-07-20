<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Registration</title>
</head>
<body>
<h2>Edit Participant</h2>

<form:form method="POST" modelAttribute="eventRegistration" action="${pageContext.request.contextPath}/update">
    <form:hidden path="id" />
    Name: <form:input path="name" /><br/><br/>
    Email: <form:input path="email" /><br/><br/>
    Event:
    <form:select path="eventName">
        <form:option value="Spring Boot Workshop" />
        <form:option value="Java Conference" />
        <form:option value="Web Dev Bootcamp" />
    </form:select><br/><br/>

    <input type="submit" value="Update"/>
</form:form>

<a href="${pageContext.request.contextPath}/participants">Cancel</a>
</body>
</html>
