<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <%@include file="frameJsp/pulgin/textarea.jsp" %>
    <title>大夏淘经</title>
    <script src="/js/answer.js"></script>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">


    <div class="page-header" id="banner">


        <div class="panel panel-default">
            <div class="panel-body">

                <div>
                    <c:forEach var="tag" items="${question.tag}">
                        <button type="button" class="btn btn-default">${tag}</button>
                    </c:forEach>
                </div>


                <h1>${question.tittle}</h1>

                <div>${question.content}</div>
                <br/>

                <button class="btn btn-success btn-lg">悬赏积分：${question.pay}</button>

                <a href="#answer" class="btn btn-primary btn-lg" data-toggle="popover" title="Popover title"
                   data-content="回答问题">回答问题</a>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-body">

                <h2>最佳答案</h2><img src="/imgs/me.jpg" class="img-circle" alt="image" style="width:50px;height:50px;">
                <a class="author-link" href="">米老鼠</a><br/>
                <div>关于问题具体的回答：数字逻辑怎么学呢,认真学。</div>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-body">

                <h2>其他答案</h2>
                <a class="author-link" href=""> 饿米</a><br/>
                <div>好难呀</div>
                <br/>

                <a class="author-link" href=""> 分米</a><br/>
                <div>数字逻辑怎么学呢。。。。</div>
                <br/>

                <a class="author-link" href=""> 里米</a><br/>
                <div>微笑</div>
                <br/>
            </div>
        </div>

        <div>
            <form class="form-horizontal" action="/postAnswer.do" method="post" id="answerForm">
                <fieldset>
                    <legend id="answer">回答问题</legend>
                    <div class="form-group">
                        <label for="answerArea" class="col-lg-2 control-label">问题答案</label>

                        <div class="col-lg-10">
                            <textarea class="editor" rows="3" id="answerArea" name="answerArea"></textarea>
                            <span class="help-block">分享你的知识与经验</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">匿名</label>

                        <div class="col-lg-10">
                            <div class="radio">
                                <label>
                                    <input name="anonymous" id="optionsRadios1" value="0"
                                           checked="checked" type="radio">
                                    否
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="anonymous" id="optionsRadios2" value="1" type="radio">
                                    是
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="reset" class="btn btn-default">取消</button>
                            <button type="submit" class="btn btn-primary">提交</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>

    </div>


    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>
