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
                <h1>错误!</h1>
                <p class="lead">${errorMsg}</p>
                <p><a href="${referUri}" class="btn btn-primary btn-lg">返回上页</a></p>
            </div>
        </div>
    </div>

    <%--从此位置开始写代码--%>


    <%--在此位置以上结束代码--%>
    <%@include file="frameJsp/footer.jsp" %>
</div>

</body>
</html>