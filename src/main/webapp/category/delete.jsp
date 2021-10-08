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
<h1>Category Create Form</h1>
<a href="/categories">Category Delete Form</a>
<form method="post">
    <div>
        <h3>Category name: </h3>
        <p>${categories.name}</p>
    </div>
    <button>Delete</button>
</form>
</body>
</html>
