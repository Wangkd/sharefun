<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta content="True" name="HandheldFriendly" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>

        Compose Article

    </title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0" />
    <meta name="description" content="TextArea.com, a place for people to read and write." />
    <meta name="keywords" content="textarea,textarea.com,blog,博客,空间,主页,个人主页,">

    <link href="https://www.textarea.com/write/773/" rel="canonical" />

    <link rel="alternate" type="application/atom+xml" href="/atom.xml" />

    <link rel="shortcut icon" type="image/png" sizes="any" href="https://www.textarea.com/static/logo.png?v=50157494967a1eecefe30bd89e19941e">
    <link rel="apple-touch-icon" type="image/png" sizes="any" href="https://www.textarea.com/static/logo.png?v=50157494967a1eecefe30bd89e19941e">
    <link rel="stylesheet" href="https://www.textarea.com/static/vendor/css/vendor.min.css?v=905591e7a43732564c4398c4e4937bfb">
    <link rel="stylesheet" href="https://www.textarea.com/static/assets/css/style.min.css?v=4e923c3821b7f5ec708bf7a4839af490">
    <link rel="stylesheet" href="https://www.textarea.com/static/charter/webfonts/stylesheet.css?v=a7a222883450c35a697994140831cfc3">
    <!--[if lt IE 9]>
    <script src="https://www.textarea.com/static/html5shiv-3.7.3/dist/html5shiv.js?v=f4d9dea8e0ae8455500862bbb874d63c"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/resources/css/wangEditor.min.css">
    <noscript><style>img[data-src]{display:none}</style></noscript>

    <style>
        .btn {
            margin-right: 1em;
        }
        .editor-link {
            color: gray;
            font-size: 14px;
            line-height: 34px;
        }
    </style>
    <link rel="stylesheet" href="https://www.textarea.com/static/assets/css/post.min.css?v=d423b763b4b97f515ef58fe81394b54a">


    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?a2fc42e8e00f9cbd04881a46b7841c99";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>


    <link href="https://www.textarea.com/static/redactor-2-131/redactor/redactor.css?v=c65c21bef080f3bd6b944dc9c21a8b12" type="text/css" rel="stylesheet"/>
    <style type="text/css">
        .redactor-editor {
            padding: 1em;
        }

    </style>
</head>
<body>
<div id="wrapper">

    <header id="header" class=" no-print"><nav id="nav" class="clearfix">
        <a href="/" class="logo pull-left">
            <img src="https://www.textarea.com/static/logo-grey-small.png?v=48110adac97751988f648f1ae2703a9d" alt="TextArea Logo">
        </a>
        <div class="pull-left">
            <ul>

                <li class="feed">
                    <a href="/">Home</a>
                </li>

                <li class="explore">
                    <a href="/discover/">Explore</a>
                </li>
            </ul>
        </div>
        <div class="pull-right">
            <ul>
                <li class="notification">
                    <a href="/notification/" title="Notification">
                        <span>
                            <i class="fa fa-bell-o fa-lg"></i>
                        </span>
                    </a>
                </li>
                <li class="setting">
                    <a href="/setting/" title="Setting">
                        <span><i class="fa fa-gear fa-lg"></i></span>
                    </a>
                </li>
                <li class="signout">
                    <a href="/signout/" title="Signout">
                        <span><i class="fa fa-sign-out fa-lg"></i></span>
                    </a>
                </li>
                <li class="user">
                    <a href="/boop/" class="avatar avatar-small" title="boop">
                        <span style="color:white;background-color:rgb(232,164,164)">
                            B
                        </span>
                    </a>
                </li>
            </ul>
        </div>
        </nav>
    </header>


    <div id="container">
        <form class="post content editor typography card" method="post" lang="zh" action="/submitblog">
            <input type="hidden" name="_xsrf" value="2|c231c23a|5084dec2a8fddcdd5bf8a7312de145d6|1483394418"/>
            <div class="card-cover">
                <input id="cover-value" type="hidden" name="cover">
                <div id="cover-placeholder" class="placeholder">
                    <span class="text text-center">
                        <i class="fa fa-picture-o"></i> Click to add a photo
                    </span>
                </div>
            </div>
            <div class="card-wrapper">
                <div class="card-header no-print">
                    <a class="avatar avatar-small" href="/boop/">
                        <span style="color:white;background-color:rgb(232,164,164)">B</span>
                    </a>
                    <div class="author" itemprop="author" itemscope itemtype="http://schema.org/Person">
                        <a class="nickname" href="/boop/" itemprop="url">
                            boop
                        </a>
                        <a class="username" href="/boop/">
                            <s>@</s><span itemprop="name">boop</span>
                        </a>
                    </div>
                    <div style="overflow:hidden">
                        <div class="published_at">
                            <span>Published on</span>
                            <time class="datetime" title="January 3, 2017 at 8:51 pm" datetime="2017-01-03T20:51:14"
                                  itemprop="dateCreated datePublished">
                                0 seconds ago
                            </time>
                        </div>
                        <span>·</span> <span class="label label-small label-warning">Unpublished</span>
                    </div>
                </div>

                <%--write the title here-------------------------------------------------------------------%>
                <div class="form-group typography" style="margin:0">
                    <input type="text" id="title" name="title" class="card-title h1" placeholder="Title" value="">
                </div>

                <%--write the blog content here-------------------------------------------------------------------%>
                <div class="post-body ">
                    <textarea id="post-textarea" class="form-control" name="content" rows="12" placeholder="Type Something..." style="width:100%"></textarea>
                </div>

                <%--<div style="width: 80%;" class="post-body" >
                    <textarea id="33" style="height: 400px;">
                        <p>请输入内容...</p>
                    </textarea>
                </div>--%>
                <%--write the tags here-------------------------------------------------------------------%>
                <div class="form-group">
                    <input type="text" id="tags" name="tags" class="form-control"
                           value=""
                           placeholder="Tags Separated by spaces 5 tops">
                </div>

                <div class="form-group">
                    <label for="public" class="checkbox-inline" style="padding-left: 0">
                        <input type="radio" id="public" name="kind" value="public"
                               checked>
                        Public
                    </label>
                    <label for="premium" class="checkbox-inline">
                        <input type="radio" id="premium" name="kind" value="premium"
                        >
                        Premium
                    </label>
                </div>
                <div class="form-submit card-footer clearfix">
                    <button class="btn btn-primary pull-left" name="submit" value="publish">Publish</button>
                    <button class="btn btn-default pull-left" name="submit" value="save">Save</button>

                    <a target="_blank" href="/setting/" class="editor-link">
                        Markdown?
                    </a>


                    <a class="pull-right editor-link" href="/delete/773/">
                        Delete
                    </a>

                </div>
            </div>
        </form>
    </div>
    <form id="cover-form" enctype="multipart/form-data" style="display:none">
        <input id="cover-input" type="file" name="file">
        <input type="hidden" name="post" value="773">
        <input type="hidden" name="_xsrf" value="2|c231c23a|5084dec2a8fddcdd5bf8a7312de145d6|1483394418"/>
    </form>


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

                        <a href="/write/773/?language=zh">中文</a>

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

<script>
    $(document).ready(function() {
        $('#cover-placeholder').on('click', function(e) {
            if ($('#cover-placeholder').css('background-image') != 'none') {
                $('#cover-placeholder').css({'background-image': 'none'});
                $('#cover-placeholder span.text').html(
                    '<i class="fa fa-picture-o"></i> Click to add a photo'
                );
                $('#cover-value').attr('value', '');
            } else {
                $('#cover-input').click();
            }
        });
        $('#cover-input').change(function() {
            $.ajax({
                url: '/resources/',
                type: 'POST',
                data: new FormData(document.getElementById('cover-form')),
                processData: false,
                contentType: false,
                success: function(res) {
                    $('#cover-value').val(res.url);
                    $('#cover-placeholder span.text').html(
                        '<i class="fa fa-remove"></i> Click to delete a photo'
                    );
                    $('#cover-placeholder').css({
                        'background-image': "url('" + res.url + "')"
                    });
                }
            });
        });
    });
</script>

<script src="https://www.textarea.com/static/redactor-2-131/redactor/redactor.min.js?v=d6cfb84f77d2748822b3bde059c0192b" type="text/javascript"></script><script src="https://www.textarea.com/static/redactor-plugins/video.js?v=67d8c6e7d5a67d7b920677c9eedde88a" type="text/javascript"></script><script src="https://www.textarea.com/static/redactor-plugins/alignment.js?v=b9e8d62c3e1cd96e61aae1d80bbfbe23" type="text/javascript"></script><script src="https://www.textarea.com/static/redactor-plugins/imagemanager.js?v=b83637dc6e905c9f9759732e28563845" type="text/javascript"></script><script src="https://www.textarea.com/static/redactor-plugins/inlinestyle.js?v=1ffd71ee5c1dff63720ada25b62287d9" type="text/javascript"></script><script src="https://www.textarea.com/static/redactor-plugins/zh_cn.js?v=1210af50ad87c25a4dbc42df3f8c3679" type="text/javascript"></script>
<script type="text/javascript">
    //<![CDATA[
    $(function() {
        var dirty = false;
        $('#post-textarea').redactor({
            air: false,
            script: false,
            minHeight: 300,
            shortcuts: false,
            linkNofollow: true,
            buttons: ['format', 'bold', 'italic', 'deleted', 'lists', 'image', 'file', 'link', 'horizontalrule'],
            formatting: [
                'p',
                'blockquote',
                'pre',
                'h1',
                'h2',
                'h3',
                'h4',
                'h5'
            ],

            plugins: [
                'video',
                'alignment',
                'inlinestyle',
                'imagemanager'
            ],
            imageUpload: 'localhost:8080/uploadImage',

            imageManagerJson: '/write/773/image',

            imageUploadForms: '#image-form',
            callbacks: {
                change: function() {
                    dirty = true;
                    if ($(this.code.get()).last().prop('tagName').toUpperCase() !== 'P') {
                        $($('#post-textarea').redactor('core.editor')).append('<p><br /></p>');
                    }
                },
                autosave: function(name, json) {
                    dirty = false;
                }
            },
            imageUploadErrorCallback: function(json)
            {
                alert('Upload fail,try later.');
            }
        });

        $('form:not(#image-form)').on('submit', function() {dirty = false;});
    });

    //]]>
</script>

<form action="/image/" id="image-form" enctype="multipart/form-data" style="display: none">
    <input id="image-input" type="file" name="file" multiple>
    <input type="hidden" name="post" value="773">
    <input type="hidden" name="_xsrf" value="2|c231c23a|5084dec2a8fddcdd5bf8a7312de145d6|1483394418"/>
</form>

</body>
</html>

