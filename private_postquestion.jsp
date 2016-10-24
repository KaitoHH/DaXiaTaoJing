<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
    <style type="text/css">
        body,button, input, select, textarea,h1 ,h2, h3, h4, h5, h6 {
            font-family: Microsoft YaHei,'宋体' , Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;
        }
    </style>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">

    <div class="row">
        <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <h1>您遇到了什么问题？</h1>
                            </div>
                        </div>
                    </div>
                    <form role="form" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">标题</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">指定</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" placeholder="在此输入您想邀请的用户的ID" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">描述</label>
                            <div class="col-lg-10 col-md-10">
                                <textarea rows=20 class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label"><span class="text-danger">悬赏</span></label>
                            <div class="col-lg-3 col-md-3">
                                <input type="text" placeholder="您将支付这些金额给回答者" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">标签</label>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <input type="text" placeholder="您设置的标签将帮助回答者更好地理解您的问题！" class="form-control">
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5">
                                <span class="text-muted">这些标签可以作为参考：</span>
                                <span class="label label-success">离散数学</span>
                                <span class="label label-danger">ACM</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1"></label>
                            <div class="col-lg-2 col-md-2">
                                <input type="submit" class="btn btn-success form-control" value="提问">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>