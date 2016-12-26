<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 12/24/16
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Image Upload</title>
</head>
<body>
<form name ="blog_form" action="/submitblog" method="post" enctype="multipart/form-data">
    <h1>Write a Blog</h1>
    Title:<input type="text" name="title" /></br>
    Content:<textarea name="content" ></textarea>
    <input type="submit" name="submit" value="submit"/>
</form>

</body>
</html>
