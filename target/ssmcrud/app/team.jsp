<%--
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
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/font-awesome.css" type="text/css" media="all">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/owl.carousel.css" type="text/css" media="all" />
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />

    <!-- Style-CSS -->
    <!-- //css files -->
    <!-- web fonts -->
    <link href="http://fonts.googleapis.com/css?family=Molle:400i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
          rel="stylesheet">
    <!-- //web fonts -->

</head>
<body>


<!-- team -->
<div class="team" id="team">
    <div class="container">
        <h3 class="agile-title">Our Team</h3>
        <div class="team-agileinfo agileits-w3layouts">
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right">
                    <img src="${pageContext.request.contextPath}/animal/images/t1.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left">
                    <h4>Nathan Tim</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right aliquam">
                    <img src="${pageContext.request.contextPath}/animal/images/t2.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left non">
                    <h4>Keith Ryan</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
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
                    <h4>Irene Jan</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 team-grid w3-agileits">
                <div class="team-grid-right aliquam">
                    <img src="${pageContext.request.contextPath}/animal/images/t4.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="team-grid-left non">
                    <h4>Angela Leah</h4>
                    <p>Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</p>
                </div>

                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //team -->
<!-- js -->
<script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/animal/js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
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

<!-- smoothscroll -->
<script src=${pageContext.request.contextPath}/animal/js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="${pageContext.request.contextPath}/animal/js/move-top.js"></script>
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
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- Owl-Carousel-JavaScript -->
<script src="${pageContext.request.contextPath}/animal/js/owl.carousel.js"></script>
<script>
    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            items: 3,
            lazyLoad: true,
            autoPlay: true,
            pagination: true,
        });
    });
</script>
<!-- //Owl-Carousel-JavaScript -->
<!-- contact -->
<div class="contact" id="contact">
    <div class="container">
        <h3 class="agile-title">联系我们</h3>
        <div class="col-md-9 col-sm-9 contact-right">
            <form action="#" method="post">
                <input type="text" name="name" placeholder="姓名" required="">
                <input type="email" name="email" placeholder="邮箱" required="">
                <input type="text" name="subject" placeholder="类型" required="">
                <input type="text" name="phone number" placeholder="电话号码" required="">
                <textarea name="message" placeholder="您的信息" required=""></textarea>
                <input type="submit" value="发送">
            </form>
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
<div class="map-w3ls">
    <iframe src=""
            allowfullscreen></iframe>
</div>
<!-- //map -->
<!-- //contact -->
<!-- js -->
<script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/animal/js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->
</body>
</html>