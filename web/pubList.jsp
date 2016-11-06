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

        <h1 id="sbuttons"><a class="btn-social btn-twitter" href="#"><i class="fa fa-twitter"></i></a> 千金悬赏&nbsp;&nbsp;&nbsp;&nbsp;
        </h1>


        <div>
            <div class="bs-component">
                <ul class="nav nav-tabs">
                    <li class="active"><a aria-expanded="true" href="#arts" data-toggle="tab">文科</a></li>
                    <li><a aria-expanded="true" href="#sciences" data-toggle="tab">理科</a></li>
                    <li><a aria-expanded="true" href="#engineer" data-toggle="tab">工科</a></li>
                    <li><a aria-expanded="true" href="#others" data-toggle="tab">思政</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="arts">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel-body">
                                <c:forEach var="question" items="${qlist1}">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a href="/pq/${question.id}" style="font-size:15px">
                                                    ${question.tittle}
                                            </a>
                                        </div>
                                        <div class="panel-body">
                                            <c:forEach var="tag" items="${question.tag}">
                                                <span class="label label-info">${tag}</span>
                                            </c:forEach>
                                            • ${question.answerCnt}个回答 • 0人关注
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <a href="#" class="btn btn-success">更多</a>
                    </div>
                    <div class="tab-pane fade" id="sciences">
                        <div class="panel-group" id="accordiontwo" role="tablist" aria-multiselectable="true">
                            <div class="panel-body">
                                <c:forEach var="question" items="${qlist2}">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a href="/pq/${question.id}" style="font-size:15px">
                                                    ${question.tittle}
                                            </a>
                                        </div>
                                        <div class="panel-body">
                                            <c:forEach var="tag" items="${question.tag}">
                                                <span class="label label-info">${tag}</span>
                                            </c:forEach>
                                            • ${question.answerCnt}个回答 • 0人关注
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                        <a href="#" class="btn btn-success">更多</a>
                    </div>
                    <div class="tab-pane fade" id="engineer">
                        <div class="panel-group" id="accordionthree" role="tablist" aria-multiselectable="true">
                            <div class="panel-body">
                                <c:forEach var="question" items="${qlist3}">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a href="/pq/${question.id}" style="font-size:15px">
                                                    ${question.tittle}
                                            </a>
                                        </div>
                                        <div class="panel-body">
                                            <c:forEach var="tag" items="${question.tag}">
                                                <span class="label label-info">${tag}</span>
                                            </c:forEach>
                                            • ${question.answerCnt}个回答 • 0人关注
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                        <a href="#" class="btn btn-success">更多</a>
                    </div>
                    <div class="tab-pane fade" id="others">
                        <div class="panel-group" id="accordionfour" role="tablist" aria-multiselectable="true">
                            <div class="panel-body">
                                <c:forEach var="question" items="${qlist4}">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a href="/pq/${question.id}" style="font-size:15px">
                                                    ${question.tittle}
                                            </a>
                                        </div>
                                        <div class="panel-body">
                                            <c:forEach var="tag" items="${question.tag}">
                                                <span class="label label-info">${tag}</span>
                                            </c:forEach>
                                            • ${question.answerCnt}个回答 • 0人关注
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                        <a href="#" class="btn btn-success">更多</a>
                    </div>
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

<%@include file="frameJsp/footer.jsp" %>


</body>
</html>
