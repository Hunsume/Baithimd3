<%--
  Created by IntelliJ IDEA.
  User: dovie
  Date: 10/8/2021
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product">Show products list</a>
<h1>Product edit Form</h1>
<c:if test="${message}">
    <p>${message}</p>
</c:if>
<form method="post">
    <div>
        <input type="text" name="id" value="${products.id}"  >
    </div>

    <div>
        <input type="text" name="name" value="${products.name}">
    </div>

    <div>
        <input type="text" name="price" value="${products.price}">
    </div>

    <div>
        <input type="text" name="amount" value="${products.amount}">
    </div>

    <div>
        <input type="text" name="color" value="${products.color}">
    </div>

    <div>
        <input type="text" name="description" value="${products.description}">
    </div>

    <div>
        <input type="text" name="categoryId" value="${products.categoryId}">
    </div>

    <button>EDIT</button>
</form>
</body>
</html>
