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
                                <h1>他们需要你的帮助！</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="thumbnail content-thumbnail">
                            <img alt="no pic" src="imgs/me.jpg">
                            <div class="caption">
                                <h4><a href="#" class="btn-link">User_ID</a> 向您求助!</h4>
                                <p>
                                    数据结构怎么学？<br/>
                                    What is Balanced Binary Search Tree? What's the difference between Red-black Tree and AVL Tree?<br/>
                                </p>
                                <p>
                                    <span class="label label-success">数据结构</span>
                                    <span class="label label-warning">学习</span>
                                </p>
                                <p><strong>悬赏：1 元</strong></p>
                                <a class="btn btn-info" href="private_view.jsp">阅读该问题</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="thumbnail content-thumbnail">
                            <img alt="no pic" src="imgs/me.jpg">
                            <div class="caption">
                                <h4><a href="#" class="btn-link">User_ID</a> 向您求助!</h4>
                                <p>
                                    数据结构怎么学？<br/>
                                    What is Balanced Binary Search Tree? What's the difference between Red-black Tree and AVL Tree?<br/>
                                </p>
                                <p>
                                    <span class="label label-success">数据结构</span>
                                    <span class="label label-warning">学习</span>
                                </p>
                                <p><strong>悬赏：1 元</strong></p>
                                <a class="btn btn-info" href="private_view.jsp">阅读该问题</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>也看看这些？</h1>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="thumbnail content-thumbnail">
                            <img alt="no pic" src="imgs/image-1.png">
                            <div class="caption">
                                <h4>一个关于数据结构的问题</h4>
                                <p>
                                    数据结构怎么学？<br/>
                                    What is Balanced Binary Search Tree? What's the difference between Red-black Tree and AVL Tree?<br/>
                                </p>
                                <p>
                                    <span class="label label-success">数据结构</span>
                                    <span class="label label-warning">学习</span>
                                </p>
                                <p>（这个问题是<a href="#" class="btn-link">User_ID</a>提出的，您可以向Ta支付<span class="text-danger">1 元</span>以查看答案）</p>
                                <a class="btn btn-danger" href="private_peek.jsp">偷看一下（付费）</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="thumbnail content-thumbnail">
                            <img alt="no pic" src="imgs/image-1.png">
                            <div class="caption">
                                <h4>一个关于数据结构的问题</h4>
                                <p>
                                    数据结构怎么学？<br/>
                                    What is Balanced Binary Search Tree? What's the difference between Red-black Tree and AVL Tree?<br/>
                                </p>
                                <p>
                                    <span class="label label-success">数据结构</span>
                                    <span class="label label-warning">学习</span>
                                </p>
                                <p>（这个问题是<a href="#" class="btn-link">User_ID</a>提出的，您可以向Ta支付<span class="text-danger">1 元</span>以查看答案）</p>
                                <a class="btn btn-danger" href="private_peek.jsp">偷看一下（付费）</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-header">
                <h1>想要发布您自己的问题?</h1>
            </div>
            <p>
                你可以发布一个问题，指定一个回答着，并向Ta支付。
                <a href="post_question.jsp" class="btn-link"> >>点击此处发布你的问题 </a>
            </p>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>