<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 14/9/2020
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Sandwich</title>
</head>
<body>

<h1>Sandwich</h1>
<h3 style="color:red">${message}</h3>

<form action="/save" method="post" name="phepTinh">
  <input type="number" name="first" placeholder="First Number">&nbsp;&nbsp;
  <input type="number" name="second" placeholder="Second Number"><br>
  <input type="submit" value="Plus" name="plus">&nbsp;<input type="submit" value="Minus" name="minus">&nbsp;<input type="submit" value="Multi" name="multi">&nbsp;<input type="submit" value="Divide" name="divide">
</form>

</body>
</html>