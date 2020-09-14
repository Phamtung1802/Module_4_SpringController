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

<form action="/save" method="post" name="condiment">
  <input type="checkbox" name="lettuce"><span>Lettuce</span><br>
  <input type="checkbox" name="tomato"><span>Tomato</span><br>
  <input type="checkbox" name="mustard"><span>Mustard</span><br>
  <input type="checkbox" name="sprouts"><span>Sprouts</span><br>
  <input type="submit" value="Validate">
</form>

</body>
</html>