<%--
  Created by IntelliJ IDEA.
  User: dovie
  Date: 10/8/2021
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product list</h1>
<a href="/product?action=create">Create new product</a>
<form>
    <p>SEARCH</p>
    <input type="text" name="search"  >
    <button>Tìm kiếm</button>
</form>
<table>
    <thead>
    <tr>
        <td>#</td>
        <td>Name</td>
        <td>Price</td>
        <td>Amount</td>
        <td>Color</td>
        <td>Description</td>
        <td>Category</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
        <tr>
            <th scope="row">${product.id}</th>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.amount}</td>
            <td>${product.color}</td>
            <td>${product.description}></td>
            <td>${product.categoryId}</td>
            <td><a href="/product?action=edit&id=${product.id}">Edit</a></td>
            <td><a href="/product?action=delete&id=${product.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>