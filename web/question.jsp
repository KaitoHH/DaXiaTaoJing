<%--
  Created by IntelliJ IDEA.
  User: jmqxnxg
  Date: 2016/10/22
  Time: 16:26
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





                <h1 id="sbuttons"><a class="btn-social btn-twitter" href="#"><i class="fa fa-twitter"></i></a> 说出你的疑惑</h1>




            </div>
        </div>




    <div class="page-header" id="banner">
        <div>
            <form class="form-horizontal">
                <fieldset>

                    <legend>千金悬赏</legend>


                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">提问</label>

                        <div class="col-lg-10">
                            <textarea class="form-control" rows="3" id="textArea"></textarea>
                            <span class="help-block">有质量有意义的提问更有助于大家的进步</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="inputDefault">话题</label>
                        <div class="col-lg-10">
                        <input class="form-control" id="inputDefault" type="text">
                    </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="inputSmall">悬赏金额</label>
                        <div class="col-lg-10">
                            <input class="form-control" id="inputSmall" type="text">
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



        </div>


    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>

