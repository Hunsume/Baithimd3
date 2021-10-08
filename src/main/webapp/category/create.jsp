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
<h1>Category Create form</h1>
<a href="/categories">Show Category List</a>
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
<form method="post">

    <div>
        <input type="text" placeholder="Category id" name="id">
    </div>

    <div>
        <input type="text" placeholder="Category name" name="name">
    </div>
    <button>Create</button>
</form>
</body>
</html>