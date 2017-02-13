<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="True" name="HandheldFriendly"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>boop</title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0"/>
    <meta name="description" content="boop - "/>
    <meta name="keywords" content="textarea,textarea.com,blog,博客,空间,主页,个人主页,">

    <link href="https://www.textarea.com/boop/" rel="canonical"/>

    <link rel="alternate" type="application/atom+xml" href="/boop/atom.xml"/>

    <link rel="shortcut icon" type="image/png" sizes="any"
          href="https://www.textarea.com/static/logo.png?v=50157494967a1eecefe30bd89e19941e">
    <link rel="apple-touch-icon" type="image/png" sizes="any"
          href="https://www.textarea.com/static/logo.png?v=50157494967a1eecefe30bd89e19941e">
    <link rel="stylesheet"
          href="https://www.textarea.com/static/vendor/css/vendor.min.css?v=905591e7a43732564c4398c4e4937bfb">
    <link rel="stylesheet"
          href="https://www.textarea.com/static/assets/css/style.min.css?v=4e923c3821b7f5ec708bf7a4839af490">
    <link rel="stylesheet"
          href="https://www.textarea.com/static/charter/webfonts/stylesheet.css?v=a7a222883450c35a697994140831cfc3">
    <!--[if lt IE 9]>
    <script src="https://www.textarea.com/static/html5shiv-3.7.3/dist/html5shiv.js?v=f4d9dea8e0ae8455500862bbb874d63c"></script>
    <![endif]-->
    <noscript>
        <style>img[data-src] {
            display: none
        }</style>
    </noscript>
    <meta name="robots" content="index,follow"/>
    <link rel="stylesheet"
          href="https://www.textarea.com/static/assets/css/user.min.css?v=615ef775ad60f8084ed991b62010bddb">
    <script>
        var _hmt = _hmt || [];
        (function () {
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
            <div class="user card">
                <div class="card-cover">
                    <div class="background"
                         style="background-image:url('https://www.textarea.com/static/background/user/1.jpg?v=c5fade93f77f093654a7f182520bbf0e')"></div>
                </div>
                <div class="card-wrapper">
                    <a class="avatar" href="/user?user_id=${user.getUserId()}">
                        <span style="color:white;background-color:rgb(232,164,164)">
                            ${user.getUserName().charAt(0)}
                        </span>
                    </a>
                    <h2 class="text-center">${user.getUserName()}</h2>
                    <a href="/user?user_id=${user.getUserId()}" class="username">${user.getUserName()}</a>
                    <div class="card-body">

                    </div>
                    <div class="card-footer clearfix">
                      <%--  <a href="atom.xml" class="btn btn-default">
                            <i class="fa fa-rss"></i> RSS
                        <%--</a>&ndash;%&gt;--%>

                        <a class="btn btn-primary btn-compose" href="/addblog">
                            <i class="fa fa-pencil"></i> Write a Blog
                        </a>

                    </div>
                </div>
            </div>

            <!-- shows the people who follows the user ------------------------------------------------------------------->
            <section class="card">
                <h3>被关注 (${usersFollowingUser.size()})
                    <small><a href="/boop/follower/" class="pull-right">更多</a></small>
                </h3>
                <c:choose>
                    <c:when test="${usersFollowingUser.size() == 0}">
                        <div class="users">
                            还没有被关注
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="users" style="overflow:hidden;">
                            <div style="overflow:hidden;max-height:34px">
                                <c:forEach var="follower" items="${usersFollowingUser}">
                                    <%--<a class="avatar avatar-small" href="/zebulon/" title="${follower.getUserName()}"
                                       style="margin:1px 0">
                                        <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                                             data-src="https://www.textarea.com/image/321133.jpeg"
                                             alt="${follower.getUserName().charAt(0)}"/>
                                        <noscript><img
                                                src="https://www.textarea.com/image/321133.jpeg"
                                                alt="${follower.getUserName().charAt(0)}"/></noscript>
                                    </a>--%>
                                    <a class="avatar avatar-small" href="/user?user_id=${follower.getUserId()}" title="dongqw"
                                       style="margin:1px 0">
                                        <span style="color:white;background-color:rgb(54,164,132)"> ${follower.getUserName().charAt(0)}</span>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </section>

            <!-- shows the people the user follows ----------------------------------------------------------------------->
            <section class="card">
                <h3>关注了 (${usersFollowedByUser.size()})
                    <small><a href="/boop/following/" class="pull-right">更多</a></small>
                </h3>
                <c:choose>
                    <c:when test="${usersFollowedByUser.size() == 0}">
                        <div class="users">
                            还没有关注的人
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="users" style="overflow:hidden;">
                            <div style="overflow:hidden;max-height:34px">
                                <c:forEach var="following" items="${usersFollowedByUser}">
                                    <%--<a class="avatar avatar-small" href="/zebulon/" title="${follower.getUserName()}"
                                       style="margin:1px 0">
                                        <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                                             data-src="https://www.textarea.com/image/321133.jpeg"
                                             alt="${follower.getUserName().charAt(0)}"/>
                                        <noscript><img
                                                src="https://www.textarea.com/image/321133.jpeg"
                                                alt="${follower.getUserName().charAt(0)}"/></noscript>
                                    </a>--%>
                                    <a class="avatar avatar-small" href="/user?user_id=${following.getUserId()}" title="dongqw"
                                       style="margin:1px 0">
                                        <span style="color:white;background-color:rgb(54,164,132)"> ${following.getUserName().charAt(0)}</span>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </section>

            <!-- shows the tags that the user subscribes ------------------------------------------------------------------>
            <section class="card">
                <h3>订阅了 (${tagList.size()})
                    <small>
                        <a href="/boop/subscribe/" class="pull-right">
                            更多
                        </a>
                    </small>
                </h3>
                <c:choose>
                    <c:when test="${tagList.size() == 0}">
                        没有订阅的标签
                    </c:when>
                    <c:otherwise>
                        <div>
                            <c:forEach var="tag" items="${tagList}">
                                <a class="post-tag" href="/tag?tag_id=${tag.getTagId()}">${tag.getTagTitle()}</a>
                            </c:forEach>
                        </div>
                    </c:otherwise>
                </c:choose>
            </section>

            <section class="card">
                <h3>正在阅读 (0)
                    <small>
                        <a href="/boop/reading/" class="pull-right">
                            更多
                        </a>
                    </small>
                </h3>
                没有正在阅读的文章
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

                        <a href="/boop/?language=en">English</a>

                    </li>
                </ul>
            </div>
        </div>
    </footer>


</div>
<script src="https://www.textarea.com/static/vendor/js/vendor.min.js?v=8b2638140f055e6efaffd2804245700b"></script>
<script src="https://www.textarea.com/static/assets/js/script.min.js?v=6fb1424bfb8c2da38fc94ef15c841259"></script>

<script>
    $(function () {
        var text = $('#follow').html();
        $("#follow").hover(function () {
            $(this).html('<i class="fa fa-user-times"></i> 取消关注');
        }, function () {
            $(this).html(text);
        });
    });
</script>

</body>
</html>
