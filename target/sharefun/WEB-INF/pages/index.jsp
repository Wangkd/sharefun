<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="True" name="HandheldFriendly"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ShareFun</title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0"/>
    <meta name="description" content="TextArea.com, a place for people to read and write."/>
    <meta name="keywords" content="textarea,textarea.com,blog,博客,空间,主页,个人主页,">

    <link href="https://www.textarea.com/?language=en" rel="canonical"/>

    <link rel="alternate" type="application/atom+xml" href="/atom.xml"/>

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

    <meta name="robots" content="noindex,follow"/>
    <meta name="google-site-verification" content="gkFSYD3TxUt5e8sYl6zFZBQ8f7qn2Iuz-XWZYWo_OzE"/>
    <script type="text/javascript">
        function remove() {
            var userName = document.getElementById("session").getAttribute("value");
            if (userName == "") {
                var elements = document.getElementsByClassName("userinfo");
                for (var i = 0; i < elements.length; i++) {
                    elements[i].style.display = "none";
                }
            }
            else {
                var elements = document.getElementsByClassName("signin");
                for (var i = 0; i < elements.length; i++) {
                    elements[i].style.display = "none";
                }
            }
        }
    </script>
</head>
<body onload="remove()">
<div id="wrapper">

<jsp:include page="header.jsp" />

    <div id="container">
        <main id="content">
            <div class="post summary card">
                <div class="card-wrapper summary-tabbar clearfix">
                    <div class="tabbar-left">
                        <span class="active">Stuff Picks</span>
                        <a href="/popular/">Top Contents</a>
                        <a href="/?language=zh">中文</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <jsp:include page="article_card.jsp" />
        </main>

        <aside id="sidebar">
            <section class="card">
                <h3>Featured Tags
                    <small><a href="/tags/">more</a></small>
                </h3>
                <div style="margin:.2em;max-height:128px;overflow:hidden;">
                    <c:forEach var="tag" items="${blogTags}" >
                    <a href="/tag?tag_id=${tag.getTagId()}" class="post-tag text-center">${tag.getTagTitle()}</a>
                    </c:forEach>
                </div>
            </section>

            <section class="card">
                <h3>Top Contents
                    <small><a href="/popular/">more</a></small>
                </h3>
                <ol>

                    <li lang="en"><a href="/foodandtrip/tea-in-england-556/">Tea in England</a></li>

                    <li lang="en"><a href="/textarea/hello-world-1/">Hello World</a></li>

                    <li lang="en"><a href="/zero/building-a-better-mouse-trap-isnt-enough-638/">Building a better mouse
                        trap isn&#39;t enough</a></li>

                    <li lang="en"><a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/">The Moroccan Tea
                        Drinking Culture</a></li>

                    <li lang="en"><a href="/zebulon/post-747/">if we don&#39;...</a></li>

                </ol>
            </section>


            <section class="card sticky">
                <h3>Advertisement
                    <small><a href="mailto:support@textarea.com">Contact</a></small>
                </h3>

                <div class="text-center clearfix">
                    <a target="_blank" href="http://www.apple.com/cn/music-movies-books/?utm_source=textarea.com">
                        <img style="margin: 0 auto;"
                             src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                             data-src="https://www.textarea.com/static/site/img/apple-music.jpg?v=115331ad70420d5b332fb28e342936fa"
                             alt="Advertisement">
                    </a>
                    <div class="card-footer">
                        <small class="text-muted">
                            Advertising <a href="mailto:support@textarea.com">Contact</a>
                        </small>
                    </div>
                </div>
            </section>


        </aside>
    </div>
    <footer id="footer" class="no-print">
        <div>
            <span class="copyright">&copy; </span><a href="/">TextArea.com</a>
            <div class="hidden-xs" style="display:inline">
                <ul>
                    <li><a href="/textarea/">Blog</a></li>
                    <li><a href="/privacy/">Privacy</a></li>
                    <li><a href="/terms/">Terms</a></li>
                    <li><a href="/complaint/">Complaint</a></li>
                    <li><a href="/about/">About</a></li>
                    <li><a href="/atom.xml">RSS</a></li>
                    <li>

                        <a href="/?language=zh">中文</a>

                    </li>
                    <li>

                        <strong>English</strong>

                    </li>
                </ul>
            </div>
        </div>
    </footer>
</div>
<script src="https://www.textarea.com/static/vendor/js/vendor.min.js?v=8b2638140f055e6efaffd2804245700b"></script>
<script src="https://www.textarea.com/static/assets/js/script.min.js?v=6fb1424bfb8c2da38fc94ef15c841259"></script>

</body>
</html>

