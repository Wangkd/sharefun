<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 12/31/16
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta content="True" name="HandheldFriendly" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Basketball</title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0" />
    <meta name="description" content="TextArea.com, Basketball" />
    <meta name="keywords" content="textarea,textarea.com,blog,博客,空间,主页,个人主页,Basketball">

    <link href="https://www.textarea.com/tags/315/" rel="canonical" />

    <link rel="alternate" type="application/atom+xml" href="/tags/315/atom.xml" />

    <link rel="shortcut icon" type="image/png" sizes="any" href="https://www.textarea.com/static/logo.png?v=50157494967a1eecefe30bd89e19941e">
    <link rel="apple-touch-icon" type="image/png" sizes="any" href="https://www.textarea.com/static/logo.png?v=50157494967a1eecefe30bd89e19941e">
    <link rel="stylesheet" href="https://www.textarea.com/static/vendor/css/vendor.min.css?v=905591e7a43732564c4398c4e4937bfb">
    <link rel="stylesheet" href="https://www.textarea.com/static/assets/css/style.min.css?v=4e923c3821b7f5ec708bf7a4839af490">
    <link rel="stylesheet" href="https://www.textarea.com/static/charter/webfonts/stylesheet.css?v=a7a222883450c35a697994140831cfc3">
    <!--[if lt IE 9]>
    <script src="https://www.textarea.com/static/html5shiv-3.7.3/dist/html5shiv.js?v=f4d9dea8e0ae8455500862bbb874d63c"></script>
    <![endif]-->
    <noscript><style>img[data-src]{display:none}</style></noscript>
    <meta name="robots" content="index,follow" />

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?a2fc42e8e00f9cbd04881a46b7841c99";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</head>
<body>
<div id="wrapper">

<jsp:include page="header.jsp" />

    <div id="container">
        <main id="content">

        <jsp:include page="article_card.jsp" />

        </main>

        <aside id="sidebar">
            <section class="card">
                <h2 style="card-title"><span><i class="fa fa-tags"></i></span> ${tag.getTagTitle()}</h2>
                <p class="card-body"></p>
                <div class="card-footer">
                    创建者:
                    <a href="/user?user_id=${userList.get(i).getUserId()}" style="color:#555">@ ${creater.getUserName()}</a>
                    <div style="margin-top:1em">
                        <c:if test="${!hasUser}" >
                            <a class="btn btn-default" href="/signin">关注</a>
                        </c:if>
                        <c:if test="${hasUser && !isTagSubbed}" >
                            <a class="btn btn-default" href="/follow?tag_id=${tag.getTagId()}">关注</a>
                        </c:if>
                        <c:if test="${hasUser && isTagSubbed}" >
                            <a class="btn btn-primary highlight" id="follow" href="/unfollow?tag_id=${tag.getTagId()}">关注了</a>
                        </c:if>
                    </div>
                </div>
            </section>

            <!-- shows the people following the tag ----------------------------------------------------------------------->
            <section class="card">
                <h3>被关注 (${usersFollowtheTag.size()})
                    <small><a href="/boop/following/" class="pull-right">更多</a></small>
                </h3>
                <c:choose>
                    <c:when test="${usersFollowtheTag.size() == 0}">
                        <div class="users">
                            还没有被关注
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="users" style="overflow:hidden;">
                            <div style="overflow:hidden;max-height:34px">
                                <c:forEach var="following" items="${usersFollowtheTag}">
                                    <%--<a class="avatar avatar-small" href="/zebulon/" title="${follower.getUserName()}"
                                       style="margin:1px 0">
                                        <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                                             data-src="https://www.textarea.com/image/321133.jpeg"
                                             alt="${follower.getUserName().charAt(0)}"/>
                                        <noscript><img
                                                src="https://www.textarea.com/image/321133.jpeg"
                                                alt="${follower.getUserName().charAt(0)}"/></noscript>
                                    </a>--%>
                                    <a class="avatar avatar-small" href="/user?user_id=${userList.get(i).getUserId()}" title="dongqw"
                                       style="margin:1px 0">
                                        <span style="color:white;background-color:rgb(54,164,132)"> ${following.getUserName().charAt(0)}</span>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </section>
        </aside>

    </div>


    <footer id="footer" class="no-print">
        <div>
            <span class="copyright">&copy; </span><a href="/">TextArea.com</a>
            <div class="hidden-xs" style="display:inline">
                <ul>
                    <li><a href="/textarea/">博客</a></li>
                    <li><a href="/privacy/">隐私</a></li>
                    <li><a href="/terms/">条款</a></li>
                    <li><a href="/complaint/">投诉</a></li>
                    <li><a href="/about/">关于</a></li>
                    <li><a href="/atom.xml">RSS</a></li>
                    <li>

                        <strong>中文</strong>

                    </li>
                    <li>

                        <a href="/tags/315/?language=en">English</a>

                    </li>
                </ul>
            </div>
        </div>
    </footer>


</div>
<script src="https://www.textarea.com/static/vendor/js/vendor.min.js?v=8b2638140f055e6efaffd2804245700b"></script>
<script src="https://www.textarea.com/static/assets/js/script.min.js?v=6fb1424bfb8c2da38fc94ef15c841259"></script>

<script>
    $(function() {
        var text = $('#follow').text();
        $("#follow").hover(function() {
            $(this).text("取消关注");
        }, function() {
            $(this).text(text);
        });
    });
</script>

</body>
</html>
