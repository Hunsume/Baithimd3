<%--
  Created by IntelliJ IDEA.
  User: dovie
  Date: 10/8/2021
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Category list</h1>
<a href="/categories?action=create">Create new category</a>
<table>
    <thead>
    <tr>
        <td>#</td>
        <td>Name</td>
        <td>Delete</td>
        <td>Edit</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${categories}" var="category">
        <tr>
            <th scope="row">${category.id}</th>
            <td> ${category.name}</td>
            <td><a href="/categories?action=delete&id=${category.id}">Delete</a></td>
            <td><a href="/categories?action=edit&id=${category.id}">Edit</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
