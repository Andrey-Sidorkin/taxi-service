<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>Add new car</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<h1 class="table">Create new car:</h1>
    <c:if test = "${empty manufacturers}">
        <p class="cameo">
            We have no manufacturers yet. <a href="${pageContext.request.contextPath}/manufacturers/add">Create one</a> first.
        </p>
    </c:if>
    <c:if test = "${!empty manufacturers}">
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
                <p class="cameo">
                <label for="manufacturers">Manufacturer:</label>
                <select id="manufacturers" name=manufacturer_id class="field">
                    <c:forEach items = "${manufacturers}" var = "manufacturer">
                        <option value="${manufacturer.id}">${manufacturer.name}</option>
                    </c:forEach>
                </select>
                <label for="model">Car model:</label>
                <input type="text" id="model" name="model" class="field" required>
                <button type="submit" class="button">Create</button>
            </p>
        </form>
    </c:if>
<footer>
    <br>
    <div style="text-align: center;">
        <a href="${pageContext.request.contextPath}/index" class="button">Back to index page</a>
    </div>
</footer>
</body>
</html>
