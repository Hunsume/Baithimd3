<%--
  Created by IntelliJ IDEA.
  User: dovie
  Date: 10/8/2021
  Time: 10:54 AM
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

<h1>Product Create Form</h1>
<c:if test="${message}">
    <p>${message}</p>
</c:if>

<form method="post">
    <div>
        <input type="text" placeholder="product name" name="name">
    </div>

    <div>
        <input type="text" placeholder="Product Price" name="price">
    </div>

    <div>
        <input type="text" placeholder="Product Amount" name="amount">
    </div>

    <div>
        <input type="text" placeholder="Product Color" name="color">
    </div>

    <div>
        <input type="text" placeholder="Product Description" name="description">
    </div>

    <div>
        <input type="text" placeholder="category id" name="categoryId">
    </div>

    <button>Create</button>
</form>
</body>
</html>
