<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="True" name="HandheldFriendly"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0"/>
    <meta name="description" content="sharefun.com"/>
    <meta name="keywords" content="sharefun">
    <link href="https://www.textarea.com/signup/" rel="canonical"/>
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
    <meta name="robots" content="noindex,nofollow"/>
    <style>
        body {

            background-image: url('https://www.textarea.com/static/background/sign/1.jpg?v=7305e30660b503d78cc57b03ab0bb871');
            background-position: center center;
            background-size: cover;
        }
    </style>
    <link rel="stylesheet"
          href="https://www.textarea.com/static/assets/css/signup.min.css?v=765408030fb1526e77a6f09fd6584441">
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
    <header id="header" class="signup no-print">
        <nav id="nav" class="clearfix">
            <a href="/" class="logo pull-left">
                <img src="https://www.textarea.com/static/logo-white.png?v=efc432e71a8c40037db456e76754bb62"
                     alt="TextArea Logo">
            </a>
            <div class="pull-left">
                <ul>
                    <li class="explore">
                        <a href="/discover/">Explore</a>
                    </li>
                </ul>
            </div>
            <div class="pull-right">
                <ul>
                    <li class="signin"><a href="/signin/" class="btn btn-default">Sign in</a></li>
                    <li class="signup"><a href="/signup/" class="btn btn-primary">Sign up</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div id="container" class="signup">
        <h1 class="text-center">sharefun</h1>
        <div id="signup">
            <form method="post" action="/checkemail/" data-toggle="validator">
                <input type="hidden" name="_xsrf" value="2|ca694757|a42e1477981b002440af5e0265eec329|1481318833"/>
                <input type="hidden" name="next" value="/">
                <div class="card">
                    <div class="form-group">
                        <input type="text" name="username" id="username" class="form-control"
                               placeholder="Username" value=""
                               pattern="^[A-Za-z0-9]+$"
                               data-minlength="3"
                               data-minlength-error="Username can&#39;t less then 3 character"
                               data-error="Username only accept alpha and number"
                               required>
                        <div class="help-block with-errors">
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control"
                               value="" placeholder="Email"
                               data-error="Email format error"
                               required>
                        <div class="help-block with-errors">
                        </div>
                        ${error}
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control"
                               placeholder="Password"
                               data-minlength="6"
                               data-minlength-error="Password can&#39;t less then 6 character"
                               required>
                        <div class="help-block with-errors">

                        </div>
                    </div>
                    <div class="form-group checkbox">
                        <label>
                            <input type="checkbox" name="eula" value="on" checked="checked">
                            I accept Privacy and Terms
                        </label>
                        <div class="help-block with-errors">
                        </div>
                    </div>
                </div>
                <div>
                    <button class="btn btn-primary">Sign Up</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://www.textarea.com/static/vendor/js/vendor.min.js?v=8b2638140f055e6efaffd2804245700b"></script>
<script src="https://www.textarea.com/static/assets/js/script.min.js?v=6fb1424bfb8c2da38fc94ef15c841259"></script>

<script src="https://www.textarea.com/static/bootstrap-validator-0.9.0/dist/validator.min.js?v=40c93ea04f47fdb4526cd3ef91738900"></script>

</body>
</html>

