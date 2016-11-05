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



        <div >
            <div class="bs-component">
                <ul class="nav nav-tabs">
                    <li class="active"><a aria-expanded="true" href="#arts" data-toggle="tab">文科</a></li>
                    <li class="action"><a aria-expanded="true" href="#sciences" data-toggle="tab">理科</a></li>
                    <li class="activity"><a aria-expanded="true" href="#engineer" data-toggle="tab">工科</a></li>
                    <li class="actively"><a aria-expanded="true" href="#others" data-toggle="tab">其他</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="arts">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" class="">
                                            热门问题
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading" aria-expanded="true" style="">
                                    <div class="panel-body">
                                        <div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <a href="#" style="font-size:15px">  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
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
                        <a href="#" class="btn btn-success">更多</a>
                        </div>



                    <div class="tab-pane fade action in" id="sciences">
                        <div class="panel-group" id="accordiontwo" role="tablist" aria-multiselectable="true">

                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingFour">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour" class="">
                                            热门问题
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour" aria-expanded="true" style="">
                                    <div class="panel-body">
                                        <div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <a href="#" style="font-size:15px">  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
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
                        <a href="#" class="btn btn-success">更多</a>
                    </div>
                    <div class="tab-pane fade activity in" id="engineer">
                        <div class="panel-group" id="accordionthree" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingsix">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordionthree" href="#collapsesix" aria-expanded="true" aria-controls="collapsesix" class="">
                                            热门问题
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapsesix" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingsix" aria-expanded="true" style="">
                                    <div class="panel-body">
                                        <div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <a href="#" style="font-size:15px">  使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？</a>
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
                        <a href="#" class="btn btn-success">更多</a>
                    </div>
                    <div class="tab-pane fade actively in" id="others">
                        <div class="panel-group" id="accordionfour" role="tablist" aria-multiselectable="true">

                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingeight">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordionfour" href="#collapseeight" aria-expanded="true" aria-controls="collapseeight" class="">
                                            热门问题
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseight" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingeight" aria-expanded="true" style="">
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
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="zm-profile-side-section-title">
                        关注了 <a href="concern.jsp#topics" class="zg-link-litblue"><strong>14 个话题</strong></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="zm-side-section-inner">
                        <span class="zg-gray-normal">个人主页被 <strong>102</strong> 人浏览</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <div class="bs-component">
                <blockquote>
                    <p>趁年轻少壮去探求知识吧，它将弥补由于年老而带来的亏损。智慧乃是老年的精神养料，所以年轻时应该努力，这样，年轻时才不致空虚</p>
                    <small><cite title="Source Title">达·芬奇</cite></small>
                </blockquote>
            </div>

        </div>
    </div>

</div>

<%@include file="frameJsp/footer.jsp" %>



</body>
</html>
