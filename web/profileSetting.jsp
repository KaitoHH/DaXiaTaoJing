<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
    <link href="/css/profile.css" rel="stylesheet"/>
    <script src="/js/setting.js"></script>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">
    <%@include file="frameJsp/profile/profilePanel.jsp" %>
    <%--从此位置开始写代码--%>
    <ul class="breadcrumb">
        <li><a href="/user">个人中心</a></li>
        <li class="active">账户设置</li>
    </ul>
    <div class="row">
        <div class="col-md-2 col-xs-3" style="text-align: center">资料完成度:</div>
        <div class="progress progress-striped active">
            <div class="progress-bar" style="width: 45%">45%</div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="well bs-component">
                <form class="form-horizontal" action="/updateProfile.do" method="post" id="settingForm">
                    <fieldset>
                        <legend>Legend</legend>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">性别</label>

                            <div class="col-lg-10">
                                <div class="radio">
                                    <label>
                                        <input name="gender" id="male" value="0"
                                        <c:out value='${user.gender==0?"checked":" "}'/> type="radio">
                                        男
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input name="gender" id="female" value="1"
                                        <c:out value='${user.gender==1?"checked":" "}'/> type="radio">
                                        女
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">邮箱</label>

                            <div class="col-lg-10">
                                <input name="email" class="form-control" id="inputEmail" placeholder="Email" type="text"
                                       value="${user.email}">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="inputSentence introduction" class="col-lg-2 control-label">一句话介绍</label>

                            <div class="col-lg-10">
                                <input name="introduction" class="form-control" id="inputSentence introduction"
                                       placeholder="programmer"
                                       type="text" value="${user.introduction}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="Personal Introduction" class="col-lg-2 control-label">个人简介</label>

                            <div class="col-lg-10">
                                <textarea name="longIntro" class="form-control" rows="3"
                                          id="Personal Introduction">${user.longIntro}</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="topics" class="col-lg-2 control-label">擅长话题</label>

                            <div class="col-lg-10">
                                <textarea name="topic" class="form-control" rows="3" id="topics"></textarea>
                            </div>
                        </div>

                        <%--<a name="box">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">是否开启陌生人</label>

                                <div class="col-lg-5">
                                    <div class="radio">
                                        <label>
                                            <input name="optionsRadios" id="optionsRadios1" value="option1"
                                                   checked="checked" type="radio">
                                            是
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="radio">
                                        <label>
                                            <input name="optionsRadios" id="optionsRadios2" value="option2"
                                                   type="radio">
                                            否
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </a>--%>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button type="reset" class="btn btn-default">Reset</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>

    </div>
</div>


<%--在此位置以上结束代码--%>
<%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>