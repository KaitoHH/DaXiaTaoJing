<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
                <form class="form-horizontal">
                    <fieldset>
                        <legend>Legend</legend>

                        <div class="form-group">
                            <label for="Avatar" class="col-lg-2 control-label">头像</label>
                            <div class="col-lg-10 col-sm-6" id="Avatar">
                                <div class="form-group-itemContent">
                                    <div class="form-groupEditor form-groupEditor-none-avatar">
                                        <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg"
                                             inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                                        <span class="form-groupEditor-spinner Spinner"></span>
                                        <!-- 暂时仅针对机构账号显示 mask -->

                                    </div>
                                    <form target="av_up_frame" style="display:none;" method="post"
                                          enctype="multipart/form-data"
                                          action="https://upload.zhihu.com:/upload_avatar"><label
                                            for="avt_file"></label><input accept="image/*" name="picture"
                                                                          id="avt_file"
                                                                          type="file"><input name="handle_mode"
                                                                                             value="upload"
                                                                                             type="hidden"><input
                                            name="type" value="1" type="hidden"><input name="dest_id"
                                                                                       value="79cc5bc9d1e79bb237f2baa3cf7dd4d8"
                                                                                       type="hidden"><input
                                            name="return_size" value="l" type="hidden"></form>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputsex" class="col-lg-2 control-label">性别</label>

                                <div class="col-lg-10">
                                    <input class="form-control" id="inputSex" placeholder="boy/girl" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">邮箱</label>

                                <div class="col-lg-10">
                                    <input class="form-control" id="inputEmail" placeholder="Email" type="text">
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="inputSentence introduction" class="col-lg-2 control-label">一句话介绍</label>

                                <div class="col-lg-10">
                                    <input class="form-control" id="inputSentence introduction"
                                           placeholder="programmer"
                                           type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="Personal Introduction" class="col-lg-2 control-label">个人简介</label>

                                <div class="col-lg-10">
                                    <textarea class="form-control" rows="3" id="Personal Introduction"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="select" class="col-lg-2 control-label">专业</label>

                                <div class="col-lg-10">
                                    <select class="form-control" id="select">
                                        <option selected="selected">1．计算机科学与技术</option>
                                        <option>2．软件工程</option>
                                        <option>3．法学</option>
                                        <option>4．学前教育</option>
                                        <option>5．电子科学与技术</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="topics" class="col-lg-2 control-label">擅长话题</label>

                                <div class="col-lg-10">
                                    <textarea class="form-control" rows="3" id="topics"></textarea>
                                </div>
                            </div>

                            <a name="box">
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
                            </a>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button type="reset" class="btn btn-default">Cancel</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

        <div class="col-lg-4 col-lg-offset-1">


            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="zm-profile-side-section-title">
                        关注了 <a href="profileConcern.jsp#topics" class="zg-link-litblue"><strong>14 个话题</strong></a>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="zm-side-section-inner">
                        <span class="zg-gray-normal">个人主页被 <strong>102</strong> 人浏览</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<%--在此位置以上结束代码--%>
<%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>