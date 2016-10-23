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
        <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <h1>他们需要你的帮助！</h1>
                            </div>
                        </div>
                    </div>
                    <div class="thumbnail content-thumbnail">
                        <img alt="no pic" src="imgs/me.jpg">

                        <div class="caption">
                            <h4><strong>XXX</strong> looks for help!</h4>

                            <p>This is the description of his/her problem</p>
                            <p><strong>reward: 1 rmb</strong><p>
                            <a class="btn btn-info" href="private_view.jsp">View</a>
                            <a class="btn btn-primary" href="private_view.jsp">Answer</a>
                        </div>
                    </div>
                    <div class="thumbnail content-thumbnail">
                        <img alt="no pic" src="imgs/me.jpg">

                        <div class="caption">
                            <h4><strong>XXX</strong> looks for help!</h4>

                            <p>This is the description of his/her problem</p>
                            <p><strong>reward: 1 rmb</strong><p>
                            <a class="btn btn-info" href="private_view.jsp">View</a>
                            <a class="btn btn-primary" href="private_view.jsp">Answer</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>也看看这些？</h1>
                    </div>
                    <div class="thumbnail content-thumbnail">
                        <img alt="no pic" src="imgs/image-1.png">

                        <div class="caption">
                            <h4><strong>XXX</strong> looks for help!</h4>

                            <p>This is the description of his/her problem</p>
                            <p>pay <strong>1 rmb</strong> to read the answer<br/>(The answer is offered by <strong>Mr. XXX)</strong></p>
                            <a class="btn btn-danger" href="private_peek.jsp">付费阅读回答</a>
                        </div>
                    </div>
                    <div class="thumbnail content-thumbnail">
                        <img alt="no pic" src="imgs/image-1.png">

                        <div class="caption">
                            <h4><strong>XXX</strong> looks for help!</h4>

                            <p>This is the description of his/her problem</p>
                            <p>pay <strong>1 rmb</strong> to read the answer<br/>(The answer is offered by <strong>Mr. XXX)</strong></p>
                            <a class="btn btn-danger" href="private_peek.jsp">付费阅读回答</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-header">
                <h1>想要发布您自己的问题?</h1>
            </div>
            <p>
                你可以发布一个问题，指定一个回答着，并向Ta支付。
                <a href="private_postquestion.jsp" class="btn-link"> >>点击此处发布你的问题 </a>
            </p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>这是侧栏标题</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>