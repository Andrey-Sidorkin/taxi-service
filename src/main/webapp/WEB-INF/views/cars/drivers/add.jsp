<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table">Add driver to car:</h1>
    <c:if test = "${empty cars}">
        <p class="cameo">
            We have no cars yet. <a href="${pageContext.request.contextPath}/cars/add">Create one</a> first.
        </p>
    </c:if>
    <c:if test = "${!empty cars}">
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            <p class="cameo">
                <label for="cars">Car:</label>
                <select id="cars" name=car_id>
                    <c:forEach items = "${cars}" var = "car">
                        <option value="${car.id}">${car.id} ${car.manufacturer.name} ${car.model}</option>
                    </c:forEach>
                </select>
                <label for="drivers">Driver:</label>
                <select id="drivers" name=driver_id>
                    <c:forEach items = "${drivers}" var = "driver">
                        <option value="${driver.id}">${driver.id} ${driver.name}</option>
                    </c:forEach>
                </select>
                <button type="submit">Submit</button>
            </p>
        </form>
    </c:if>
</p>
<footer><p class="table" style="font-size:14px;">
    <a href="${pageContext.request.contextPath}/index">Back to index page</a></p>
</footer>
</body>
</html>
