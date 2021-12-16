<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<h1 class="table">All drivers:</h1>
<c:if test = "${empty drivers}">
    <p class="cameo">We have no drivers yet. <a href="${pageContext.request.contextPath}/drivers/add">Create one</a> first.</p>
</c:if>
<c:if test = "${!empty drivers}">
    <table class="table">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>License number</th>
        </tr>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td>
                    <c:out value="${driver.id}"/>
                </td>
                <td>
                    <c:out value="${driver.name}"/>
                </td>
                <td>
                    <c:out value="${driver.licenseNumber}"/>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}" class="button">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<footer>
    <br><br>
    <div style="text-align: center;">
    <a href="${pageContext.request.contextPath}/index" class="button">Back to index page</a>
    </div>
</footer>
</body>
</html>
