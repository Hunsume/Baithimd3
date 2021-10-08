<%--
  Created by IntelliJ IDEA.
  User: dovie
  Date: 10/8/2021
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product">Show products list</a>
<h1>Delete product form</h1>

<c:if test="${message}">
    <p>${message}</p>
</c:if>

<form method="post">
    <div>
        <p>${product.name}</p>
    </div>
    <div>
        <p>${product.price}</p>
    </div>

    <div>
        <p>${product.amount}</p>
    </div>

    <div>
        <p>${product.color}</p>
    </div>

    <div>
        <p>${product.description}</p>
    </div>

    <div>
        <p>${product.categoryId}</p>
    </div>

    <button type="submit">Delete</button>
</form>
</body>
</html>
