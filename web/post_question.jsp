<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <%@include file="frameJsp/pulgin/textarea.jsp" %>
    <script type="text/javascript" src="/js/jquery.tagsinput.min.js"></script>
    <link rel="stylesheet" href="/css/jquery.tagsinput.min.css"/>
    <script type="text/javascript" src="/js/question.js"></script>
    <title>大夏淘经</title>
    <style type="text/css">
        body, button, input, select, textarea, h1, h2, h3, h4, h5, h6 {
            font-family: Microsoft YaHei, '宋体', Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('#topic').tagsInput({
                width: 'auto',
                height: 'auto',
                'delimiter': [',', ';', ' ']
            });
        })
    </script>
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
                    <form role="form" class="form-horizontal" action="/postQuestion.do" method="post" id="questionForm">
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">标题</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" class="form-control" name="tittle">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">问题类型</label>
                            <div class="col-lg-10 col-md-10">
                                <select class="form-control" id="select" name="type">
                                    <option value="0" selected="selected">请选择类型</option>
                                    <option value="1">文科</option>
                                    <option value="2">理科</option>
                                    <option value="3">工科</option>
                                    <option value="4">思政</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">指定</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" placeholder="在此输入您想邀请的用户的ID, 留空则转为公共问题" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">描述</label>
                            <div class="col-lg-10 col-md-10">
                                <textarea rows=20 class="editor" name="content"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label"><span class="text-danger">悬赏</span></label>
                            <div class="col-lg-3 col-md-3">
                                <input type="text" placeholder="您将支付这些金额给回答者" class="form-control" name="pay">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1 control-label">标签</label>
                            <div class="col-lg-10 col-md-10">
                                <input type="text" placeholder="您设置的标签将帮助回答者更好地理解您的问题！" class="form-control" id="topic"
                                       name="tag">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-1 col-md-1"></label>
                            <div class="col-lg-2 col-md-2">
                                <input type="submit" class="btn btn-success form-control" value="提问">
                            </div>
                        </div>
                        <div class="form-group hidden" id="responseDiv">
                            <div class="col-md-offset-1 col-lg-offset-1 col-lg-10 col-md-10">
                                <div class="panel panel-danger">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">错误</h3>
                                    </div>
                                    <div class="panel-body" id="questionResponse"></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group hidden" id="successDiv">
                            <div class="col-md-offset-1 col-lg-offset-1 col-lg-10 col-md-10">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">成功</h3>
                                    </div>
                                    <div class="panel-body">发布成功！3秒后跳转至问题页面</div>
                                </div>
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