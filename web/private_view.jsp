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
                                <h1>数字逻辑怎么学？<br/><small>提问者: 米老鼠</small></h1>
                            </div>
                        </div>
                    </div>
                    <p>
                        数字逻辑整体的结构是什么？<br/>
                        感觉学的很模糊。<br/>
                    </p>
                    <p> <img alt="no pic" src="imgs/image-1.png"> </p>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3>悬赏</h3>
                    <p>提问者将为这个回答支付您 <span class="text-danger">2 元</span>。</p>
                </div>
            </div>
            <div class="page-header">
                <h1>贡献您的回答吧！</h1>
            </div>
            <div role="form" class="form-horizonal">
                <textarea rows="12" class="form-control"></textarea>
                <p>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <input type="submit" class="form-control btn btn-success" value="上传回答">
                </div>
                </p>
            </div>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>