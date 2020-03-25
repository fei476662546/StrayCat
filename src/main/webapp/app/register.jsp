<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-4
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jQuery用户注册提示效果 - 站长素材</title>
    <link href="${pageContext.request.contextPath}/static/registerpage/css/layout.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/registerpage/js/jquery.js"></script>
</head>
<style>
    .minHeigh{
        min-height:65px;
    }
    .heightAdd{
        height: 30px!important;
    }
</style>
<body style="background-image: url(${pageContext.request.contextPath}/animal/images/1.jpg)">
<br>
<link href="${pageContext.request.contextPath}/static/registerpage/css/home_login.css" rel="stylesheet" type="text/css">
<div class="nc-login-layout">
    <div class="nc-login">
        <div class="nc-login-title">
            <h3>用户注册<a style="padding-left: 200px" href="${pageContext.request.contextPath}/user/index">首页</a></h3>

        </div>
        <div class="nc-login-content">
            <form id="register_form" method="post" action="${pageContext.request.contextPath}/user/register">
                <dl>
                    <dt>用户名</dt>
                    <dd class="minHeigh">
                        <input type="text" id="user_name" name="username" class="text tip heightAdd" title="3-20位字符，可由中文、英文、数字及“_”、“-”组成"  />
                        <label><span id="MessageByUser"></span></label></dd>
                </dl>
                <dl>
                    <dt>设置密码</dt>
                    <dd class="minHeigh">
                        <input type="password" id="password" name="password" class="text tip heightAdd" title="6-16位字符，可由英文、数字及标点符号组成" />
                        <label><span id="MessagePassword"></span></label></dd>
                </dl>
                <dl>
                    <dt>确认密码</dt>
                    <dd class="minHeigh">
                        <input type="password" id="password_confirm" name="password_confirm" class="text tip heightAdd" title="请再次输入您的密码" />
                        <label><span id="unEqualPassword"></span></label></dd>
                </dl>
                <dl>
                    <dt>性别</dt>
                    <dd class="minHeigh">
                        <select  id="sex" name="sex" class="text tip heightAdd" title="请选择您的性别" >
                            <option value="-1">请选择</option>
                            <option value="0">女</option>
                            <option value="1">男</option>
                        </select>
                        <label><span id="sexMessage"></span></label></dd>
                </dl>
<%--                <dl>--%>
<%--                    <dt>年龄</dt>--%>
<%--                    <dd class="minHeigh">--%>
<%--                        <input type="text" id="age" name="age" class="text tip heightAdd" title="请输入您的年龄" />--%>
<%--                        <label><span id="ageMessage"></span></label></dd>--%>
<%--                </dl>--%>
                <dl>
                    <dt>邮箱</dt>
                    <dd style="min-height:54px;">
                        <input type="text" id="email" name="email" class="text tip heightAdd" title="请输入常用的邮箱，将用来找回密码、接受订单通知等" />
                        <label></label></dd>
                </dl>

                <dl>
                    <dt>&nbsp;</dt>
                    <dd>
                        <input type="button" id="Submit" value="立即注册" class="submit fl" title="立即注册" />
<%--                        <input name="agree" type="checkbox" class="fl mt10 ml10" id="clause" value="1" checked="checked" />--%>
<%--                        <span for="clause" class="fl ml5">阅读并同意<a href="document-agreement.html" target="_blank" class="agreement" title="阅读并同意">服务协议</a></span>--%>
                        <label></label></dd>
                </dl>
                <input type="hidden" value name="ref_url">
                <input name="nchash" type="hidden" value="206f94ec" />
            </form>
            <div class="clear">
            </div>
        </div>
        <div class="nc-login-bottom">
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/registerpage/js/jquery.poshytip.min.js" charset="utf-8"></script>
<script>
    // 注册辅助是否已存在
    $(function () {
var flag1=false;var flag2=false;var flag3=false;var flag4=false;
        $("#user_name").change(function () {
            var val = $(this).val();//value有空格
            val = $.trim(val);//去掉空格
            if (val.length>20||val.length<3) {
                $("#MessageByUser").html("<font color='red' size='2'>字符长度不合法</font>");
            }else {
                $.ajax({
                    url: "${pageContext.request.contextPath}/user/username_check?username=" + val,
                    type: "GET",
                    dataType: "json",
                    success: function (result) {
                        if (result.code == 100) {
                            $("#MessageByUser").html("<font color='red' size='2'>用户名已存在</font>");
                        } else if (result.code == 200) {
                            $("#MessageByUser").html("<font color='red' size='2'></font>");
                            flag1=true;
                        }
                    },
                    error: function (result) {
                        alert("注册处失败");
                    }
                });
            }
        });
        $("#password").change(function () {
            var val=$(this).val();
            val = $.trim(val);//去掉空格

            if(val.length<6||val.length>16){
                $("#MessagePassword").html("<font color='red' size='2'>字符长度不合法</font>");
            }else {
                $("#MessagePassword").html("<font color='red' size='2'></font>");
                flag2=true;
            }
        });
        $("#password_confirm").change(function () {
            var val=$(this).val();
            val = $.trim(val);//去掉空格
            var val0=$("#password").val();
            if (val !=""&&val0!="") {
                if (val0!=val){
                    $("#unEqualPassword").html("<font color='red' size='2'>两次密码不一致</font>");
                } else {
                    $("#unEqualPassword").html("<font color='red' size='2'></font>");
                    flag3=true;
                }
            }
        });
        $("#sex").change(function () {
            var val=$(this).val();
            if (val=="1"||val=="0"){
                flag4=true;
            }
        });
        $("#Submit").click(function () {
            if (flag1==true&&flag2==true&&flag3==true&&flag4==true) {

                $("#register_form").submit();}
            if ($("#sex").val()=="-1") {
                $("#sexMessage").html("<font color='red' size='2'>请选择性别</font>");
            }
        });
    });

    //注册表单提示
    $('.tip').poshytip({
        className: 'tip-yellowsimple',
        showOn: 'focus',
        alignTo: 'target',
        alignX: 'center',
        alignY: 'top',
        offsetX: 0,
        offsetY: 5,
        allowTipHover: false
    });

    //注册表单验证
    $(function(){
        jQuery.validator.addMethod("lettersonly", function(value, element) {
            return this.optional(element) || /^[^:%,'\*\"\s\<\>\&]+$/i.test(value);
        }, "Letters only please");
        jQuery.validator.addMethod("lettersmin", function(value, element) {
            return this.optional(element) || ($.trim(value.replace(/[^\u0000-\u00ff]/g,"aa")).length>=3);
        }, "Letters min please");
        jQuery.validator.addMethod("lettersmax", function(value, element) {
            return this.optional(element) || ($.trim(value.replace(/[^\u0000-\u00ff]/g,"aa")).length<=15);
        }, "Letters max please");
        $("#register_form").validate({
            errorPlacement: function(error, element){
                var error_td = element.parent('dd');
                error_td.find('label').hide();
                error_td.append(error);
            },
            submitHandler:function(form){
                ajaxpost('register_form', '', '', 'onerror')
            },
            rules : {
                user_name : {
                    required : true,
                    lettersmin : true,
                    lettersmax : true,
                    lettersonly : true,
                    remote   : {
                        url :'index.php?act=login&op=check_member&column=ok',
                        type:'get',
                        data:{
                            user_name : function(){
                                return $('#user_name').val();
                            }
                        }
                    }
                },
                password : {
                    required : true,
                    minlength: 6,
                    maxlength: 20
                },
                password_confirm : {
                    required : true,
                    equalTo  : '#password'
                },
                email : {
                    required : true,
                    email    : true,
                    remote   : {
                        url : 'index.php?act=login&op=check_email',
                        type: 'get',
                        data:{
                            email : function(){
                                return $('#email').val();
                            }
                        }
                    }
                },
                captcha : {
                    required : true,
                    minlength: 4,
                    remote   : {
                        url : 'index.php?act=seccode&op=check&nchash=206f94ec',
                        type: 'get',
                        data:{
                            captcha : function(){
                                return $('#captcha').val();
                            }
                        }
                    }
                },
                agree : {
                    required : true
                }
            },
            messages : {
                user_name : {
                    required : '用户名不能为空',
                    lettersmin : '用户名必须在3-15个字符之间',
                    lettersmax : '用户名必须在3-15个字符之间',
                    lettersonly: '用户名不能包含敏感字符',
                    remote	 : '该用户名已经存在'
                },
                password  : {
                    required : '密码不能为空',
                    minlength: '密码长度应在6-20个字符之间',
                    maxlength: '密码长度应在6-20个字符之间'
                },
                password_confirm : {
                    required : '请再次输入您的密码',
                    equalTo  : '两次输入的密码不一致'
                },
                email : {
                    required : '电子邮箱不能为空',
                    email    : '这不是一个有效的电子邮箱',
                    remote	 : '该电子邮箱已经存在'
                },
                captcha : {
                    required : '请输入验证码',
                    minlength: '验证码不正确',
                    remote	 : '验证码不正确'
                },
                agree : {
                    required : '请阅读并同意该协议'
                }
            }
        });
    });
</script>

</body>
</html>
