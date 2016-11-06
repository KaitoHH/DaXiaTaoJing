<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <%@include file="frameJsp/pulgin/textarea.jsp" %>
    <title>大夏淘经</title>
    <style type="text/css">
        body, button, input, select, textarea, h1, h2, h3, h4, h5, h6 {
            font-family: Microsoft YaHei, '宋体', Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;
        }
    </style>
    <script src="/js/answer.js"></script>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">

    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6">
                <h1></h1>

                <p class="lead"></p>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-6">

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-7">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <c:forEach var="tag" items="${question.tag}">
                                    <button type="button" class="btn btn-default">${tag}</button>
                                </c:forEach>
                                <h1>${question.tittle}
                                    <br/>
                                    <a href="/profile/${question.userId}">
                                        <small>提问者: ${question.userName}</small>
                                    </a>
                                </h1>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10">
                            ${question.content}
                        </div>
                        <div class="col-lg-2">

                            <c:if test="${question.puserId eq user.id and fn:length(answers)==0}">
                                <button type="submit" class="btn btn-primary" data-toggle="modal"
                                        data-target="#myModal">
                                    回答
                                </button>
                            </c:if>
                            <form action="/postAnswer.do" method="post" id="answerForm">
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                     aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-hidden="true">
                                                    ×
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    你的答案
                                                </h4>
                                            </div>

                                            <div class="modal-body">
                                                <textarea rows=20 class="editor" name="answerArea"></textarea>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    发送
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>回答
                            <c:if test="${fn:length(answers)>0}">
                                <small>(由 <em><a href="/profile/${question.puserId}">${question.puserName}</a></em> 提供)
                                </small>
                            </c:if>
                        </h1>
                    </div>
                    <div class="row">
                        <div class="col-lg-10">
                            <c:if test="${fn:length(answers)==0}">
                                被邀请者还没有回答哦(⊙o⊙)
                            </c:if>
                            <c:if test="${fn:length(answers)>0}">
                                ${answers[0].content}
                            </c:if>
                        </div>
                        <div class="col-lg-2">
                            <button type="submit" class="btn btn-primary hidden" data-toggle="modal"
                                    data-target="#myModal1">
                                评价
                            </button>
                            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel1" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel1">
                                                这个答案如何
                                            </h4>
                                        </div>

                                        <div class="modal-body">
                                            <textarea rows=20 class="editor" name="content"></textarea>
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
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-lg-offset-1">
            <%@include file="frameJsp/profile/profileRightBar.jsp" %>
        </div>

    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>