<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-6
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/static/admin/assets/images/favicon.png">
    <title>个人空间修改</title>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/static/admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/static/admin/html/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="${pageContext.request.contextPath}/static/admin/html/css/colors/default-dark.css" id="theme" rel="stylesheet">
</head>
<jsp:include page="ui.jsp"></jsp:include>
<body class="fix-header card-no-border fix-sidebar">
<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">个人空间修改</p>
    </div>
</div>

<div id="main-wrapper">

    <div class="page-wrapper">
        <div class="container-fluid">
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor"><a href="${pageContext.request.contextPath}/user/index">首页</a></h3>
                </div>

            </div>
            <div class="row">
                <!-- Column -->
                <div class="col-lg-4 col-xlg-3 col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <button class="btn btn-success" id="change_btn" style="display: none">修改</button>
                            <center class="m-t-30"> <img id="UserPic"  title="点击可修改头像" src="/myImg/${User.pic}" class="img-circle UserPic" width="150" />
                                <input type="file" name="pic"  style="display: none">
                                <h4 class="card-title m-t-10">${User.username}</h4>
                                <h6 class="card-subtitle">${User.sex}</h6>
                                <div class="row text-center justify-content-md-center">
                                    <c:if test="${User.sex eq 1}">
                                        <div class="col-4"><p class="link"><i class="icon-people"></i> <font class="font-medium"><img src="/myImg/sex_1.png" class="img-circle" width="25px" /></font></p></div>
                                    </c:if>
                                    <c:if test="${User.sex eq 0}">
                                        <div class="col-4"><p class="link"><i class="icon-people"></i> <font class="font-medium"><img src="/myImg/sex_0.png" class="img-circle" width="25px" /></font></p></div>
                                    </c:if>
                                    <%--                                    <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">254</font></a></div>--%>
                                    <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-picture"></i> <font class="font-medium">54</font></a></div>
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
                            <form class="form-horizontal form-material" id="personForm">
                                <div class="form-group">
                                    <label class="col-md-12">真实姓名</label>
                                    <div class="col-md-12">
                                        <input type="text" name="username" value="${User.relName}" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">邮箱</label>
                                    <div class="col-md-12">
                                        <input type="email" value="${User.email}" class="form-control form-control-line" name="example-email" id="example-email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">密码</label>
                                    <div class="col-md-12">
                                        <input type="text" name="password" value="${User.password}" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">电话号码</label>
                                    <div class="col-md-12">
                                        <input type="tel" name="tel" value="${User.password}" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">邮箱</label>
                                    <div class="col-md-12">
                                        <input type="email" name="email" value="${User.email}" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">地址</label>
                                    <div class="col-md-12">
                                        <input type="tel" name="tel" value="${User.address}" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">个人信息</label>
                                    <div class="col-md-12">
                                        <textarea rows="5"  class="form-control form-control-line"></textarea>
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
                                        <button class="btn btn-success" id="save_btn">修改完成并保存</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Column -->
            </div>
        </div>
        <footer class="footer">Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></footer>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/admin/assets/plugins/jquery/jquery.min.js"></script>
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
        $("#UserPic").click(function () {
            $("input[name='pic']").click();
            $("#change_btn").attr("style","display:block");
        });
        $("#change_btn").click( function () {
            var formData = new FormData();
        formData.append("file", $("input[name='pic']")[0].files[0]);
            $.ajax({
                url: "${pageContext.request.contextPath}/user/upload",
                type: 'POST',
                data: formData,
                // 告诉jQuery不要去处理发送的数据
                processData: false,
                // 告诉jQuery不要去设置Content-Type请求头
                contentType: false,
                beforeSend: function () {
                    console.log("正在进行，请稍候");
                },
                success: function (result) {
                    if (result.code == 100) {
                        var pic = result.extend.pic;
                        $("#UserPic" ).attr("src","/myImg/"+pic);
                        $("img[class ='UserPic']" ).attr("src","/myImg/"+pic);
                    } else {
                        alert("修改失败");
                    }
                }
            })
        });
        $("#save_btn").click(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/updateUserMessage",
                type: "post",
                data: $("#personForm").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        console.log("修改成功");
                        // $("#checkSub").html("<font color='red'>修改成功</font>")
                        window.location.href="${pageContext.request.contextPath}/user/personInfo?id=${User.id}";
                    } else {
                        alert("修改失败")
                    }
                }
            });
        })
    })
</script>
</html>

