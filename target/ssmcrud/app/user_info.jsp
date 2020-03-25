<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-5
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/static/admin/assets/images/favicon.png">
    <title>个人空间</title>

    <!-- Bootstrap Core CSS -->
    <script src="${pageContext.request.contextPath}/animal/JQuery/jquery-3.4.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/admin/assets/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/static/admin/html/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="${pageContext.request.contextPath}/static/admin/html/css/colors/default-dark.css" id="theme"
          rel="stylesheet">
    <jsp:include page="ui.jsp"></jsp:include>
</head>

<body class="fix-header card-no-border fix-sidebar">
<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">个人空间</p>
    </div>
</div>

<div id="main-wrapper">


    <div class="page-wrapper">
        <div class="container-fluid">
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor"><a href="${pageContext.request.contextPath}/user/index">首页</a></h3>
                </div>
                <div class="col-md-7 align-self-center">
                    <a href="${pageContext.request.contextPath}/user/user_edit"
                       class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down">信息修改</a>
                </div>
            </div>
            <div class="row">

                <!-- Column -->
                <div class="col-lg-4 col-xlg-3 col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <center class="m-t-30"><img src="/myImg/${User.pic}" class="img-circle" width="150"/>
                                <input value="${User.id}" name="id" id="user_id" hidden>
                                <h4 class="card-title m-t-10">${User.username}</h4>
                                <h6 class="card-subtitle">${User.message}</h6>
                                <div class="row text-center justify-content-md-center">
                                    <c:if test="${User.sex eq 1}">
                                        <div class="col-4"><p class="link"><i class="icon-people"></i> <font
                                                class="font-medium"><img src="/myImg/sex_1.png" class="img-circle"
                                                                         width="25px"/></font></p></div>
                                    </c:if>
                                    <c:if test="${User.sex eq 0}">
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i
                                                class="icon-people"></i> <font class="font-medium"><img
                                                src="/myImg/sex_0.png" class="img-circle" width="25px"/></font></a>
                                        </div>
                                    </c:if>
                                    <%--                                    <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">254</font></a></div>--%>
                                    <div class="col-4"><a href="javascript:void(0)" class="link"><i
                                            class="icon-picture"></i> <font class="font-medium">54</font></a></div>
                                </div>
                            </center>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-8 col-xlg-9 col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <form class="form-horizontal form-material">
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 20px">
                                        <div class="card-subtitle" style="color: black">真实姓名<font color="#87ceeb"
                                                                                                  style="padding-left: 250px">${User.relName}</font>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="card-subtitle" style="color: black">邮箱<font color="#87ceeb"
                                                                                                style="padding-left: 290px">${User.email}</font>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="card-subtitle" style="color: black">密码<font color="white"
                                                                                                style="padding-left: 290px"><a
                                                class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down"
                                                data-toggle="modal" data-target="#myModal" id="">密码修改</a></font><span style="padding-left: 40px"><font color="red">${msg}</font></span></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="card-subtitle" style="color: black">电话号码<font color="#87ceeb"
                                                                                                  style="padding-left: 250px">${User.tel}</font>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="card-subtitle" style="color: black">年龄<font color="#87ceeb"
                                                                                                style="padding-left: 290px">${User.age}</font>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="card-subtitle" style="color: black">地址<font color="#87ceeb"
                                                                                                style="padding-left: 290px">${User.address}</font>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="card-subtitle" style="color: black">个性签名<font color="#87ceeb"
                                                                                                  style="padding-left: 250px">${User.message}</font>
                                        </div>
                                    </div>
                                </div>
                                <%--                                <div class="form-group">--%>
                                <%--                                    <label class="col-sm-12">Select Country</label>--%>
                                <%--                                    <div class="col-sm-12">--%>
                                <%--                                        <select class="form-control form-control-line">--%>
                                <%--                                            <option>London</option>--%>
                                <%--                                            <option>India</option>--%>
                                <%--                                            <option>Usa</option>--%>
                                <%--                                            <option>Canada</option>--%>
                                <%--                                            <option>Thailand</option>--%>
                                <%--                                        </select>--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <p class="btn waves-effect waves-light btn-info hidden-md-down" id="user_pet_home">我的宠物</p>
                                        <span id="you_have_no_pet" style="padding-left: 200px"></span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">Copyright &copy; 2019.Company name All rights reserved.<a target="_blank"
                                                                                         href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
        </footer>
    </div>
</div>
<!-- 修改密码模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <%--            <div class="modal-header">--%>
            <%--&lt;%&ndash;                关闭此模态框&ndash;%&gt;--%>
            <%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
            <%--                    &times;--%>
            <%--                </button>--%>
            <%--&lt;%&ndash;    模态款主体&ndash;%&gt;--%>
            <%--                <h4 class="modal-title" id="myModalLabel">--%>
            <%--                    请填写个人信息--%>
            <%--                </h4>--%>
            <%--            </div>--%>
            <div class="modal-body">
                <form class="form-horizontal"
                      action="${pageContext.request.contextPath}/user/update_password" method="post" id="password_form">
                    <input name="id" value="${User.id}" hidden>
                    <div class="form-group">

                        <label for="old_password" class="col-md-12">
                            初始密码： </label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="old_password"
                                   placeholder="请输入初始密码" >
                            <span id="old_password_check"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_password" class="col-md-12">
                            修改密码： </label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="new_password"
                                   placeholder="请输入想要修改的密码" name="password">
                            <span id="new_password_check"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="again_password" class="col-md-12">
                            确认密码： </label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="again_password"
                                   placeholder="请再次输入密码">
                            <span id="again_password_check"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btno1 btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btno1 btn-primary" id="submit_password_change">确认修改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- Bootstrap tether Core JavaScript -->
<script src="${pageContext.request.contextPath}/static/admin/assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="${pageContext.request.contextPath}/static/admin/html/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="${pageContext.request.contextPath}/static/admin/html/js/waves.js"></script>
<!--Menu sidebar -->
<script src="${pageContext.request.contextPath}/static/admin/html/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="${pageContext.request.contextPath}/static/admin/html/js/custom.min.js"></script>
</body>
<script>
    $(function () {
        var flag1=false; var flag2=false; var flag3=false;
        $("#old_password").change(function () {
            var old_password = $("#old_password").val();
            old_password = $.trim(old_password);//去掉空格
            var id = $("#user_id").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/user/check_password?old_password=" + old_password + "&id=" + id,
                type: "get",
                dataType: "json",
                success: function (result) {
                    if (result.code == 100) {
                        $("#old_password_check").html("<font color='red' size='2'></font>");
                        flag1=true;
                    } else if (result.code == 200) {
                        $("#old_password_check").html("<font color='red' size='2'>密码错误</font>");
                    } else {
                        $("#old_password_check").html("<font color='red' size='2'>密码输入异常</font>");
                    }
                }
            })
        });
        $("#new_password").change(function () {
            var val=$(this).val();
            val = $.trim(val);//去掉空格
            var old_password = $("#old_password").val();
            if(val.length<6||val.length>16){
                $("#new_password_check").html("<font color='red' size='2'>字符长度不合法</font>");
            }else if(val==old_password){
                $("#new_password_check").html("<font color='red' size='2'>新密码不能和原密码一致</font>");
            }
            else {
                $("#new_password_check").html("<font color='red' size='2'></font>");
                flag2=true;
            }
        });
        $("#again_password").change(function () {
            var val=$(this).val();
            val = $.trim(val);//去掉空格
            var val0 = $("#new_password").val();
            if (val !=""&&val0!="") {
                if (val0!=val){
                    $("#again_password_check").html("<font color='red' size='2'>两次密码不一致</font>");
                } else {
                    $("#again_password_check").html("<font color='red' size='2'></font>");
                    flag3=true;
                }
            }
        });
        $("#submit_password_change").click(function () {
            if(flag1==true&&flag2==true&&flag3==true) {
                $("#password_form").submit();
            }
        });
        $("#user_pet_home").click(function () {
            var id= $("#user_id").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/user/userPet?id="+id,
                type: "get",
                dataType: "json",
                success:function (result) {
                    if (result.code==100) {
                        window.location.href="${pageContext.request.contextPath}/app/pet_info.jsp";
                }else  {
                        $("#you_have_no_pet").html("<font color='red' size='2'>你还未领养宠物</font>");
                    }
                }
            })
        });

    });

</script>
</html>
