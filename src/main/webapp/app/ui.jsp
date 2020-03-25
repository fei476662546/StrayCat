
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-7
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .tile_index{
            padding-left: 400px;
            position: absolute;
        }
    </style>
    <title>流浪猫狗领养网站</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">

    <link rel="icon" href="${pageContext.request.contextPath}/static/index/assets/images/favicon.png">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/assets/css/night-mode.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/assets/css/framework.css">

    <!-- icons
    ================================================== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/assets/css/icons.css">




</head>

<body>

<!-- Wrapper -->
<div id="wrapper">

    <!-- sidebar -->
    <div class="main_sidebar">
        <div class="side-overlay" uk-toggle="target: #wrapper ; cls: collapse-sidebar mobile-visible"></div>

        <!-- sidebar header -->
        <div class="sidebar-header">
            <h4>导航</h4>
            <span class="btn-close" uk-toggle="target: #wrapper ; cls: collapse-sidebar mobile-visible"></span>
        </div>

        <!-- 左上方菜单 -->
        <div class="sidebar">
            <div class="sidebar_innr" data-simplebar>

                <div class="sections">
                    <h3> 浏览 </h3>
                    <ul>
                        <li class="active"> <a href="${pageContext.request.contextPath}/user/index"> <i class="uil-home-alt"></i> 首页 </a></li>
                        <li> <a href="${pageContext.request.contextPath}/app/about.jsp"> <i class="uil-users-alt"></i> 猫狗须知 </a></li>
                        <li> <a href="${pageContext.request.contextPath}/app/team.jsp"> <i class="uil-layers"></i> 团队中心 </a></li>
                    </ul>
                </div>

            </div>

        </div>

    </div>

    <!-- 上方菜单栏-->
    <div id="main_header">
        <header>

            <!-- Logo-->
            <i class="header-traiger uil-bars"
               uk-toggle="target: #wrapper ; cls: collapse-sidebar mobile-visible"></i>

            <!-- Logo-->
            <div id="logo">
                <a href="#"> <img src="${pageContext.request.contextPath}/static/index/assets/images/logo.png" alt="" style="width: 50px"></a>
                <a href="#"> <img src="${pageContext.request.contextPath}/static/index/assets/images/logo.png" class="logo-inverse" alt="" style="width: 50px"></a>
            </div>


            <h2 class="tile_index" style="padding-left: 500px">流浪动物领养网站</h2>
            <h3 style="padding-left: 300px" id="logoutOk"></h3>
            <!-- 图标 -->
            <div class="head_user">
                <c:if test="${User.id eq null}" >
                    <a href="${pageContext.request.contextPath}/app/login.jsp" class="btn-upgrade uk-visible@s"> <i class="uil-bolt-alt"></i> 登录</a>
                    <a href="${pageContext.request.contextPath}/app/register.jsp" class="btn-upload uk-visible@s"> <i class="uil-cloud-check"></i>注册</a>
                </c:if>

                <!-- u点击图标模态款 -->

                <!-- 4矩形框 -->
                <a href="#" class="opts_icon uk-visible@s"> <i class="uil-apps"></i> </a>

                <!-- 4矩形框内容 -->
                <div uk-dropdown="pos: top;mode:click ; animation: uk-animation-scale-up" class="icon-browse">

                    <a href="#" class="icon-menu-item"> <i class="uil-shop"></i> Dashboard </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-envelope-alt"></i> Messages </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-bookmark"></i> Bookmark </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-shopping-basket"></i> Cart </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-shield-check"></i> Privacy </a>
                    <a href="#" class="icon-menu-item"> <i class="uil-bolt-alt"></i> Upgrade </a>
                    <a href="#" class="more-app"> More Features</a>
                </div>


                <!-- 个人留言提示 -->
<%--                <a href="#" class="opts_icon"> <i class="uil-envelope-alt"></i> <span>4</span> </a>--%>

<%--                <!-- Message  notificiation dropdown -->--%>
<%--                <div uk-dropdown="pos: top-right;mode:click ; animation: uk-animation-slide-bottom-small"--%>
<%--                     class="dropdown-notifications">--%>

<%--                    <!-- 留言内容 -->--%>
<%--                    <div class="dropdown-notifications-headline">--%>
<%--                        <h4>Messages</h4>--%>
<%--                        <a href="#">--%>
<%--                            <i class="icon-feather-settings" uk-tooltip="title: Message settings ; pos: left"></i>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <!-- notification contents -->--%>
<%--                    <div class="dropdown-notifications-content" data-simplebar>--%>
<%--                        <!-- 4条留言消息 list -->--%>
<%--                        <ul>--%>
<%--                            <li class="notifications-not-read">--%>
<%--                                <a href="#">--%>
<%--                                        <span class="notification-avatar">--%>
<%--                                            <img src="${pageContext.request.contextPath}/static/index/assets/images/avatars/avatar-2.jpg" alt="">--%>
<%--                                        </span>--%>
<%--                                    <div class="notification-text notification-msg-text">--%>
<%--                                        <strong>Jonathan Madano</strong>--%>
<%--                                        <p>Okay.. Thanks for The Answer I will be waiting for your...</p>--%>
<%--                                        <span class="time-ago"> 2 hours ago </span>--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="dropdown-notifications-footer">--%>
<%--                        <a href="#"> sell all <i class="icon-line-awesome-long-arrow-right"></i> </a>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <c:if test="${!(User.id eq null)}" >
                    <div id="remind_count_div">
                    </div>
                <!-- 灵丹提醒内容 -->
                <div uk-dropdown="pos: top-right;mode:click ; animation: uk-animation-slide-bottom-small"
                     class="dropdown-notifications">
                    <!-- notivication header -->
                    <div class="dropdown-notifications-headline">
                        <h4>Notifications </h4>
                        <a href="#">
                            <i class="icon-feather-settings"
                               uk-tooltip="title: Notifications settings ; pos: left"></i>
                        </a>
                    </div>
                    <!-- notification contents -->
                    <div class="dropdown-notifications-content" data-simplebar>
<%--                        提醒列表--%>
                        <ul id="remind_msg">
                        </ul>
        <%--                        提醒列表--%>
                    </div>
                </div>
                    <!-- 个人信息选择 -->
                    <a class="opts_account"> <img src="/myImg/${User.pic}" class="UserPic" alt=""></a>
                    <!-- 个人信息菜单栏-->
                    <div uk-dropdown="pos: top-right;mode:click ; animation: uk-animation-slide-bottom-small"
                         class="dropdown-notifications small">
                        <!-- User Name / Avatar -->
                        <a href="#">
                            <div class="dropdown-user-details">
                                <div class="dropdown-user-avatar">
                                    <img src="/myImg/${User.pic}" class="UserPic" alt="">
                                </div>
                                <div class="dropdown-user-name">
                                    <c:if test="${!(User.verification_id eq 0)}">
                                        ${User.username}<span><font color="#87ceeb" size="2" style="padding-left: 40px"> 已实名 </font><i class="uil-check"></i> </span>
                                    </c:if>
                                    <c:if test="${User.verification_id eq 0}">
                                        ${User.username}<span><font color="red" size="2" style="padding-left: 40px"> 未实名 </font><i class="uil-cog"></i> </span>
                                    </c:if>
                                </div>
                            </div>
                        </a>
                        <!-- User menu -->
                        <ul class="dropdown-user-menu">
                            <li><a href="${pageContext.request.contextPath}/user/personInfo?id=${User.id}"> <i class="uil-user"></i> 个人信息</a> </li>
                            <li><a href="#"> <i class="uil-bolt"></i> 我的申请 </a> </li>
                            <li><a href="#"> <i class="uil-thumbs-up"></i> 我的评论 </a></li>
                            <c:if test="${User.verification_id eq 0}">
                                <li><a href="${pageContext.request.contextPath}/user/toShiMing?id=${User.id}"> <i class="uil-history"></i> 去实名 </a></li>
                            </c:if>
                                <%--                            <li><a href="#"> <i class="uil-cog"></i> Account Settings</a></li>--%>
                                <%--                            <li><a href="#" style="color:#ff8400"> <i class="uil-bolt"></i> Upgrade To Premium</a> </li>--%>
                            <li>
                                <a href="#" id="night-mode" class="btn-night-mode">
                                    <i class="icon-feather-moon"></i> 夜间模式
                                    <span class="btn-night-mode-switch">
                                        <span class="uk-switch-button"></span>
                                    </span>
                                </a>
                            </li>
                            <div class="menu-divider">
                                <li><a href="${pageContext.request.contextPath}/app/login.jsp"> <i class="icon-feather-help-circle"></i> 帮助</a>
                                </li>
                                <li ><a href="${pageContext.request.contextPath}/user/logout" id="exitLogout" > <i class="icon-feather-log-out"></i>注销登录</a>
                                </li>
                            </div>
                        </ul>
                    </div>
                </c:if>
            </div>
        </header>
    </div>

</div>


<script src="${pageContext.request.contextPath}/static/index/assets/js/framework.js"></script>
<script src="${pageContext.request.contextPath}/static/index/assets/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/index/assets/js/simplebar.js"></script>
<script src="${pageContext.request.contextPath}/static/index/assets/js/main.js"></script>
</body>
<!-- 夜间模式-->
<script>
    (function (window, document, undefined) {
        'use strict';
        if (!('localStorage' in window)) return;
        var nightMode = localStorage.getItem('gmtNightMode');
        if (nightMode) {
            document.documentElement.className += ' night-mode';
        }
    })(window, document);


    (function (window, document, undefined) {

        'use strict';

        // Feature test
        if (!('localStorage' in window)) return;

        // 得到新的插入开关
        var nightMode = document.querySelector('#night-mode');
        if (!nightMode) return;


        // 单击时，打开或关闭夜间模式
        nightMode.addEventListener('click', function (event) {
            event.preventDefault();
            document.documentElement.classList.toggle('night-mode');
            if (document.documentElement.classList.contains('night-mode')) {
                localStorage.setItem('gmtNightMode', true);
                return;
            }
            localStorage.removeItem('gmtNightMode');
        }, false);

    })(window, document);
</script>
<script>
    //总的数据 当前的页面
    var totalRecord,currentPage;
    $(function(){
        to_page_remind(1);
    });
    function to_page_remind(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/user/reminds?pn="+pn+"&user_id=${User.id}",
            type:"GET",
            success:function(result){
                //1、解析并显示提醒数据
                build_remind_table(result);
            }
        });
    }
    //动态搭建样式
    function build_remind_table(result){
        //清空table表格
        $("#remind_msg").empty();
        $("#remind_count_div").empty();
        var remind_count = result.extend.User_remind_count;
        var a_remind_1 = $("<a></a>").attr("href","#").addClass("opts_icon").append($("<i></i>").addClass("uil-bell").append($("<span></span>").append(remind_count)));
        a_remind_1.appendTo("#remind_count_div");
        //index：下标 user：单个对象
        var reminds=result.extend.pageInfo.list;//调用return Msg.success().add("pageInfo", page);
        $.each(reminds,function(index,remind){
            var div_1 = $("<li></li>");
            var div_1_1 = $("<a></a>").attr("id","remind_del").attr("remind_id",remind.id);
            var div_1_1_1 = $("<span></span>").addClass("notification-icon").append($("<i></i>").addClass("icon-feather-message-circle"));
            var div_1_1_2 = $("<span><span>").addClass("notification-text");
            var div_1_1_2_2 = $("<p></p>").append(remind.comment);//等待加值
            var div_1_1_2_3 = $("<span></span>").addClass("time_ago").append(remind.time);//等待加值
            div_1.append(div_1_1.append(div_1_1_1).append(div_1_1_2));
            div_1_1_2.append(div_1_1_2_2).append(div_1_1_2_3);
            div_1.appendTo("#remind_msg");
        });
    }
    $(document).on("click", "#remind_del", function () {//直接调用点击事件无效，用使用on（）绑定
        var id =$(this).attr("remind_id");
        $.ajax({
            url:"${pageContext.request.contextPath}/user/remindDel?id="+id,
            type:"GET",
            success:function () {
                to_page_remind(1);
            }
        })
        
    })
    //注销
    $(function () {
        $("#exitLogout").click(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/logout",
                type: "get",
                success:function () {
                    window.location.href="${pageContext.request.contextPath}/user/index";
                    $("#logoutOk").html("<font color='red'>注销成功<font>");
                }
            })
        })
    })
</script>
</html>

