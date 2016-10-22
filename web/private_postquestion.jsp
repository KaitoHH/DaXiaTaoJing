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
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h1>What problem have you met?</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-10 col-md-10 col-sm-10">
            <form role="form" class="form-horizontal">
                <div class="form-group">
                    <label class="col-lg-1 col-md-1 control-label">Title</label>
                    <div class="col-lg-9 col-md-9">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-1 col-md-1 control-label">Assigned to</label>
                    <div class="col-lg-9 col-md-9">
                        <input type="text" placeholder="Add the user's id you want to invite here" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-1 col-md-1 control-label">Detailed description</label>
                    <div class="col-lg-9 col-md-9">
                        <textarea rows=20 class="form-control"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-1 col-md-1 control-label"><span class="text-danger">Reward</span></label>
                    <div class="col-lg-3 col-md-3">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-1 col-md-1"></label>
                    <div class="col-lg-3 col-md-3">
                        <input type="submit" class="btn btn-success form-control" value="POST YOUR PROBLEM">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>
</div>


</body>
</html>