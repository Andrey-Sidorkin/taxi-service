<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<h1 class="table">Create new manufacturer:</h1>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add">
    <p class="cameo">
        Name: <input type="text" name="name" required>
        Country: <input type="text" name="country" required>
        <button type="submit">Create</button>
    </p>
</form>
<footer><p class="table" style="font-size:14px;">
    <a href="${pageContext.request.contextPath}/index">Back to index page</a></p>
</footer>
</body>
</html>
