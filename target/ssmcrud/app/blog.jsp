<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="home.jsp"></jsp:include>
    <script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />
</head>
<body>


<!-- blog -->
<div class="blog" id="blog">
    <div class="container">
        <h3 class="agile-title">我们的日记</h3>
        <div class="col-md-5 col-xs-6 blog-grids">
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Jan</p>
                    <span>18</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">大黑短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">悠闲生活</a>
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>22</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二黑短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">猫狗大战</a>
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>15</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二橘短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">甜梦时光</a>
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-5 col-xs-6 blog-grids">
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Jan</p>
                    <span>26</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二白短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">家里酣睡</a>
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>06</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二狗日记</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">睡觉</a>
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>12</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">田地笔记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">Cat Life</a>
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="blog-grids mid-blog-agile">
        <img src="${pageContext.request.contextPath}/animal/images/cat2.png" class="img-responsive" alt="">
    </div>
</div>
<!-- Modal5 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-info">
                    <h4>猫狗生活</h4>
                    <img src="${pageContext.request.contextPath}/animal/images/g2.jpg" alt=" " class="img-responsive" />
                    <h5>崭新的一天，从睡觉开始</h5>
                    <p class="para-agileits-w3layouts">明天好像更棒哦！</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Modal5 -->
<!-- //blog -->
<!-- js -->

<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
</body>
</html>
