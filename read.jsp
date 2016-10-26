<%--
  Created by IntelliJ IDEA.
  User: jmqxnxg
  Date: 2016/10/22
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">


    <div class="page-header" id="banner">

        <div class="panel panel-default">
            <div class="panel-body">





                <h1 id="sbuttons"><a class="btn-social btn-twitter" href="#"><i class="fa fa-twitter"></i></a> 千金悬赏&nbsp;&nbsp;&nbsp;&nbsp;<a href="question.jsp" class="btn btn-primary " data-toggle="popover" title="Popover title" data-content="提问">提问</a></h1>



                <div class="bs-docs-section">

                    <div class="row">
                        <div class="col-md-12">
                            <h2>最新发布的悬赏问题</h2>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="thumbnail content-thumbnail">
                                <img alt="" src="imgs/image-1.png">

                                <div class="caption">
                                    <h4>Thumbnail label</h4>

                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida
                                        at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <a class="btn btn-danger" href="#">Button</a> <a class="btn btn-info" href="#">Button</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="thumbnail content-thumbnail">
                                <img alt="" src="imgs/image-1.png">

                                <div class="caption">
                                    <h4>Thumbnail label</h4>

                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida
                                        at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <a class="btn btn-primary" href="#">Button</a> <a class="btn btn-danger" href="#">Button</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="thumbnail content-thumbnail">
                                <img alt="" src="imgs/image-1.png">

                                <div class="caption">
                                    <h4>Thumbnail label</h4>

                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida
                                        at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>

                                    <div class="btn-group"><a class="btn btn-info" href="#">Button</a> <a class="btn btn-info" href="#">Button</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>







    </div>


    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>
