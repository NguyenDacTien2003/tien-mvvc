<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 31/05/2023
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <style>
    /* Reset default styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    /* Global styles */
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

    .button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #337ab7;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      margin-left: 40px;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #23527c;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ccc;
    }

    th {
      background-color: #f5f5f5;
      font-weight: bold;
    }

    tr:hover {
      background-color: #e6f7ff;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    td.actions {
      white-space: nowrap;
    }

    .delete-button {
      background-color: #ff3333;
    }

    .delete-button:hover {
      background-color: #cc0000;
    }
  </style>
</head>
<body>
<h1>Product List</h1>
<a href="products?action=new" class="button add-button">Add New Product</a>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Scores</th>
    <th>Grade</th>
    <th>Actions</th>
  </tr>
  <c:forEach var="product" items="${productList}">
    <tr>
      <td>${product.id}</td>
      <td>${product.name}</td>
      <td>${product.scores}</td>
      <td>${product.grade}</td>
      <td class="actions">
        <a href="products?action=edit&id=${product.id}" class="button">Edit</a>
        <a href="products?action=delete&id=${product.id}" class="button delete-button"
           onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
