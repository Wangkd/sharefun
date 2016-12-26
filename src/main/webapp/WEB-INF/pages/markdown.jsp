<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 12/25/16
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MarkDown</title>
    <%--<link href="https://cdn.rawgit.com/showdownjs/showdown/1.1.0/dist/showdown.min.js"/>--%>
    <%--<script type="text/javascript" src="/resources/js/test.js"></script>--%>
    <script src="https://cdn.rawgit.com/showdownjs/showdown/1.0.0/dist/showdown.min.js"></script>
</head>
<style>
    body {
        font-family: "Helvetica Neue", Helvetica, Microsoft Yahei, Hiragino Sans GB, WenQuanYi Micro Hei, sans-serif;
        font-size: 16px;
        line-height: 1.42857143;
        color: #333;
        background-color: #fff;
    }

    ul li {

        line-height: 24px;
    }

    blockquote {
        border-left: #eee solid 5px;
        padding-left: 20px;
    }

    code {
        color: #D34B62;
        background: #F9F2F4;
    }
</style>
<body>
<div>
    <textarea id="content" style="height:400px;width:600px;" onkeyup="compile()">
        ${path}
    </textarea>

    <form name="Form2" action="/uploadImage" method="post" enctype="multipart/form-data">
        <%--<h1>使用spring mvc提供的类的方法上传文件</h1>--%>
        <input id = "pic" type="file" name="file"/>
        <%--<input type="submit" value="upload"/>--%>
    </form>

    <button name = "btn" onclick="path()">btn</button>
    <div id="result"></div>
    <%--<div id = "path"></div>--%>

</div>
<script type="text/javascript">
    function compile() {
        var text = document.getElementById("content").value;
        var converter = new showdown.Converter();
        var html = converter.makeHtml(text);
        document.getElementById("result").innerHTML = html;
    }
    function path(){
        var file = document.getElementById("pic").value;
        var para = document.createElement("p");
        file = file.split("/")[str.split("/").length-1];
        var node = document.createTextNode("![]("+"/resource/"+file+")");
        para.appendChild(node);
        document.getElementById("result").appendChild(para);
    }
</script>
</body>
</html>
