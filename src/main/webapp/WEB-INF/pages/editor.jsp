<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 1/6/17
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>editor</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/wangEditor.min.css">
</head>
<body>
<div style="ali; width: 80%;" >
    <textarea id="textarea1"style="height: 400px; max-height: 600px; text-align: center">
        <p>请输入内容...</p>
    </textarea>
</div>

</body>

<script type="text/javascript" src="/resources/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/resources/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var editor = new wangEditor('textarea1');
    editor.create();
</script>
</html>
