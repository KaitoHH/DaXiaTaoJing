<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="daxiataojingApp">
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
    <link href="/css/profile.css" rel="stylesheet"/>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">
    <%@include file="frameJsp/profile/profilePanel.jsp" %>

    <%--从此位置开始写代码--%>
    <ul class="breadcrumb">
        <li class="active">全部消息</li>
    </ul>

    <div class="row">
        <div class="col-lg-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    2016-10-10
                </div>
                <div class="panel-body">
                    <a href="#">User_ID</a> 回答了 <a href="#">数据结构数据结构数据结构</a>
                </div>
                <div class="panel-body">
                    <a href="#">User_ID</a> 回答了 <a href="#">高等数学高等数学高等数学</a>
                </div>
                <div class="panel-body">
                    <a href="#">User_ID</a> 关注了你
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    2016-10-20
                </div>
                <div class="panel-body">
                    <a href="#">User_ID</a> 回答了 <a href="#">数据结构数据结构数据结构</a>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    2016-10-30
                </div>
                <div class="panel-body">
                    <a href="#">User_ID</a> 回答了 <a href="#">数据结构数据结构数据结构</a>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    2016-10-31
                </div>
                <div class="panel-body">
                    <a href="#">User_ID</a> 回答了您的<i>私有悬赏</i>问题 <a href="#">php是不是世界上最好的语言</a>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    2016-11-2
                </div>
                <div class="panel-body">
                    您的问题 <a href="#">什么是memory leak?</a> 有了新的回答
                </div>
            </div>
            <a href="#" class="btn btn-info btn-block">更多</a>
        </div>
        <div class="col-lg-3 col-lg-offset-1">
            <%@include file="frameJsp/profile/profileRightBar.jsp" %>
        </div>
    </div>
</div>

<%--在此位置以上结束代码--%>
<%@include file="frameJsp/footer.jsp" %>
<script src="/js/angular/angular.min.js"></script>
<script src="/js/angular/app.js"></script>
<script src="/js/angular/controllers.js"></script>
<script src="/js/angular/services.js"></script>
</body>
</html>