+
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/21
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css"
          media="all">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/font-awesome.css" type="text/css"
          media="all">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/font-awesome.css" type="text/css"
          media="all">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/owl.carousel.css" type="text/css"
          media="all"/>
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- //css files -->
    <!-- web fonts -->
    <link href="http://fonts.googleapis.com/css?family=Molle:400i&amp;subset=latin-ext" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
          rel="stylesheet">
    <!-- //web fonts -->
</head>
<jsp:include page="home.jsp"></jsp:include>
<body>

</div>
<!-- //sticky navigation 首页轮播图 -->
<div class="w3l-main" id="home1">
    <div class="container">
        <!-- header -->
        <div class="header">
            <div class="logo">
                <h1>
                    <a href="${pageContext.request.contextPath}/user/index">
                        <img class="logo-img center-block"
                             src="${pageContext.request.contextPath}/animal/images/logo.png" alt=""/> 猫狗生活
                    </a>
                </h1>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //header -->
    </div>
    <!-- Slider -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>
                    <div class="slider-img-w3layouts one">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>我们随时
                                        <span>欢迎</span> 你们来
                                        <span>咨询</span>！
                                    </h3>
                                    <p> 全面的猫狗护理指南，让您的宠物感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts two">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>你可以展示你的
                                        <span>爱</span> 向你
                                        <span>的宠物</span>!</h3>
                                    <p> 全面的猫狗护理指南，让您的宠物感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts three">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>猫狗 是你的
                                        <span>朋友</span>！&nbsp;&nbsp;猫狗是你的
                                        <span>家人</span> !</h3>
                                    <p> 全面的猫狗护理指南，让您的宠物感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-img-w3layouts four">
                        <div class="w3l-overlay">
                            <div class="container">
                                <div class="banner-text-info">
                                    <h3>猫狗如此
                                        <span>可爱</span> 你们怎么可能
                                        <span>不爱</span>它们!</h3>
                                    <p>全面的猫狗护理指南，让您的宠物感受到您的爱</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!--//Slider-->
</div>
<!--//banner-->

<!-- footer -->
<section class="footer-w3">
    <div class="container">
        <div class="col-lg-4 col-md-4 col-sm-4 footer-agile1" data-aos="zoom-in">
            <h3>网站简介</h3>
            <p class="footer-p1">
                该网站是用于想领养宠物和想成为我们其中一员，那么你将再这里实现你的想法。
                如果你是领养者，请认真选取想要领养的宠物领养后，请认真负责对待可爱的猫狗！
                如果你是想成为志愿者，请联系我们，我们欢迎任何爱心认识，加入我们！
            </p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 footer-mid-w3" data-aos="zoom-in">
            <h3>宠物展示</h3>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/animal/images/f1.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/animal/images/f2.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/animal/images/f3.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/animal/images/f4.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/animal/images/f5.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="agileinfo_footer_grid1">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/animal/images/f6.jpg" alt=" " class="img-responsive">
                </a>
            </div>
            <div class="clearfix"></div>
        </div>
        <!--联系方式-->
        <div class="col-lg-4 col-md-4 col-sm-4 footer-agile1" data-aos="zoom-in">
            <h3>联系方式</h3>
            <p>电话&nbsp;&nbsp;<span style="font-size: 22px;color: red">14390872021</span></p>
            <br>
            <p>邮件&nbsp;&nbsp;<span style="font-size: 22px;color: red">CatDog@aliyun.com</span></p>
            <br>
            <p>官网&nbsp;&nbsp;<span style="font-size: 22px;color: red">www.pet.com</span></p>
        </div>

    </div>

</section>


<!-- js -->
<script src="${pageContext.request.contextPath}/animal/js/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
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


<!-- 注册登录模块框 -->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#home" aria-controls="login" role="tab" data-toggle="tab">登录</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab" aria-controls="register" role="tab" data-toggle="tab">注册</a>
                            </li>
                        </ul>
                    </div>
                </h4>
            </div>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <div class="modal-body">
                        <form class="form-horizontal" id="user_form" method="post"
                              action="${pageContext.request.contextPath}/user/login">
                            <div class="form-group">
                                <label for="new_loginName" class="col-sm-2 control-label">账号</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="new_loginName" placeholder="账号"
                                           name="username">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="new_loginPwd" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="new_loginPwd" placeholder="密码"
                                           name="password">
                                    <span>${msg}</span>
                                </div>
                            </div>
                            <%--                            <div class="form-group">--%>
                            <%--                                <label for="login_code" class="col-sm-2 control-label">验证码</label>--%>
                            <%--                                <div class="col-sm-4">--%>
                            <%--                                    <input type="text" class="form-control" id="login_code" placeholder="验证码" name="code">--%>
                            <%--                                    <div class="code" style="float: right">--%>
                            <%--                                        <img src="${pageContext.request.contextPath}/code" onclick="changeCode()" id="checkCodeImg"/>--%>
                            <%--                                        <a href="javascript:changeCode()" >看不清换一张</a><br>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                            <input type="submit" value="提交" id="dologin" style="display: block">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn1 btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn1 btn-primary" id="loginbtn">登录</button>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="tab">
                    <div class="modal-body">
                        <form class="form-horizontal" id="register_user_form" method="post"
                              action="${pageContext.request.contextPath}/register">
                            <div class="form-group">
                                <label for="register_loginName" class="col-sm-2 control-label">账号</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_loginName" placeholder="账号"
                                           name="loginName">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_loginPwd" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_loginPwd" placeholder="密码"
                                           name="loginPwd">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_gender" class="col-sm-2 control-label">性别</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_gender" placeholder="性别"
                                           name="gender">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_age" class="col-sm-2 control-label">年龄</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_age" placeholder="年龄"
                                           name="age">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_email" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_email" placeholder="Email"
                                           name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_telephone" class="col-sm-2 control-label">电话</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_telephone" placeholder="电话"
                                           name="telephone">
                                </div>
                            </div>
                            <input type="submit" value="" id="doRegister" style="display: none">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn1 btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn1 btn-primary" id="registerBtn">注册</button>
                    </div>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 注册登录模块框 -->
</body>
<%--得到图片--%>
<script type="text/javascript">
    function changeCode() {
        //得到图片元素
        var img = document.getElementById("checkCodeImg");
        img.src = "${pageContext.request.contextPath}/code?time=" + new Date().getTime();
    };
    // //登录成功显示个人信息页面
    // function hiddenButton() {
    //     var value=localStorage.getItem("user");
    //     if (value!=null){
    //
    //         document.getElementById("isLogin").style.display="none";
    //         document.getElementById("isPerson").style.display="block";
    //     }else {
    //         document.getElementById("isLogin").style.display="block";
    //         document.getElementById("isPerson").style.display="none";
    //     }
    // }
</script>
</html>