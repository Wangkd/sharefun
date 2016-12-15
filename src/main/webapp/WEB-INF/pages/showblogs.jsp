<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 12/15/16
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="blog" items="${blogList}" >
    <h2>${blog.getBlogTitle()}</h2>
    <h4>${blog.getBlogContent()}</h4>
</c:forEach>
</body>
</html>
