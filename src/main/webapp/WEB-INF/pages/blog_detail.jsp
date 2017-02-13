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
<c:forEach var="picture" items="${pictures}">
    <tr>
        <td>${picture.getPicTitle()}</td>
        <td><img src="<c:url value='${picture.getPicPath()}'/>"/></td>
    </tr>
</c:forEach>
<link href="//cdn.quilljs.com/1.1.9/quill.bubble.css" rel="stylesheet">
<link href="https://cdn.quilljs.com/1.1.9/quill.snow.css" rel="stylesheet">

<!-- Create the editor container -->
<div id="editor">
</div>

<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.1.9/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
    var quill = new Quill('#editor', {
        theme: 'snow'
    });
</script>
</body>
</html>
