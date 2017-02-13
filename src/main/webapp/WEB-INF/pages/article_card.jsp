<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangkd
  Date: 1/2/17
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach var="i"  begin="0" end="${blogList.size()-1}" >
    <article class="post summary card typography" lang="en"
             itemscope itemtype="http://schema.org/Article">

        <div class="card-wrapper">

            <div class="card-header no-print">
                <a class="avatar avatar-small" href="/foodandtrip/">
                    <span style="color:white;background-color:rgb(118,164,164)">${userList.get(i).getUserName().charAt(0)}</span>
                </a>

                <div class="author" itemprop="author" itemscope itemtype="http://schema.org/Person">
                    <a class="nickname" href="/user?user_id=${userList.get(i).getUserId()}" itemprop="url">
                            ${userList.get(i).getUserName()}
                    </a>
                    <a class="username" href="/user?user_id=${userList.get(i).getUserId()}">
                        <s>@</s><span itemprop="name">${userList.get(i).getUserName()}</span>
                    </a>
                </div>
                <div style="overflow:hidden">
                    <div class="published_at">
                        <span>Published on</span>
                        <time class="datetime" title="March 5, 2016 at 4:43 am" datetime="2016-03-05T04:43:08"
                              itemprop="dateCreated datePublished">
                            <a>${blogList.get(i).getCreatedDate()}</a>
                        </time>
                    </div>
                    <c:if test="${blogList.get(i).getUpdatedDate() != null}" >
                        <div class="modified_at">
                            <span>·</span>
                            <span>Last modified on</span>
                            <time class="datetime" title="March 5, 2016 at 4:44 am" datetime="2016-03-05T04:44:00"
                                  itemprop="dateModified">
                                <a>${blogList.get(i).getUpdatedDate()}</a>
                            </time>
                        </div>
                    </c:if>
                    <span>·</span> <span>Public</span>
                </div>
            </div>
            <h2 class="card-title" itemprop="name headline">
                <a href="/blog_detail?id=${blogList.get(i).getBlogId()}" itemprop="url">
                        ${blogList.get(i).getBlogTitle()}
                </a>
            </h2>
            <div class="card-body" itemprop="description">
                <p>${blogList.get(i).getBlogAbstract()}...</p>
                <p>
                    <a href="/blog_detail?id=${blogList.get(i).getBlogId()}" class="seemore">See More</a>
                </p>
            </div>
            <%--footer for article card ----------------------------------------------------------------------------------------------%>
            <div class="card-footer">
                <a>
                    <span>
                        <c:if test="${blogList.get(i).getPageClick() ==1}">1 read</c:if>
                        <c:if test="${blogList.get(i).getPageClick() !=1}">${blogList.get(i).getPageClick()} reads</c:if>
                    </span>
                </a>
                <span>·</span>
                <a>
                    <span>
                        <c:if test="${numOfStarsList.get(i) != 1}">${numOfStarsList.get(i)} stars</c:if>
                        <c:if test="${numOfStarsList.get(i) == 1}">1 star</c:if>
                    </span>
                </a>
                <span>·</span>
                <a>
                    <span>
                        <c:if test="${numOfComments.get(i) != 1}">${numOfComments.get(i)} comments</c:if>
                        <c:if test="${numOfComments.get(i) == 1}">1 comment</c:if>
                    </span>
                </a>
            </div>
        </div>
    </article>
</c:forEach>