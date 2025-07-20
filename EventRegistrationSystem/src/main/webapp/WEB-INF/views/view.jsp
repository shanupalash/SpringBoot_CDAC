<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Details</title>
</head>
<body>
    <h2>Registration Successful</h2>
    <p><strong>ID:</strong> ${participant.id}</p>
    <p><strong>Name:</strong> ${participant.name}</p>
    <p><strong>Email:</strong> ${participant.email}</p>
    <p><strong>Event:</strong> ${participant.eventName}</p>

    <br/>
    <a href="${pageContext.request.contextPath}/register">Back to Registration</a> |
    <a href="${pageContext.request.contextPath}/participants">View All Participants</a>
</body>
</html>