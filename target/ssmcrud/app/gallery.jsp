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
    <script src="${pageContext.request.contextPath}/animal/JQuery/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/animal/js/simple-lightbox.min.js"></script>
    <link href='${pageContext.request.contextPath}/animal/css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>js+css3图片切换立体旋转代码 - 站长素材</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/lunbo/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/lunbo/css/demo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/lunbo/css/style.css">
</head>
<script>
    addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }

    $(function () {
        var gallery = $('.agileinfo-gallery-row a').simpleLightbox({
            navText: ['&lsaquo;', '&rsaquo;']
        });
    });

</script>
<body>
<div class="htmleaf-container">
    <h2>画廊</h2>
    <div class="carousel" data-gap="20" data-bfc>
        <figure>
            <img src="${pageContext.request.contextPath}/animal/images/m2.jpg" style="width: 500px; height: 300px" alt=""><!--alt为若图片失效提示当前位置有张图片的-->
            <img src="${pageContext.request.contextPath}/animal/images/m1.jpg" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/m3.jpg" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/m4.jpg" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/m5.jpg" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/m6.jpg" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/dog%20(6).png" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/dog%20(12).png" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/dog%20(8).png" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/dog%20(9).png" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/dog%20(10).png" style="width: 500px; height: 300px" alt="">
            <img src="${pageContext.request.contextPath}/animal/images/dog%20(11).png" style="width: 500px; height: 300px" alt="">
        </figure>
        <nav>
            <button class="nav prev">上一张</button>
            <button class="nav next">下一张</button>
        </nav>
    </div>

</div>

<script type="text/javascript">
    'use strict';

    window.addEventListener('load', function () {
        var carousels = document.querySelectorAll('.carousel');

        for (var i = 0; i < carousels.length; i++) {
            carousel(carousels[i]);
        }
    });

    function carousel(root) {
        var figure = root.querySelector('figure'),
            nav = root.querySelector('nav'),
            images = figure.children,
            n = images.length,
            gap = root.dataset.gap || 0,
            bfc = 'bfc' in root.dataset,
            theta = 2 * Math.PI / n,
            currImage = 0;

        setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        window.addEventListener('resize', function () {
            setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        });

        setupNavigation();

        function setupCarousel(n, s) {
            var apothem = s / (2 * Math.tan(Math.PI / n));

            figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';

            for (var i = 0; i < n; i++) {
                images[i].style.padding = gap + 'px';
            }
            for (i = 1; i < n; i++) {
                images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
                images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
            }
            if (bfc) for (i = 0; i < n; i++) {
                images[i].style.backfaceVisibility = 'hidden';
            }
            rotateCarousel(currImage);
        }

        function setupNavigation() {
            nav.addEventListener('click', onClick, true);

            function onClick(e) {
                e.stopPropagation();

                var t = e.target;
                if (t.tagName.toUpperCase() != 'BUTTON') return;

                if (t.classList.contains('next')) {
                    currImage++;
                } else {
                    currImage--;
                }

                rotateCarousel(currImage);
            }
        }

        function rotateCarousel(imageIndex) {
            figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
        }
    }
</script>
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
    </div>
</div>
</body>
</html>
