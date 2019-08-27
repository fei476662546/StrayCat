<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css"
          media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all"/>

</head>
<body>

<div class="services" id="services">
    <div class="container">
        <h3 class="agile-title">领养中心</h3>
        <div class="w3_agile_services_grids">
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid " data-aos="zoom-in">
                <form action="${pageContext.request.contextPath}/adopt/chickPet" method="post">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img">
                            <input type="text" value="大黑" hidden name="petName">
                            <img  src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <fieldset>
                        <input type="submit" value="详情" >
                       <legend>大黑</legend>
                        黑白色，公猫，八个月，性子温顺，喜欢安静
                    </fieldset>
                </form>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <form action="${pageContext.request.contextPath}/adopt/chickPet" method="post">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img">
                            <input type="text" value="二黑" hidden name="petName">
                            <img  src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <fieldset>
                        <input type="submit" value="详情" >
                        <legend>二黑</legend>
                        黑白色，公猫，八个月，性子温顺，喜欢安静
                    </fieldset>
                </form>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <form action="${pageContext.request.contextPath}/adopt/chickPet" method="post">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img">
                            <input type="text" value="大白" hidden name="petName">
                            <img  src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <fieldset>
                        <input type="submit" value="详情" >
                        <legend>大白</legend>
                        黑白色，公猫，八个月，性子温顺，喜欢安静
                    </fieldset>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="w3_agile_services_grids">
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid " data-aos="zoom-in">
                <form action="${pageContext.request.contextPath}/adopt/chickPet" method="post">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img">
                            <input type="text" value="二白" hidden name="petName">
                            <img  src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <fieldset>
                        <input type="submit" value="详情" >
                        <legend>二白</legend>
                        黑白色，公猫，八个月，性子温顺，喜欢安静
                    </fieldset>
                </form>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <form action="${pageContext.request.contextPath}/adopt/chickPet" method="post">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img">
                            <input type="text" value="大橘" hidden name="petName">
                            <img src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <fieldset>
                        <input type="submit" value="详情" >
                        <legend>大橘</legend>
                        黑白色，公猫，八个月，性子温顺，喜欢安静
                    </fieldset>
                </form>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
                <form action="${pageContext.request.contextPath}/adopt/chickPet" method="post">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img">
                            <input type="text" value="二橘" hidden name="petName">
                            <img  src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <fieldset>
                        <input type="submit" value="详情" >
                        <legend>二橘</legend>
                        黑白色，公猫，八个月，性子温顺，喜欢安静
                    </fieldset>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="w3_agile_services_grids">
        <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid " data-aos="zoom-in">
            <div class="ih-item circle effect1 agile_services_grid">
                <div class="spinner"></div>
                <div class="img">
                    <a href="${pageContext.request.contextPath}/app/show.jsp">
                        <img src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                             class="img-responsive"/>
                    </a>
                </div>
            </div>
            <fieldset>
                <legend>大白</legend>
                黑白色，公猫，八个月，性子温顺，喜欢安静
            </fieldset>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
            <div class="ih-item circle effect1 agile_services_grid">
                <div class="spinner"></div>
                <div class="img">
                    <a href="${pageContext.request.contextPath}/app/show.jsp">
                        <img src="${pageContext.request.contextPath}/animal/images/cat%20(3).png" alt=" "
                             class="img-responsive"/>
                    </a>
                </div>
            </div>
            <fieldset>
                <legend>小艾</legend>
                棕黄色，4个月，母猫，粘人爱闹
            </fieldset>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
            <div class="ih-item circle effect1 agile_services_grid">
                <div class="spinner"></div>
                <div class="img">
                    <a href="${pageContext.request.contextPath}/app/show.jsp">
                        <img src="${pageContext.request.contextPath}/animal/images/dog%20(2).png" alt=" "
                             class="img-responsive"/>
                    </a>
                </div>
            </div>
            <fieldset>
                <legend>旺财</legend>
                白色小狗，4个月母狗，聪明粘人，爱玩爱闹
            </fieldset>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="w3_agile_services_grids">
        <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid " data-aos="zoom-in">
            <div class="ih-item circle effect1 agile_services_grid">
                <div class="spinner"></div>
                <div class="img">
                    <a href="${pageContext.request.contextPath}/app/show.jsp">
                        <img src="${pageContext.request.contextPath}/animal/images/cat%20(2).png" alt=" "
                             class="img-responsive"/>
                    </a>
                </div>
            </div>
            <fieldset>
                <legend>大白</legend>
                黑白色，公猫，八个月，性子温顺，喜欢安静
            </fieldset>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
            <div class="ih-item circle effect1 agile_services_grid">
                <div class="spinner"></div>
                <div class="img">
                    <a href="${pageContext.request.contextPath}/app/show.jsp">
                        <img src="${pageContext.request.contextPath}/animal/images/cat%20(3).png" alt=" "
                             class="img-responsive"/>
                    </a>
                </div>
            </div>
            <fieldset>
                <legend>小艾</legend>
                棕黄色，4个月，母猫，粘人爱闹
            </fieldset>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4 w3_agile_services_grid" data-aos="zoom-in">
            <div class="ih-item circle effect1 agile_services_grid">
                <div class="spinner"></div>
                <div class="img">
                    <a href="${pageContext.request.contextPath}/app/show.jsp">
                        <img src="${pageContext.request.contextPath}/animal/images/dog%20(2).png" alt=" "
                             class="img-responsive"/>
                    </a>
                </div>
            </div>
            <fieldset>
                <legend>旺财</legend>
                白色小狗，4个月母狗，聪明粘人，爱玩爱闹
            </fieldset>
        </div>
        <div class="clearfix"></div>
    </div>
    <!--    <div class="w3l-img-side">-->
    <!--        <img src="../images/cat11.png" alt="" />-->
    <!--    </div>-->
    <!--    <div class="w3l-img-side w3l-img-side2">-->
    <!--        <img src="../images/cat1.png" alt="" />-->
    <!--    </div>-->
</div>
<!-- //services -->
<!-- js -->
<script src="${pageContext.request.contextPath}/animal/JQuery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->
<!-- //js -->

<!-- start-smooth-scrolling 上去-->
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

<!-- smooth-scrolling-of-move-up 这是service.html页面反到底层上去的功能 -->
<script>
    $(document).ready(function () {
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->


</body>
</html>
