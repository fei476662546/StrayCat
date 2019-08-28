<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/23
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学员关系管理系统CRM</title>
    <!-- 引入js文件 -->
    <!-- jQuery -->
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/animal/JQuery/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/metisMenu.min.js"></script>
    <!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/animal/houtai/js/dataTables.bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/sb-admin-2.js"></script>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/animal/houtai/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.request.contextPath}/animal/houtai/css/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-group {
            max-height: 770px;
            overflow: auto;
        }

        .leftMenu {
            margin: 10px;
            margin-top: 5px;
        }

        .panel-heading {
            background-color: #337ab7;
            border-color: #2e6da4;
            font-size: 14px;
            padding-left: 20px;
            height: 36px;
            line-height: 36px;
            color: white;
            position: relative;
            cursor: pointer;
        }

        /*转成手形图标*/
        .panel-heading span {
            position: absolute;
            right: 10px;
            top: 12px;
        }

        .menu-item-left {
            padding: 2px;
            background: transparent;
            border: 1px solid transparent;
            border-radius: 6px;
        }

        .menu-item-left:hover {
            background: #C4E3F3;
            border: 1px solid #1E90FF;
        }
    </style>

</head>
<body>
<!-- 导航栏部分 -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <a class="navbar-brand" href="">流浪猫狗管理系统</a>
    </div>
    <!-- 导航栏右侧图标部分 -->
    <!-- 导航栏右侧图标部分 -->
    <ul class="nav navbar-top-links navbar-right">
        <!-- 消息通知 end -->
        <!-- 用户信息和系统设置 start -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#">
                <i class="fa fa-user fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i>
                    管理员：${Admit.name}</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/app/home.jsp"><i class="fa fa-gear fa-fw"></i>到达主页</a></li>
                <li class="divider"></li>
                <li>
                    <a href="${pageContext.request.contextPath}/user/logout">
                        <i class="fa fa-sign-out fa-fw"></i>退出登录
                    </a>
                </li>
            </ul>
        </li>
        <!-- 用户信息和系统设置结束 -->
    </ul> <!-- 左侧显示列表部分 start-->
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <!-- 教学管理  折叠的分组列表 -->
            <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse"
                 data-target="#collapseListGroup3" role="tab">
                <h4 class="panel-title">
                    后台管理 <span class="fa fa-chevron-up right"></span>
                </h4>
            </div>
            <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel"
                 aria-labelledby="collapseListGroupHeading3">
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/app/userMessage.jsp" target="admit_page">
                            <i class="fa fa-flash fa-fw"></i> 用户信息管理
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/app/userComment.jsp" target="admit_page">
                            <i class="fa fa-comment fa-fw"></i> 评论管理
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/app/petMessage.jsp" target="admit_page">
                            <i class="fa fa-sitemap fa-fw"></i> 宠物信息管理
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/app/adoptMessage.jsp" target="admit_page">
                            <i class="fa fa-bolt fa-fw"></i> 领养信息管理
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="${pageContext.request.contextPath}/adopt/adoptApply" target="admit_page">
                            <i class="fa fa-gamepad fa-fw"></i> 审核领养申请
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div><!-- 左侧显示列表部分 end-->
</nav>
<div class="container4">
    <iframe src="${pageContext.request.contextPath}/app/userMessage.jsp" name="admit_page" frameborder="0" width="100%" height="100%">
    </iframe>
    <!-- 编写js代码 -->
    <script type="text/javascript">
        $(function () {
            $(".panel-heading").click(function (e) {
                /*切换折叠指示图标*/
                $(this).find("span").toggleClass("fa-chevron-down");
                $(this).find("span").toggleClass("fa-chevron-up");
            });
        });
    </script>
</div>
</body>
</html>
