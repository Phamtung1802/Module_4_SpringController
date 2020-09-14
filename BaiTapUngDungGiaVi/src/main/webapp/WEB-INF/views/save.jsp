<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 14/9/2020
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Success</title>
</head>
<body>
<h3>Sandwich an voi cac gia vi</h3>
<c:forEach var="giavi" items="${condiment}">
<c:out value="<div>${giavi.key}</div>" escapeXml="false"/>
</c:forEach>
</body>
</html>