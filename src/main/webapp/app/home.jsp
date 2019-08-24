<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- js -->
    <script src="${pageContext.request.contextPath}/animal/js/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <!-- Necessary-JavaScript-File-For-Bootstrap -->
    <!-- //js -->
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
<body>
<div class="nav-links">
    <nav class='navbar navbar-default'>
        <div class='container'>
            <div class='collapse navbar-collapse'>
                <ul class="navigation_ul">
                    <li>
                        <a href="${pageContext.request.contextPath}/app/index.jsp" target="item_main">主页</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/about.jsp" target="item_main">宠物知识</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/services.jsp" target="item_main">领养中心</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/blog.jsp" target="item_main">猫狗日记</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/team.jsp" target="item_main">团队信息</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/gallery.jsp" target="item_main">猫狗展示</a>
                    </li>
                    <%
                        boolean isLogin=false;
                        Object user = request.getSession().getAttribute("User");
                        if (user!=null){
                            isLogin = true;
                        }
                        request.getSession().setAttribute("isLogin",isLogin);
                    %>
                    <c:if test="${sessionScope.isLogin}" var="flage" scope="session">
                        <li class="nav_item userinfo"  >
                            <a href="${pageContext.request.contextPath}/app/person.jsp?target=home">
                                <div class="img"><img src="${pageContext.request.contextPath}/animal/images/${User.getPic()}" alt="" width="60px"
                                                      style="border-radius:50% ">
                                </div>
<%--                                <div class="info"><span class="leve">${user.getStaffNumber()}</span>--%>
<%--                                    <p class="name">${user.getStaffName()}</p>--%>
<%--                                </div>--%>
                            </a>
                        </li>
                            <a href="${pageContext.request.contextPath}/user/logout" id="exitLogout">退出</a>
                    </c:if>
                    <c:if test="${!flage}" var="flage"  scope="session">
                        <li>
                            <button class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#login">注册/登录</button>
                        </li>
                    </c:if>
<%--                    <li >--%>
<%--                        <button class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#login">注册/登录</button>--%>
<%--                    </li>--%>
<%--                    <span>Hello:${User.username}</span>--%>
                </ul>
            </div>
        </div>
    </nav>
</div>
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
                                   <p> <input type="text" class="form-control" id="new_loginPwd" placeholder="密码"
                                              name="password"><span style="color: red">${msg}</span></p>

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
                            <input type="submit" value="提交" id="dologin" style="display: none">
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
                              action="${pageContext.request.contextPath}/user/register">
                            <div class="form-group">
                                <label for="register_loginName" class="col-sm-2 control-label">账号</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_loginName" placeholder="账号"
                                           name="username">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_loginPwd" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_loginPwd" placeholder="密码"
                                           name="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="register_age" class="col-sm-2 control-label">年龄</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="register_age" placeholder="年龄"
                                           name="age">
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <label for="register_gender" class="col-sm-2 control-label">性别</label>--%>
<%--                                <div class="col-sm-8">--%>
<%--                                    <select class="form-control" id="register_gender" name="sex">--%>
<%--                                        <option value="-1">--请选择--</option>--%>
<%--                                        <option value="1">公</option>--%>
<%--                                        <option value="0">母</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="register_telephone" class="col-sm-2 control-label">电话</label>--%>
<%--                                <div class="col-sm-8">--%>
<%--                                    <input type="text" class="form-control" id="register_telephone" placeholder="电话"--%>
<%--                                           name="tel">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="register_email" class="col-sm-2 control-label">Email</label>--%>
<%--                                <div class="col-sm-8">--%>
<%--                                    <input type="text" class="form-control" id="register_email" placeholder="Email"--%>
<%--                                           name="email">--%>
<%--                                </div>--%>
<%--                            </div>--%>
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
<script>
    $(function () {
        $("#loginbtn").click( function loginUser(){
            $("#dologin").click();
        });
        $("#registerBtn").click( function loginUser(){
            $("#doRegister").click();
        });
    });
    $(function () {
        $("#exitLogout").click(function logoutUser() {
            alert("确认退出吗");
        });
    });
</script>
<div class="container4">
    <iframe src="${pageContext.request.contextPath}/app/index.jsp" name="item_main" frameborder="0" width="100%" height="100%">

    </iframe>
</div>

</body>
</html>
