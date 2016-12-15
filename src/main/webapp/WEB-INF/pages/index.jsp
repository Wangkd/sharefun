<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="True" name="HandheldFriendly"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TextArea</title>
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

    <header id="header" class=" no-print">
        <nav id="nav" class="clearfix">
            <div class="pull-left">
                <ul>
                    <li class="navbar-brand">
                        <p>Sharefun</p>
                    </li>
                    <li class="navbar-text">
                        <p> Welcome ${user.getUserName()}</p>
                    </li>
                </ul>
            </div>
            <div class="pull-right">
                <ul>
                    <li class="signin" style="display: none" id="session" value="${user.getUserName()}"></li>
                    <li class="signin"><a href="/signin/" class="btn btn-default">Sign in</a></li>
                    <li class="signin"><a href="/signup/" class="btn btn-primary">Sign up</a></li>
                    <li class="userinfo"><a href="/signout" class="btn btn-primary">Sign out</a></li>
                    <li class="userinfo"><a href="/user" class="btn btn-primary">UserInfo</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div id="container">
        <main id="content">
            <div class="post summary card">
                <div class="card-wrapper summary-tabbar clearfix">
                    <div class="tabbar-left">

                        <span class="active">Stuff Picks</span>


                        <a href="/popular/">Top Contents</a>


                        <a href="/?language=zh">中文</a>


                    </div>
                    <div class="tabbar-right">

                        <a href="/signup/" class="btn btn-primary pull-right">Sign up today</a>
                        <a href="/signin/" class="btn btn-default pull-right" style="margin-right:1em">Sign in</a>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <c:forEach var="blog" items="${blogList}" >
            <article class="post summary card typography" lang="en"
                     itemscope itemtype="http://schema.org/Article">

                <div class="card-wrapper">

                    <div class="card-header no-print">
                        <a class="avatar avatar-small" href="/foodandtrip/">
<span style="color:white;background-color:rgb(118,164,164)">
F
</span>

                        </a>

                        <div class="author" itemprop="author" itemscope itemtype="http://schema.org/Person">
                            <a class="nickname" href="/foodandtrip/" itemprop="url">
                                FoodAndTrip
                            </a>
                            <a class="username" href="/foodandtrip/">
                                <s>@</s><span itemprop="name">foodandtrip</span>
                            </a>
                        </div>
                        <div style="overflow:hidden">

                            <div class="published_at">
                                <span>Published on</span>
                                <time class="datetime" title="March 5, 2016 at 4:43 am" datetime="2016-03-05T04:43:08"
                                      itemprop="dateCreated datePublished">

                                    <a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/">March 5</a>

                                </time>
                            </div>


                            <div class="modified_at">
                                <span>·</span>
                                <span>Last modified on</span>
                                <time class="datetime" title="March 5, 2016 at 4:44 am" datetime="2016-03-05T04:44:00"
                                      itemprop="dateModified">

                                    <a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/">March 5</a>

                                </time>
                            </div>


                            <span>·</span> <span>Public</span>
                        </div>
                    </div>


                    <h2 class="card-title" itemprop="name headline">

                        <a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/" itemprop="url">
                                ${blog.getBlogTitle()}
                        </a>
                    </h2>

                    <div class="card-body" itemprop="description">


                        <p>${blog.getBlogContent()}</p>


                        <p><a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/" class="seemore">See More</a>
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/">
<span>

568 reads
</span>
                        </a>
                        <span>·</span>
                        <a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/">
<span>

0 stars
</span>
                        </a>
                        <span>·</span>
                        <a href="/foodandtrip/the-moroccan-tea-drinking-culture-557/">
<span>

0 comments
</span>
                        </a>
                    </div>


                </div>
            </article>
            </c:forEach>
        </main>
        <aside id="sidebar">
            <section class="card">
                <h3>Featured Tags
                    <small><a href="/tags/">more</a></small>
                </h3>
                <div style="margin:.2em;max-height:128px;overflow:hidden;">


                    <a href="/tags/306/" class="post-tag text-center">古籍影印</a>

                    <a href="/tags/302/" class="post-tag text-center">georgehotz</a>

                    <a href="/tags/279/" class="post-tag text-center">something</a>

                    <a href="/tags/278/" class="post-tag text-center">字画做旧</a>

                    <a href="/tags/277/" class="post-tag text-center">ARM</a>

                    <a href="/tags/275/" class="post-tag text-center">罗曼·罗兰</a>

                    <a href="/tags/262/" class="post-tag text-center">ProxyChains</a>

                    <a href="/tags/260/" class="post-tag text-center">碎碎念</a>

                    <a href="/tags/249/" class="post-tag text-center">git</a>

                    <a href="/tags/247/" class="post-tag text-center">佛教，华严宗</a>

                    <a href="/tags/246/" class="post-tag text-center">13都是</a>

                    <a href="/tags/242/" class="post-tag text-center">赢科英语</a>

                    <a href="/tags/241/" class="post-tag text-center">coredump</a>

                    <a href="/tags/236/" class="post-tag text-center">文字</a>

                    <a href="/tags/235/" class="post-tag text-center">linux触控板</a>

                    <a href="/tags/224/" class="post-tag text-center">test</a>

                    <a href="/tags/221/" class="post-tag text-center">England</a>

                    <a href="/tags/219/" class="post-tag text-center">成长日记</a>

                    <a href="/tags/210/" class="post-tag text-center">爱情</a>

                    <a href="/tags/207/" class="post-tag text-center">商都物语抄</a>

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

