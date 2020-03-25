<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-3
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>系统登录</title>
    <link href="${pageContext.request.contextPath}/static/loginpage/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/static/loginpage/css/demo.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/loginpage/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/loginpage/js/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/loginpage/js/Validform_v5.3.2_min.js"></script>
    <style>
        .round_icon1 {
            width: 90px;
            height: 80px;
            border-radius: 50%;
            align-items: center;
            justify-content: center;
            overflow: hidden;

        }
    </style>
    <script>
        $(function(){

            $(".i-text").focus(function(){
                $(this).addClass('h-light');
            });

            $(".i-text").focusout(function(){
                $(this).removeClass('h-light');
            });
            $("#send-btn").click(function () {
                var codeVal=$("#yzm").val();
                codeVal = $.trim(codeVal);//去掉空格
                if(codeVal!=""){
                    $.ajax({
                        url:"${pageContext.request.contextPath}/user/checkCode?code="+codeVal,
                        type: "post",
                        dataType: "json",
                        success: function (result) {
                        if (result.code == 100) {
                            $("#codeByUser").html("<font color='red' size='2'>验证码正确</font>");
                            $("#login").submit();
                        } else if (result.code == 200) {
                            $("#codeByUser").html("<font color='red' size='2'>验证码错误</font>");
                        }
                        },
                        error: function () {
                        $("#codeByUser").html("<font color='red' size='2'>错误</font>");

                         }

                    });
                }else {
                    $("#codeByUser").html("<font color='red' size='2'>请输入验证码</font>");
                }
            })
        });
        function changeCode() {
            //得到图片元素
            var img = document.getElementById("checkCodeImg");

            img.src = "${pageContext.request.contextPath}/user/code?time=" + new Date().getTime();
        };
    </script>

</head>

<body >


<div class="header">
    <h1 class="headerLogo"><a title="流浪动物领养网站" target="_blank" href="${pageContext.request.contextPath}/app/index.jsp"><img class="round_icon1" alt="logo" src="${pageContext.request.contextPath}/animal/images/f2.jpg">流浪动物领养网站</a></h1>
    <div class="headerNav">
        <a target="_blank" href="${pageContext.request.contextPath}/user/index">首页</a>
        <a target="_blank" href="${pageContext.request.contextPath}/app/register.jsp">注册</a>
        <a target="_blank" href="http://sc.chinaz.com/">忘记密码</a>
        <a target="_blank" href="${pageContext.request.contextPath}/app/admin_login.jsp">管理员登录</a>
        <a target="_blank" href="${pageContext.request.contextPath}/app/index.jsp">帮助</a>
    </div>
</div>

<div class="banner">

    <div class="login-aside">
        <div id="o-box-up"></div>
        <div id="o-box-down"  style="table-layout:fixed;">


            <form  id="login" class="registerform" action="${pageContext.request.contextPath}/user/login" method="post">
                <div class="fm-item">
                    <label  class="form-label">用户名：</label>
                    <input type="text" placeholder="请输入账号" maxlength="100" id="username" name="username" class="i-text" >
                    <div class="ui-form-explain"></div>
                </div>

                <div class="fm-item">
                    <label  class="form-label">登陆密码：</label>
                    <input type="password" placeholder="请输入密码" maxlength="100" id="password" name="password" class="i-text" >
                    <div class="ui-form-explain"></div>
                </div>

                <div class="fm-item pos-r">
                    <label  class="form-label">验证码：<a href="javascript:changeCode()" style="padding-left: 75px" id="codePlace">看不清换一张</a></label>
                    <input type="text" placeholder="输入验证码" maxlength="100" id="yzm" class="i-text yzm" nullmsg="请输入验证码！" >
                    <div class="ui-form-explain">  <img id="checkCodeImg" src="${pageContext.request.contextPath}/user/code" onclick="changeCode()" class="yzm-img"/>
                       </div>
                </div>

                <div class="fm-item">
                    <label  class="form-label"></label>
                    <input type="button" value="" tabindex="4" id="send-btn" class="btn-login">
                    <div class="ui-form-explain"></div>
                </div>
                <span id="codeByUser"><font color="red"  style="padding-left: 50px">${msg}</font> </span>
            </form>

        </div>

    </div>

    <div class="bd">
        <ul>
            <li style="background:url(${pageContext.request.contextPath}/animal/images/1.jpg) #CCE1F3 center 0 no-repeat;"><a target="_blank" ></a></li>
            <li style="background:url(${pageContext.request.contextPath}/animal/images/3.jpg) #BCE0FF center 0 no-repeat;"><a target="_blank" ></a></li>
        </ul>
    </div>

    <div class="hd"><ul></ul></div>
</div>
<script type="text/javascript">jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold",  autoPlay:true, autoPage:true, trigger:"click" });</script>


<div class="banner-shadow"></div>

<div class="footer">
    <p>2020年四月份毕业设计</p>
</div>

</body>
</html>
