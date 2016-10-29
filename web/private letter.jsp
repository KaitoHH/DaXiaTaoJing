<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">

    <%--以下代码请删除--%>
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6">
                <h1>Sample</h1>

                <p class="lead">Sample Text</p>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-6">

            </div>
        </div>
    </div>

    <%--从此位置开始写代码--%>
        <div class="row">
            <div class="col-lg-12">
            <div class="col-lg-6" >

                <div class="col-lg-3">
                    最近联系
                </div>
                <div class="col-lg-7">
                </div>
                <div class="col-lg-2">
                    <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal">私信</button>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        ×
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">
                                        发送私信
                                    </h4>
                                </div>

                                <div class="modal-body">
                                    <label for="inputname" class="col-lg-2 control-label">发给</label>

                                    <div class="col-lg-10">
                                        <input class="form-control" id="inputname" placeholder="搜索用户" type="text">
                                    </div>
                                    <div style="margin-bottom:10px;"></div>
                                </div>
                                <div class="modal-body">
                                    <label for="inputcontents" class="col-lg-2 control-label">内容</label>

                                    <div class="col-lg-10">
                                        <textarea class="form-control" rows="3" id="inputcontents"></textarea>
                                    </div>

                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                    </button>
                                    <button type="button" class="btn btn-primary">
                                        发送
                                    </button>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            </div>
                <div class="col-lg-2"></div>
        <div class="col-lg-4">
            <div class="alert alert-dismissible alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                担心骚扰？可以 <a href="profileSetting.jsp#box" class="alert-link">设置</a>为「开启陌生人私信箱」。
            </div>
        </div>
                </div>
            <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-6">
                <div style="margin-bottom:30px;"></div>
                <table style="border-style:dashed; border-width:1px; border-color:#C0C0C0;">
                    <tr>
                        <td>
                        <div class="text" style=" text-align:center;">还没有人给你发私信，不如你主动一点，给深交已久的朋发一封问候私信吧:)</div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
            </div>
            </div>




    <%--在此位置以上结束代码--%>
    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>