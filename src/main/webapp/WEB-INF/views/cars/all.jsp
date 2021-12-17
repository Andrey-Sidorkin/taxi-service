<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All cars</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<h1 class="table">All cars:</h1>
<c:if test = "${empty cars}">
    <p class="cameo">We have no cars yet. <a href="${pageContext.request.contextPath}/cars/add">Create one</a> first.</p>
</c:if>
<c:if test = "${!empty cars}">
    <table class="table">
        <tr>
            <th>ID</th>
            <th>Manufacturer name</th>
            <th>Model</th>
            <th>Manufacturer country</th>
            <th>Drivers</th>
        </tr>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td>
                    <c:out value="${car.id}"/>
                </td>
                <td>
                    <c:out value="${car.manufacturer.name}"/>
                </td>
                <td>
                    <c:out value="${car.model}"/>
                </td>
                <td>
                    <c:out value="${car.manufacturer.country}"/>
                </td>
                <td>
                    <c:forEach var="driver" items="${car.drivers}">
                        ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                    </c:forEach>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}" class="button">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
</c:if>
<footer>
    <br>
    <div style="text-align: center;">
        <a href="${pageContext.request.contextPath}/index" class="button">Back to index page</a>
    </div>
</footer>
</body>
</html>
