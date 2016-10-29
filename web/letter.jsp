<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
    <link href="css/profile.css" rel="stylesheet"/>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">
    <div class="bs-docs-section">
        <div class="row profile panel">
            <div class="col-md-4 bg_blur ">
                <a href="#" class="follow_btn hidden-xs btn btn-primary btn-lg">Follow</a>
            </div>
            <div class="col-md-8  col-xs-12 info-col">
                <img src="http://lorempixel.com/180/180/people/6/" class="img-rounded picture hidden-xs">
                <img src="http://lorempixel.com/180/180/people/6/" class="img-rounded visible-xs picture_mob">
                <div class="header">
                    <h2>机智汇</h2>
                    <h4>软件工程</h4>
                    <span>为什么，我如此地，机智。</span>
                </div>

                <div class="btn-group btn-block">
                    <button class="btn btn-inverse btn-lg">提问 16</button>
                    <button class="btn btn-inverse btn-lg">回答 14</button>
                    <button class="btn btn-inverse btn-lg">关注 14</button>
                    <button class="btn btn-inverse btn-lg">粉丝 14</button>
                </div>
            </div>

        </div>
    </div>
    <%--从此位置开始写代码--%>

    <div class="row">
        <div class="col-lg-6">

            <div class="col-lg-2">
                完善度
            </div>
            <div class="col-lg-10">
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" style="width: 20%">20%</div>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-lg-offset-1">
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <a class="item" href="concern.jsp#concern">
                            <span class="zg-gray-normal">关注了</span><br>
                            <strong>3</strong><label> 人</label>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <a class="item" href="concern.jsp#concerned">
                            <span class="zg-gray-normal">关注者</span><br>
                            <strong>3</strong><label> 人</label>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <a href="lately.jsp">亲爱的阿基米德</a>
                    » 编辑个人资料
                </div>
            </div>
        </div>
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
                                            for="avt_file"></label><input accept="image/*" name="picture" id="avt_file"
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
                                    <input class="form-control" id="inputSentence introduction" placeholder="programmer"
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
                        关注了 <a href="concern.jsp#topics" class="zg-link-litblue"><strong>14 个话题</strong></a>
                    </div>
                </div>
            </div>


            <%--
                <div class="zm-profile-side-topics" id="zh-profile-following-topic">

                <a class="link" data-hovercard="t$b$19874223" href="/topic/19874223">
                    <img class="Avatar Avatar--l" src="https://pic2.zhimg.com/90f9d7cc0738b74705aabe09fc508d25_l.png" srcset="https://pic2.zhimg.com/90f9d7cc0738b74705aabe09fc508d25_xl.png 2x" alt="河圖（歌手）">
                </a>

                <a class="link" data-hovercard="t$b$19580599" href="/topic/19580599">
                    <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/v2-61dd74b092312825e80f1de6f686a138_l.jpg" srcset="https://pic1.zhimg.com/v2-61dd74b092312825e80f1de6f686a138_xl.jpg 2x" alt="抑郁">
                </a>

                <a class="link" data-hovercard="t$b$19579921" href="/topic/19579921">
                    <img class="Avatar Avatar--l" src="https://pic2.zhimg.com/5b7867f95e8395fe03db954b70394629_l.png" srcset="https://pic2.zhimg.com/5b7867f95e8395fe03db954b70394629_xl.png 2x" alt="女追男">
                </a>

                <a class="link" data-hovercard="t$b$19583225" href="/topic/19583225">
                    <img class="Avatar Avatar--l" src="https://pic2.zhimg.com/f35c989d9_l.jpg" srcset="https://pic2.zhimg.com/f35c989d9_xl.jpg 2x" alt="初恋">
                </a>

                <a class="link" data-hovercard="t$t$19554945" href="/topic/19554945">
                    <img class="Avatar Avatar--l" src="https://pic4.zhimg.com/acca8921f_l.jpg" srcset="https://pic4.zhimg.com/acca8921f_xl.jpg 2x" alt="心理">
                </a>

                <a class="link" data-hovercard="t$b$19568143" href="/topic/19568143">
                    <img class="Avatar Avatar--l" src="https://pic3.zhimg.com/21d3703b08d5a57566ac67e3b728b01e_l.png" srcset="https://pic3.zhimg.com/21d3703b08d5a57566ac67e3b728b01e_xl.png 2x" alt="心理健康">
                </a>

                <a class="link" data-hovercard="t$b$19567962" href="/topic/19567962">
                    <img class="Avatar Avatar--l" src="https://pic3.zhimg.com/43efd061747369b1f03cc2c34adca45e_l.jpg" srcset="https://pic3.zhimg.com/43efd061747369b1f03cc2c34adca45e_xl.jpg 2x" alt="博弈论">
                </a>--%>

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