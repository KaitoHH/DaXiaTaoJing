<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <%@include file="frameJsp/pulgin/textarea.jsp" %>
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
                                <h1>数字逻辑怎么学？<br/><small>提问者: 米老鼠</small></h1>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <div class="col-lg-10">
                    <p>
                        数字逻辑整体的结构是什么？<br/>
                        感觉学的很模糊。<br/>
                    </p>
                    <p> </p>
                    </div>
                        <div class="col-lg-2">
                            <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal">回答</button>
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">
                                                你的答案
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
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>回答 <small>(由 <em>泥老鼠</em> 提供)</small></h1>
                    </div>
                    <div class="row">
                    <div class="col-lg-10">
                    <p>
                        这是一个好问题。<br/>
                        数字逻辑怎么学呢？<br/>
                        认真学。<br/>
                    </p>
                    <p>  </p>
                        </div>


                        <div class="col-lg-2">
                            <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal1">评价</button>
                            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true" style="display: none;">
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
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="zm-profile-side-section-title">
                        关注了 <a href="concern.jsp#topics" class="zg-link-litblue"><strong>14 个话题</strong></a>
                    </div>
                </div>
            </div>


            <%--
                <div class="zm-profile-side-topics" id="zh-profile-following-topic">

                <a class="link" data-hovercard="t$b$19874223" href="/topic/19874223">
                    <img class="Avatar Avatar--l" src="https://pic2.zhimg.com/90f9d7cc0738b74705aabe09fc508d25_l.png" srcset="https://pic2.zhimg.com/90f9d7cc0738b74705aabe09fc508d25_xl.png 2x" alt="河圖（歌手）">
                </a>

                <a class="link" data-hovercard="t$b$19580599" href="/topic/19580599">
                    <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/v2-61dd74b092312825e80f1de6f686a138_l.jpg" srcset="https://pic1.zhimg.com/v2-61dd74b092312825e80f1de6f686a138_xl.jpg 2x" alt="抑郁">
                </a>

                <a class="link" data-hovercard="t$b$19579921" href="/topic/19579921">
                    <img class="Avatar Avatar--l" src="https://pic2.zhimg.com/5b7867f95e8395fe03db954b70394629_l.png" srcset="https://pic2.zhimg.com/5b7867f95e8395fe03db954b70394629_xl.png 2x" alt="女追男">
                </a>

                <a class="link" data-hovercard="t$b$19583225" href="/topic/19583225">
                    <img class="Avatar Avatar--l" src="https://pic2.zhimg.com/f35c989d9_l.jpg" srcset="https://pic2.zhimg.com/f35c989d9_xl.jpg 2x" alt="初恋">
                </a>

                <a class="link" data-hovercard="t$t$19554945" href="/topic/19554945">
                    <img class="Avatar Avatar--l" src="https://pic4.zhimg.com/acca8921f_l.jpg" srcset="https://pic4.zhimg.com/acca8921f_xl.jpg 2x" alt="心理">
                </a>

                <a class="link" data-hovercard="t$b$19568143" href="/topic/19568143">
                    <img class="Avatar Avatar--l" src="https://pic3.zhimg.com/21d3703b08d5a57566ac67e3b728b01e_l.png" srcset="https://pic3.zhimg.com/21d3703b08d5a57566ac67e3b728b01e_xl.png 2x" alt="心理健康">
                </a>

                <a class="link" data-hovercard="t$b$19567962" href="/topic/19567962">
                    <img class="Avatar Avatar--l" src="https://pic3.zhimg.com/43efd061747369b1f03cc2c34adca45e_l.jpg" srcset="https://pic3.zhimg.com/43efd061747369b1f03cc2c34adca45e_xl.jpg 2x" alt="博弈论">
                </a>--%>

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="zm-side-section-inner">
                        <span class="zg-gray-normal">个人主页被 <strong>102</strong> 人浏览</span>
                    </div>
                </div>
            </div>

            <div class="row">


                    <div class="bs-component">
                        <blockquote class="pull-left">
                            <p>趁年轻少壮去探求知识吧，它将弥补由于年老而带来的亏损。智慧乃是老年的精神养料，所以年轻时应该努力，这样，年轻时才不致空虚</p>
                            <small> <cite title="Source Title">达·芬奇</cite></small>
                        </blockquote>
                    </div>

            </div>

        </div>

    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>