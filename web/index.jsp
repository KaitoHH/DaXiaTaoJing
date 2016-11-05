<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>

<%-- 四张图片不完全一样大，切换边界有点空白 --%>
<div id="featureCarousel" class="carousel slide" data-ride="carousel" style="margin-top: 48px">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item">
            <img src="imgs\111.jpg">
            <div class="carousel-caption">
                <h3>
                    人文社会科学</h3>
                <p>
                    感受文之美</p>
                <p>
                    哲学类·经济学类·教育学类·历史学类·法学类·文学类·管理类
                </p>
            </div>
        </div>
        <!-- End Item -->
        <div class="item">
            <img src="imgs\222.jpg">
            <div class="carousel-caption">
                <h3>
                    自然科学、应用科学以及数理逻辑的统称</h3>
                <p>
                    体验理之趣 </p>
                <p>
                    数学类·物理学类·化学类·地理科学类·生物科学类·心理学类·统计学类等
                </p>
            </div>
        </div>
        <!-- End Item -->
        <div class="item active">
            <img src="imgs\333.jpg">
            <div class="carousel-caption">
                <h3>
                    工程学</h3>
                <p>
                    实践工之用</p>
                <p>
                    力学类·机械类·材料类·电子信息类·计算机及软件类·建筑类等
                </p>
            </div>
        </div>
        <!-- End Item -->
        <div class="item">
            <img src="imgs\444.png">
            <div class="carousel-caption">
                <h3>
                    其它</h3>
                <p>
                    用心体会生活的美好</p>
            </div>
        </div>
        <!-- End Item -->
    </div>
    <!-- End Carousel Inner -->
    <ul class="nav nav-pills nav-justified">
        <li data-target="#featureCarousel" data-slide-to="0" class=""><a href="#" style="font-size:21px">文科</a></li>
        <li data-target="#featureCarousel" data-slide-to="1" class=""><a href="#" style="font-size:21px">理科</a></li>
        <li data-target="#featureCarousel" data-slide-to="2" class="active"><a href="#" style="font-size:21px">工科</a></li>
        <li data-target="#featureCarousel" data-slide-to="3" class=""><a href="#" style="font-size:21px">其它</a></li>
    </ul>
</div>


<div class="container" >
    <style>
        a{
            font-size: 15px;
        }
        body{
            font-size:18px;
        }
    </style>
    <%--以下代码请删除--%>
    <div class="page-header" >
        <div class="row">
            <%--从此位置开始写代码--%>
            <div class="bs-docs-section">
                <div class="row">
                        <div class="col-lg-12">


                            <%-- move Carousel out of class'page-header' --%>


                            <!-- End Carousel -->


                        </div>
                    </div>
            </div>
            <div class="row" id="banner" style="margin-top:30px;">
                <div class="col-md-9">
                    <div class="page-header">
                        <h1>热门问题</h1>
                    </div>
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        文科
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 0px;">
                                <div class="panel-body">
                                    <div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" style="font-size:15px" >  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">计算机科学概论</a>
                                                • 100个回答 • 56人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#"> 有10道选择型测验题,要求从每题的5种答案中选出一种正确的答案,如果一人随意猜答,他答对不少于6道题的</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">概率论 </a>
                                                • 56个回答 • 20人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        理科
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="height: 0px;">
                                <div class="panel-body">
                                    <div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#">  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">计算机科学概论</a>
                                                • 100个回答 • 56人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#"> 有10道选择型测验题,要求从每题的5种答案中选出一种正确的答案,如果一人随意猜答,他答对不少于6道题的</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">概率论 </a>
                                                • 56个回答 • 20人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        工科
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false" style="height: 0px;">
                                <div class="panel-body">
                                    <div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#">  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">计算机科学概论</a>
                                                • 100个回答 • 56人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#"> 有10道选择型测验题,要求从每题的5种答案中选出一种正确的答案,如果一人随意猜答,他答对不少于6道题的</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">概率论 </a>
                                                • 56个回答 • 20人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                                        其他
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour" aria-expanded="true">
                                <div class="panel-body">
                                    <div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#">  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">计算机科学概论</a>
                                                • 100个回答 • 56人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#"> 有10道选择型测验题,要求从每题的5种答案中选出一种正确的答案,如果一人随意猜答,他答对不少于6道题的</a>
                                            </div>
                                            <div class="panel-body">
                                                来自学科：<a href="#" class="alert-link">概率论 </a>
                                                • 56个回答 • 20人关注 <a href="#" class="alert-link">取消关注</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <!-- $STRIPED TABLE -->
                        <!-- ========================================= -->
                        <div class="page-header">
                            <h1>排行榜</h1>
                        </div>
                        <table class="table table-striped table-responsive">
                            <thead>
                            <tr>
                                <th>排名</th>
                                <th>名字</th>
                                <th>积分</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td color="red">1</td>
                                <td><a href="#">Mark</a></td>
                                <td>102</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="#">Jacob</a></td>
                                <td>87</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td><a href="#">Larry</a></td>
                                <td>36</td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
            <div class="row">
                    <h2 id="type-blockquotes">名人名言</h2>
                <div class="bs-component">
                    <blockquote>
                        <p>读书忌死读，死读钻牛角。 </p>
                        <small><cite title="Source Title"> 叶圣陶</cite></small>
                    </blockquote>
                    <div class="bs-component">
                        <blockquote>
                            <p>吾生也有涯，而知也无涯。 </p>
                            <small><cite title="Source Title">庄子</cite></small>
                        </blockquote>
                    </div>
                </div>
                </div>


            <%--在此位置以上结束代码--%>
            <%@include file="frameJsp/footer.jsp" %>
        </div>

    </div>
</div>
</body>
</html>
