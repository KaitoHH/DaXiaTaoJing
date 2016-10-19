<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="/" class="navbar-brand">大夏淘经</a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页<span class="sr-only">(current)</span></a></li>
                <li><a href="#">全民悬赏</a></li>
                <li><a href="#">私有悬赏</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">个人中心<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">我的消息</a></li>
                        <li><a href="#">我的资料</a></li>
                        <li><a href="#">最近动态</a></li>
                        <li class="divider"></li>
                        <li><a href="#">我的关注</a></li>
                        <li class="divider"></li>
                        <li><a href="#">我的问题</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input class="form-control" placeholder="Search" type="text">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">登录</a></li>
            </ul>
        </div>

    </div>
</div>