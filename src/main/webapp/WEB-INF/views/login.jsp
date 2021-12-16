<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<body style="background-color:LightGoldenRodYellow;text-align:center">
</body>
<head>
    <title>Login</title>
</head>
<body>
<h1 class="table">Login page</h1>
<c:if test = "${!empty errorMsg}">
    <h4 class="text" style="color:red; font-size:14px; font-weight: bold">${errorMsg}</h4>
</c:if>
<form method="post" action="${pageContext.request.contextPath}/login">
    <p class="cameo">
    Login: <input class="field" type="text" name="login" required>
    Password: <input class="field" type="password" name="password" required>
    <button class="button" type="submit">Proceed</button>
    </p>
</form>
<footer>
    <a href="${pageContext.request.contextPath}/drivers/add" class="button">Register new driver</a>
</footer>
</body>
</html>
