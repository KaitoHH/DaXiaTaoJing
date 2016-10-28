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
                <div class="col-lg-8 col-md-7 col-sm-6">
                    <h1>Sample</h1>

                    <p class="lead">Sample Text</p>
                </div>
                <div class="col-lg-4 col-md-5 col-sm-6">

                </div>
            </div>
        </div>

    <%--从此位置开始写代码--%>




        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-2">
                    <input type="button" style="background: #ffffff" name="Submit" value="主页" onclick ="location.href='elements.html'"/>
                </div>

                <div class="col-lg-2">
                    <a href="lately.jsp#questions">提问 <span class="badge">1</span></a>
                </div>
                <div class="col-lg-2">
                    <a href="lately.jsp#answer">回答 <span class="badge">2</span></a>
                </div>
                <div class="col-lg-2">
                    <a href="lately.jsp#agree">赞同 <span class="badge">3</span></a>
                </div>
                <div class="col-lg-2">
                    <a href="lately.jsp#collection">收藏 <span class="badge">1</span></a>
                </div>

            </div>

            <div class="col-lg-4 col-lg-offset-1">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <a class="item" href="concern.jsp#concern">
                                <span class="zg-gray-normal">关注了</span><br>
                                <strong>3</strong><label> 人</label>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <a class="item" href="concern.jsp#concerned">
                                <span class="zg-gray-normal">关注者</span><br>
                                <strong>3</strong><label> 人</label>
                            </a>
                        </div>
                    </div>
                </div>
            </div>





            <div class="col-lg-6">
                <a name="concern">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="page-header">
                                    <a href="lately.jsp">亲爱的阿基米德</a>
                                    » 关注了<a href="#">3</a>人
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="col-lg-4">
                            <div class="form-groupEditor form-groupEditor-none-avatar">
                                <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg" inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <a href="#">阿基米德</a><br>
                            伟大的哲学家，科学家<br>
                            38关注者/3提问/6回答/36赞同
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="col-lg-4">
                                <div class="form-groupEditor form-groupEditor-none-avatar">
                                    <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg" inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <a href="#">弗洛伊德</a><br>
                                精神病医师，心理学家<br>
                                51关注者/50提问/66回答/76赞同
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-body">
                        <div class="panel-body">
                            <div class="col-lg-4">
                                <div class="form-groupEditor form-groupEditor-none-avatar">
                                    <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg" inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <a href="#">亚里士多德</a><br>
                                伟大的哲学家，科学家和教育家<br>
                                5关注者/6提问/7回答/8赞同
                            </div>
                        </div>
                    </div>

                </div>
                </a>

                <a name="concerned">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="page-header">
                                    <a href="lately.jsp">亲爱的阿基米德</a>
                                    » 被<a href="#">3</a>人关注
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="col-lg-4">
                            <div class="form-groupEditor form-groupEditor-none-avatar">
                                <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg" inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <a href="#">阿基米德</a><br>
                            伟大的哲学家，科学家<br>
                            38关注者/3提问/6回答/36赞同
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="col-lg-4">
                                <div class="form-groupEditor form-groupEditor-none-avatar">
                                    <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg" inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <a href="#">弗洛伊德</a><br>
                                精神病医师，心理学家<br>
                                51关注者/50提问/66回答/76赞同
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-body">
                        <div class="panel-body">
                            <div class="col-lg-4">
                                <div class="form-groupEditor form-groupEditor-none-avatar">
                                    <img class="Avatar Avatar--l" src="https://pic1.zhimg.com/da8e974dc_l.jpg" inputsrcset="https://pic1.zhimg.com/da8e974dc_xl.jpg 2x" alt="">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <a href="#">亚里士多德</a><br>
                                伟大的哲学家，科学家和教育家<br>
                                5关注者/6提问/7回答/8赞同
                            </div>
                        </div>
                    </div>

                </div>
                </a>

                <a name="topics">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="page-header">
                                        <a href="lately.jsp">亲爱的阿基米德</a>
                                        » 关注了<a href="#">14</a>个话题
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-lg-2">
                                <div class="bs-component">
                                    <div class="well well-sm">
                                        890次<br>浏览
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-10">
                                <a href="#"> 使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a><br>
                                来自学科：<a href="#" class="alert-link">计算机科学概论 </a>
                                • 100个回答 • 56人关注 <a href="#" class="alert-link">取消关注</a>
                                <div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="col-lg-2">
                                    <div class="bs-component">
                                        <div class="well well-sm">
                                            387次<br>浏览
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                    <a href="#"> 有10道选择型测验题,要求从每题的5种答案中选出一种正确的答案,如果一人随意猜答,他答对不少于6道题的</a><br>
                                    来自学科：<a href="#" class="alert-link">概率论 </a>
                                    • 56个回答 • 20人关注 <a href="#" class="alert-link">取消关注</a>
                                    <div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-lg-2">
                                <div class="bs-component">
                                    <div class="well well-sm">
                                        123次<br>浏览
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-10">
                                <a href="#"> 二数余一,五数余二,七数余三,九数余四,问该数几何?</a><br>
                                来自学科：<a href="#" class="alert-link">离散数学 </a>
                                • 4个回答 • 8人关注 <a href="#" class="alert-link">取消关注</a>
                                <div>
                                </div>
                            </div>
                        </div>

                    </div>
                </a>

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

            </div>
        </div>




    <%--在此位置以上结束代码--%>
    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>