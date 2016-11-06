<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
    <style type="text/css">
        body, button, input, select, textarea, h1, h2, h3, h4, h5, h6 {
            font-family: Microsoft YaHei, '宋体', Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;
        }
    </style>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">
    <%--以下代码请删除--%>
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-xs-12">
                <h1></h1>

                <p class="lead"></p>
            </div>

        </div>
    </div>

    <div class="col-xs-12 col-sm-8">

        <div class="page-header">
            <h1 id="sbuttons"><a class="btn-social btn-twitter" href="#"><i class="fa fa-twitter"></i></a> 私有悬赏
            </h1>
            <p>（这些问题是由其他用户提出的，您可以向提问者付费以查看回答）</p>
        </div>


        <div>
            <div class="bs-component">
                <ul class="list-group">
                    <c:forEach var="question" items="${qlist}">
                        <li href="/pq/${question.id}" class="list-group-item">
                            <h3 class="list-group-item-heading">${question.tittle}<br/>
                                <a href="/profile/${question.userId}">
                                    <small>提问者: ${question.userName}</small>
                                </a>
                            </h3>

                            <%--<p class="list-group-item-text">啊 高等数学真是一个神奇的学科 摊手摊手摊手 //这里是问题的摘要</p>--%>

                            <br/>
                            <p>
                                <i> 提问者邀请了 <a href="/profile/${question.puserId}">${question.puserName}</a> 回答这个问题。 </i>
                                <a href="/rq/${question.id}" class="btn btn_link"> >>偷看（花费积分${question.pay} 当前免费） </a>
                            </p>
                        </li>
                    </c:forEach>
                </ul>
                <div style="margin-left: 20px;margin-top: 40px">
                    <ul class="pagination">
                        <li><a href="#">&laquo;</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>


            </div>
        </div>


    </div>


    <div class="col-xs-12 col-sm-3 col-sm-offset-1">
        <div>
            <h1 id="sbuttons2"><a class="" href="#"><i class=""></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
            </h1>
        </div>
        <%@include file="frameJsp/profile/profileRightBar.jsp" %>
    </div>

</div>


</body>
</html>