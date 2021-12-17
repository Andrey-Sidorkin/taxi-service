<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>Welcome to the taxi service!</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<form method="post" id="redirect"></form>
<h1 class="table">Welcome to the taxi service!</h1>
<table class="table">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/cars/my">Display My Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
