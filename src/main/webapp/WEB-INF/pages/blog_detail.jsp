<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 12/18/16
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>blogId: ${blog.getBlogId()}</p>
<p>AuthorId: ${author.getUserId()}</p>
<p>authorName: ${author.getUserName()}</p>
<h2>Ttle: ${blog.getBlogTitle()}</h2>
<p>${blog.getBlogContent()}</p>
<c:forEach var="blogtag" items="${blogTags}">
    <tr>
        <td>${blogtag.getTagTitle()}</td>

    </tr>
</c:forEach>
</body>
</html>
