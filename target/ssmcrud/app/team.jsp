<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 10:00
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
    <meta name="keywords" content=""/>
    <script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/animal/js/bootstrap.js"></script>

    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />
    <jsp:include page="ui.jsp"></jsp:include>
<%--    <script>--%>
<%--        addEventListener("load", function () {--%>
<%--            setTimeout(hideURLbar, 0);--%>
<%--        }, false);--%>

<%--        function hideURLbar() {--%>
<%--            window.scrollTo(0, 1);--%>
<%--        }--%>
<%--    </script>--%>
    <!-- //web fonts -->

</head>
<body>


<!-- Team -->
<div class="team" id="team" style="padding-left: 200px">
    <div class="container">
        <h3 class="agile-title">我们的团队</h3>
        <div class="team-agileinfo agileits-w3layouts">
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right">
                    <img src="${pageContext.request.contextPath}/animal/images/t1.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left">
                    <h4>小明</h4>
                    <p>励志于成为王牌驯养师的中国好青年</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right aliquam">
                    <img src="${pageContext.request.contextPath}/animal/images/t2.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left non">
                    <h4>Keith Ryan</h4>
                    <p>热爱动物，热爱抚养的国际志愿者</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="team-agileinfo">
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right">
                    <img src="${pageContext.request.contextPath}/animal/images/t3.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left">
                    <h4>阿美</h4>
                    <p>业余时间来帮助我们的爱心大学生志愿者</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right aliquam">
                    <img src="${pageContext.request.contextPath}/animal/images/t4.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left non">
                    <h4>夏天</h4>
                    <p>热爱生活，富有爱心的小仙女</p>
                </div>

                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //Team -->
<!-- //js -->

<!-- Banner Slider -->
<script src="${pageContext.request.contextPath}/animal/js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager: true,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });
    });
</script>
<!-- //Banner Slider -->

<!-- Sticky Navigation Script -->
<script>
    $(window).scroll(function () {
        if ($(window).scrollTop() >= 795) {
            $('nav').addClass('fixed-header');
        } else {
            $('nav').removeClass('fixed-header');
        }
    });

    /* scrollTop() >= 795
       Should be equal the the height of the header
     */
</script>
<!-- //Sticky Navigation Script -->

<!-- simple-lightbox -->
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
q'o
<!-- smoothscroll -->
<script src=${pageContext.request.contextPath}/animal/js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<%--<script src="${pageContext.request.contextPath}/animal/js/move-top.js"></script>--%>
<script src="${pageContext.request.contextPath}/animal/js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--       --%>
<%--        // var defaults = {--%>
<%--        //     containerID: 'toTop', // fading element id--%>
<%--        //     containerHoverID: 'toTopHover', // fading element hover id--%>
<%--        //     scrollSpeed: 1200,--%>
<%--        //     easingType: 'linear'--%>
<%--        // };--%>
<%--        //--%>
<%--        // $().UItoTop({--%>
<%--        //     easingType: 'easeOutQuart'--%>
<%--        // });--%>

<%--    });--%>
<%--</script>--%>
<!-- //smooth-scrolling-of-move-up -->

<!-- Owl-Carousel-JavaScript -->
<script src="${pageContext.request.contextPath}/animal/js/owl.carousel.js"></script>
<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--        $("#owl-demo").owlCarousel({--%>
<%--            items: 3,--%>
<%--            lazyLoad: true,--%>
<%--            autoPlay: true,--%>
<%--            pagination: true,--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<!-- //Owl-Carousel-JavaScript -->
<!-- contact -->
<div class="contact" id="contact" style="padding-left: 200px">
    <div class="container">
        <h3 class="agile-title">加入我们</h3>
        <div class="col-md-9 col-sm-9 contact-right">
            <form action="${pageContext.request.contextPath}/team/teamApply" method="post">
                <%
                    //我要获取当前的日期
                    Date date = new Date();
                    //设置要获取到什么样的时间
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    //获取String类型的时间
                    String createdate = sdf.format(date);
                    request.getSession().setAttribute("NowTime2", createdate);
                %>
                <input type="text" name="team_name" placeholder="姓名" required="">
                <input type="email" name="team_email" placeholder="邮箱" required="">
                <input type="text" name="team_reason" placeholder="理由" required="">
                <input type="text" name="team_tel" placeholder="电话号码" required="">
                <input type="text" name="time" hidden value="${NowTime2}" required="">
                <input type="text" name="state" hidden value="0" required="">
                <textarea name="team_message" placeholder="您的自荐" required=""></textarea>
                <input type="submit" value="发送">
            </form>
            <font color="red">${teamMsg}</font>
        </div>
        <div class="col-md-3 col-sm-3 contact-left">
            <div class="address">
                <h4>
                    <i class="fa fa-map-marker" aria-hidden="true"></i>地址</h4>
                <p>方兴科技园D1区102</p>
                <p>Metropolitan, Italy.</p>
            </div>
            <div class="phone">
                <h4>
                    <i class="fa fa-phone" aria-hidden="true"></i>电话</h4>
                <p>+1(401) 1234 567.</p>
                <p>+1(804) 4261 150.</p>
            </div>
            <div class="email">
                <h4>
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>邮箱</h4>
                <p>
                    <a href="mailto:info@example.com">Example1@gmail.com</a>
                </p>
                <p>
                    <a href="mailto:info@example.com">Example2@gmail.com</a>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- map -->
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
</body>
</html>
