<%--
  Created by IntelliJ IDEA.
  User: jmqxnxg
  Date: 2016/10/24
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <%@include file="frameJsp/pulgin/textarea.jsp" %>
    <title>大夏淘经</title>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">


    <div class="page-header" id="banner">


        <div class="panel panel-default">
            <div class="panel-body">

                <div>

                    <button type="button" class="btn btn-default">计算机</button>
                    <button type="button" class="btn btn-default">大学</button>
                    <button type="button" class="btn btn-default">数字逻辑</button>

                </div>


                <h1>${question.tittle}</h1>

                <div>${question.content}</div>
                <br/>

                <button class="btn btn-success btn-lg">悬赏金额：1元</button>

                <a href="#answer" class="btn btn-primary btn-lg" data-toggle="popover" title="Popover title"
                   data-content="回答问题">回答问题</a>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-body">

                <h2>最佳答案</h2>
                <a class="author-picture" href=""><img src="imgs/1.jpg" class="img-circle" alt="image"
                                                       style="width:50px;height:50px;"></a>

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
            <form class="form-horizontal">
                <fieldset>
                    <legend id="answer">回答问题</legend>


                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">问题答案</label>

                        <div class="col-lg-10">
                            <textarea class="editor" rows="3" id="textArea"></textarea>
                            <span class="help-block">分享你的知识与经验</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">匿名</label>

                        <div class="col-lg-10">
                            <div class="radio">
                                <label>
                                    <input name="optionsRadios" id="optionsRadios1" value="option1"
                                           checked="checked" type="radio">
                                    是
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="optionsRadios" id="optionsRadios2" value="option2" type="radio">
                                    否
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
