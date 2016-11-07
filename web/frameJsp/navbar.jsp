<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- navbar --%>
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

        <div class="collapse navbar-collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li <%--class="active"--%>><a href="/">首页<span class="sr-only">(current)</span></a></li>
                <li><a href="/question">千金悬赏</a></li>
                <li><a href="/pquestion">私有悬赏</a></li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input class="form-control" placeholder="Search" type="text">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/ask" class="btn btn-primary" style="font-size: 15px;">提问</a></li>
                <li class="dropdown hidden" id="dropdown-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false" id="welcome-menu"><span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <img src="/imgs/me.jpg" class="img-circle avatar-nav"/>
                        </li>
                        <li class="divider"></li>
                        <li><a href="/user/letter">我的消息</a></li>
                        <li><a href="/user/concern">我的关注</a></li>
                        <li class="divider"></li>
                        <li><a href="/user">个人中心</a></li>
                        <li><a href="/user/setting">设置</a></li>
                        <li class="divider"></li>
                        <li><a href="/logout.do">退出登录</a></li>
                    </ul>
                </li>
                <li><a class="hidden" id="login-menu" data-toggle="modal" data-target="#loginModal" href="">登录</a></li>
            </ul>
        </div>

    </div>
</div>

<%-- modal --%>
<div class="bs-docs-section">
    <div class="row">
        <div class="col-lg-6">

            <!-- Modal -->
            <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">登录</h4>
                        </div>
                        <div class="alert alert-danger hidden" role="alert" id="responseAlert"></div>
                        <form action="/login.do" method="post" id="loginForm">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="control-label" for="stuId">学号</label>
                                    <input class="form-control input-sm" id="stuId" name="stuId" type="text">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="stuPwd">密码</label>
                                    <input class="form-control input-sm" id="stuPwd" name="stuPwd" type="password">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="submit" class="btn btn-primary">登录</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>