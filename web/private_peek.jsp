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
                <h1>Problem title<br/><small>Author: Mr. blablabla</small></h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <p>
                While my first part enables me to use factorial and power, so i create some function prototypes and use recursive function to get the error function as follow: <br/>

                double erf(double x, int N)<br/>
                {<br/>
                if (N < 0) return 0;<br/>

                return 1.128379167*(power(-1,N)*power(x,2*N+1))/((2*N+1)*fact(N))+erf(x, N-1);<br/>
                }<br/>
                The problem is that the second part needs me to use Horner's Rule while a1,a2,a3....a(n) include factorial function. So what should I do to change the factorial function into something else, so I could using recursive function to calculate erf without using factorial.<br/>
            </p>
            <p> <img alt="no pic" src="imgs/image-1.png"> </p>
            <div class="page-header">
                <h1>Answer <small>(offered by <em>Mr. XXX</em>)</small></h1>
                <p>
                    While my first part enables me to use factorial and power, so i create some function prototypes and use recursive function to get the error function as follow: <br/>

                    double erf(double x, int N)<br/>
                    {<br/>
                    if (N < 0) return 0;<br/>

                    return 1.128379167*(power(-1,N)*power(x,2*N+1))/((2*N+1)*fact(N))+erf(x, N-1);<br/>
                    }<br/>
                    The problem is that the second part needs me to use Horner's Rule while a1,a2,a3....a(n) include factorial function. So what should I do to change the factorial function into something else, so I could using recursive function to calculate erf without using factorial.<br/>
                </p>
            </div>
        </div>
    </div>
    <%@include file="frameJsp/footer.jsp" %>

</div>


</body>
</html>