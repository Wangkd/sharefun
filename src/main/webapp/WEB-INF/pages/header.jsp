<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 1/1/17
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="header" class=" no-print">
    <nav id="nav" class="clearfix">
        <a href="/" class="logo pull-left">
            <img src="https://www.textarea.com/static/logo-grey-small.png?v=48110adac97751988f648f1ae2703a9d"
                 alt="TextArea Logo">
        </a>

        <div class="pull-left">
            <ul>
                <% if(session.getAttribute("user") != null){ %>
                <li class="feed active">
                    <a href="/">Home</a>
                </li>
                <% } %>

                <li class="explore">
                    <a href="/discover/">Explore</a>
                </li>
            </ul>
        </div>

        <div class="pull-right">
            <ul>
            <% if(session.getAttribute("user") != null){ %>
                <li class="notification">
                    <a href="/notification/" title="通知">
                        <span><i class="fa fa-bell-o fa-lg"></i></span>
                    </a>
                </li>
                <li class="setting">
                    <a href="/setting/" title="设置">
                        <span><i class="fa fa-gear fa-lg"></i></span>
                    </a>
                </li>
                <li class="signout">
                    <a href="/signout" title="Signout">
                        <span><i class="fa fa-sign-out fa-lg"></i></span>
                    </a>
                </li>
                <li class="user">
                    <a href="/user?user_id=${user.getUserId()}" class="avatar avatar-small" title="${user.getUserName()}">
                        <span style="color:white;background-color:rgb(232,164,164)">
                            ${user.getUserName().charAt(0)}
                        </span>
                    </a>
                </li>

            <% } else{ %>
            <li class="signin"><a href="/signin/" class="btn btn-default">Sign in</a></li>
            <li class="signup"><a href="/signup/" class="btn btn-primary">Sign up</a></li>
            <% } %>
            </ul>
        </div>
    </nav>
</header>