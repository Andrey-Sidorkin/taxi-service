<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap" rel="stylesheet">
<style>
    <%@include file='/WEB-INF/views/css/styles.css' %>
</style>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body style="background-color:LightGoldenRodYellow;text-align:center">
<h1 class="table">All manufacturers:</h1>
<c:if test = "${empty manufacturers}">
    <p class="cameo" style="font-size:14px;">We have no manufacturers yet. <a href="${pageContext.request.contextPath}/manufacturers/add">Create one</a> first.</p>
</c:if>
<c:if test = "${!empty manufacturers}">
    <table class="table">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Country</th>
        </tr>
        <c:forEach var="manufacturer" items="${manufacturers}">
            <tr>
                <td>
                    <c:out value="${manufacturer.id}"/>
                </td>
                <td>
                    <c:out value="${manufacturer.name}"/>
                </td>
                <td>
                    <c:out value="${manufacturer.country}"/>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<footer><p class="table" style="font-size:16px;">
    <a href="${pageContext.request.contextPath}/index">Back to index page</a></p>
</footer>
</body>
</html>
