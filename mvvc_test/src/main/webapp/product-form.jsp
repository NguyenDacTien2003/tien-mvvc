<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 31/05/2023
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* CSS styles go here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            max-width: 400px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        input[type="submit"],
        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #337ab7;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
            margin-right: 10px;
        }

        a.button {
            background-color: #555;
        }

        a.button:hover,
        input[type="submit"]:hover {
            background-color: #23527c;
        }
    </style>
</head>
<body>
<h1>Product Form</h1>
<c:choose>
    <c:when test="${empty product.id}">
        <form action="products?action=create" method="POST">
            <label for="name">Name:</label>
            <input type="text" id="name1" name="name">
            <br><br>
            <label for="scores">Scores:</label>
            <input type="text" id="scores1" name="scores">
            <br><br>
            <label for="grade">Grade:</label>
            <input type="text" id="grade1" name="grade">
            <br><br>
            <input type="submit" value="Create">
            <a href="products" class="button">Cancel</a>
        </form>
    </c:when>
    <c:otherwise>
        <form action="products?action=update" method="POST">
            <input type="hidden" name="id" value="${product.id}">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${product.name}">
            <br><br>
            <label for="scores">Scores:</label>
            <input type="text" id="scores" name="scores" value="${product.scores}">
            <br><br>
            <label for="grade">Grade:</label>
            <input type="text" id="grade" name="grade" value="${product.grade}">
            <br><br>
            <input type="submit" value="Update">
            <a href="products" class="button">Cancel</a>
        </form>
    </c:otherwise>
</c:choose>
</body>
</html>
