<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <%@include file="frameJsp/header.jsp" %>
    <title>大夏淘经</title>
</head>
<body>

<%@include file="frameJsp/navbar.jsp" %>


<div class="container">
    <div class="page-header">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6">
                <h1>THEY ARE ASKING YOU FOR HELP!</h1>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-sm-6">
        <div class="thumbnail content-thumbnail">
            <img alt="no pic" src="imgs/me.jpg">

            <div class="caption">
                <h4><strong>XXX</strong> looks for help!</h4>

                <p>This is the description of his/her problem</p>
                <p><strong>reward: 1 rmb</strong><p>
                <a class="btn btn-info" href="private_view.jsp">View</a> <a class="btn btn-primary" href="#">Answer</a>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-sm-6">
        <div class="thumbnail content-thumbnail">
            <img alt="no pic" src="imgs/me.jpg">

            <div class="caption">
                <h4><strong>XXX</strong> looks for help!</h4>

                <p>This is the description of his/her problem</p>
                <p><strong>reward: 1 rmb</strong><p>
                <a class="btn btn-info" href="private_view.jsp">View</a> <a class="btn btn-primary" href="#">Answer</a>
            </div>
        </div>
    </div>
    <div class="page-header">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6">
                <h1>SEE SOME OTHER PROBLEMS</h1>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-sm-6">
        <div class="thumbnail content-thumbnail">
            <img alt="no pic" src="imgs/image-1.png">

            <div class="caption">
                <h4><strong>XXX</strong> looks for help!</h4>

                <p>This is the description of his/her problem</p>
                <p>pay <strong>1 rmb</strong> to read the answer<br/>(The answer is offered by <strong>Mr. XXX)</strong></p>
                <a class="btn btn-danger" href="private_peek.jsp">Pay and view</a>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-sm-6">
        <div class="thumbnail content-thumbnail">
            <img alt="no pic" src="imgs/image-1.png">

            <div class="caption">
                <h4><strong>XXX</strong> looks for help!</h4>

                <p>This is the description of his/her problem</p>
                <p>pay <strong>1 rmb</strong> to read the answer<br/>(The answer is offered by <strong>Mr. XXX)</strong></p>
                <a class="btn btn-danger" href="private_peek.jsp">Pay and view</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="page-header">
                <h1>WANT TO POST YOUR PROBLEM?</h1>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <p>
                    You can post your own problem here and pay for the answer offerer.
                    <a href="private_postquestion.jsp" class="btn-link"> >>click here to post your own problem </a>
                </p>
            </div>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>