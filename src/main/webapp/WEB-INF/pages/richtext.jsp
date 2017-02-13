<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 1/3/17
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//cdn.quilljs.com/1.1.9/quill.bubble.css" rel="stylesheet">
<link href="https://cdn.quilljs.com/1.1.9/quill.snow.css" rel="stylesheet">
<style>body>#standalone-container{margin:50px auto;width:720px;}#editor-container{height:350px;}</style>
<body>
<div id="standalone-container">
<div id="toolbar-container">
    <span class="ql-formats">
        <select class="ql-size"></select>
    </span>
    <span class="ql-formats">
        <button class="ql-bold"></button>
        <button class="ql-italic"></button>
        <button class="ql-underline"></button>
        <button class="ql-strike"></button>
    </span>
    <span class="ql-formats">
        <select class="ql-color"></select>
        <select class="ql-background"></select>
    </span>
    <span class="ql-formats">
        <button class="ql-script" value="sub"></button>
        <button class="ql-script" value="super"></button>
    </span>
    <span class="ql-formats">
        <button class="ql-header" value="1"></button>
        <button class="ql-header" value="2"></button>
        <button class="ql-blockquote"></button>
        <button class="ql-code-block"></button>
    </span>
    <span class="ql-formats">
        <button class="ql-list" value="ordered"></button>
        <button class="ql-list" value="bullet"></button>
        <button class="ql-indent" value="-1"></button>
        <button class="ql-indent" value="+1"></button>
    </span>
    <span class="ql-formats">
        <button class="ql-direction" value="rtl"></button>
        <select class="ql-align"></select>
    </span>
    <span class="ql-formats">
        <button class="ql-link"></button>
        <button class="ql-image"></button>
        <button class="ql-video"></button>
        <button class="ql-formula"></button>
    </span>
    <span class="ql-formats">
        <button class="ql-clean"></button>
    </span>
</div>
<!-- Create the editor container -->
    <form name="content" action="/submitblog" >
        <div id="editor-container">
            <%--<textarea name="content" />--%>
        </div>
        <input name="submit" value="submit"/>
    </form>
</div>
</body>
<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.1.9/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
    var quill = new Quill('#editor-container', {
        modules: {
            formula: true,
            syntax: true,
            toolbar: '#toolbar-container'
        },
        placeholder: 'Compose an epic...',
        theme: 'snow'
    });
</script>