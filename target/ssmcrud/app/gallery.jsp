<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""
    />
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
<!--导航栏-->
<!-- sticky navigation -->
<%--<div class="nav-links">--%>
<%--    <nav class='navbar navbar-default'>--%>
<%--        <div class='container'>--%>
<%--            <div class='collapse navbar-collapse'>--%>
<%--                <ul  class="navigation_ul">--%>
<%--                    <li>--%>
<%--                        <a href="${pageContext.request.contextPath}/user/index">主页</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="${pageContext.request.contextPath}/blog">宠物知识</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="${pageContext.request.contextPath}/service">领养中心</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="${pageContext.request.contextPath}/blog">猫狗日记</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="${pageContext.request.contextPath}/team">团队信息</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="${pageContext.request.contextPath}/gallery">猫狗展示</a>--%>
<%--                    </li>--%>
<%--                    <li><a href="${pageContext.request.contextPath}/person">个人信息</a></li>--%>
<%--                    <li> <span>Hello:${User.username}</span></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </nav>--%>
<%--</div>--%>
<!-- Gallery -->
<div id="gallery" class="gallery">
    <div class="container">
        <h3 class="agile-title">Gallery</h3>
    </div>
    <div class="agileinfo-gallery-row">
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/m1.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/m1.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/g2.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/g2.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/g3.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/g3.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/m4.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/m4.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/m5.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/m5.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/m6.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/m6.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/m3.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/m3.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-4 w3gallery-grids">
            <a href="${pageContext.request.contextPath}/animal/images/m2.jpg" class="imghvr-hinge-right figure">
                <img src="${pageContext.request.contextPath}/animal/images/m2.jpg" alt="" title="Cat Life Image" />
            </a>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //Gallery -->
<!-- js -->
<script src="${pageContext.request.contextPath}/animal/JQuery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- simple-lightbox  展示框中用到的 -->
<script src="${pageContext.request.contextPath}/animal/js/simple-lightbox.min.js"></script>
<script>
    $(function () {
        var gallery = $('.agileinfo-gallery-row a').simpleLightbox({
            navText: ['&lsaquo;', '&rsaquo;']
        });
    });
</script>
<link href='${pageContext.request.contextPath}/animal/css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- Light-box css -->
<!-- //simple-lightbox -->




</body>
</html>
