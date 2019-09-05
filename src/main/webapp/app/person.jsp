<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>个人资料</title>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- bootstrap -->
    <link href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap-overrides.css" type="text/css"
          rel="stylesheet"/>

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/css/elements.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/css/icons.css"/>

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/css/font-awesome.css"/>

    <!-- this page specific styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/personal-info.css" type="text/css"
          media="screen"/>
    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'/>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<jsp:include page="home.jsp"></jsp:include>
<body>
<style>
    .btnSearch {
        width: 40px;
        height: 40px;
        vertical-align: middle;
    }


    <%--    .txtSearch {--%>
    <%--        padding-left: 40px;--%>
    <%--    }--%>

    <%--    table {--%>
    <%--        background: rgba(128, 233, 143, 0.09);--%>
    <%--        width: 800px;--%>
    <%--        height: 600px;--%>
    <%--    }--%>

    <%--    input {--%>
    <%--        border: hidden;--%>
    <%--    }--%>

    .round_icon {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        align-items: center;
        justify-content: center;
        overflow: hidden;

    }
</style>

<div class="content wide-content">
    <div class="container-fluid">
        <div class="settings-wrapper" id="pad-wrapper">
            <!-- avatar column -->
            <div class="span3 avatar-box">
                <div class="personal-image">
                    <form id="fileImg" method="post" enctype="multipart/form-data"
                          id="formPic">
                        <input type="file" name="pic" id="photo" style="display: none">
                        <img src="/myImg/${UserPic}" width="100px"
                             style=" vertical-align:middle" class="round_icon">
                        <button type="button" class="btn1 head_title2 btn-success" id="findPic">选择图片</button>
                    </form>
                </div>
            </div>
            <center>
                <div class="span7 personal-info">
                    <h5 class="personal-title">个人信息修改</h5>
                    <form method="post" id="personForm">
                        <div class="field-box">
                            <label>
                                <img src="${pageContext.request.contextPath}/animal/images/pe2.jpg"
                                     class="btnSearch">
                                <font color="#87ceeb">用户编号：</font>
                            </label>
                            <input type="text" name="id" value="${User.id}" readonly class="txtSearch">
                        </div>
                        <br>
                        <div class="field-box">
                            <label>
                                <img src="${pageContext.request.contextPath}/animal/images/pe0.jpg"
                                     class="btnSearch"><font color="#87ceeb">用户名：</font>
                            </label>
                            <input type="text" name="username" value="${User.username}">
                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img src="${pageContext.request.contextPath}/animal/images/pe0.jpg"
                                     class="btnSearch"><font color="#87ceeb">密码：</font></label>
                            <input type="password" name="password" value="${User.password}" class="txtSearch">
                        </div>
                        <br>
                        <div class="field-box">
                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe1.jpg"
                                        class="btnSearch"> <font color="#87ceeb">真实姓名：</font>
                            </label>
                            <input type="text" name="relName" value="${User.relName}" class="txtSearch">
                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe9.jpg"
                                        class="btnSearch"><font color="#87ceeb">年龄：</font>
                            </label>
                            <input type="text" name="age" value="${User.age}">
                        </div>
                        <br>
                        <div class="field-box">
                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe12.jpg"
                                        class="btnSearch"><font color="#87ceeb">性别：</font>
                            </label>
                            <%
                                User user = (User) request.getSession().getAttribute("User");
                                int sexNumber = user.getSex();
                                if (sexNumber == 1) {
                                    request.getSession().setAttribute("userSex", "男");
                                } else if (sexNumber == 0) {
                                    request.getSession().setAttribute("userSex", "女");
                                } else {
                                    request.getSession().setAttribute("userSex", "");
                                }
                            %>
                            <select class="txtSearch" name="sex">
                                <option value="${User.sex}">${userSex}</option>
                                <option value="1">男</option>
                                <option value="0">女</option>
                            </select>
                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe6.jpg"
                                        class="btnSearch"><font color="#87ceeb">邮箱：</font>
                            </label>
                            <input type="email" name="email" value="${User.email}"
                                   class="txtSearch">

                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe4.jpg"
                                        class="btnSearch"><font color="#87ceeb">电话：</font>
                            </label>
                            <input type="text" name="tel" value="${User.tel}"
                                   class="txtSearch">
                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe7.jpg"
                                        class="btnSearch"><font color="#87ceeb">地址：</font>
                            </label>
                            <input type="text" name="address" value="${User.address}"
                                   class="txtSearch">
                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/p8.jpg"
                                        class="btnSearch"><font color="#87ceeb">个性签名：</font>
                            </label>
                            <input type="text" name="message" value="${User.message}"
                                   class="txtSearch">

                        </div>
                        <br>
                        <div class="field-box">

                            <label>
                                <img
                                        src="${pageContext.request.contextPath}/animal/images/pe11.jpg"
                                        class="btnSearch"><font color="#87ceeb">领养状态：</font>
                            </label>

                            <%
                                int stateNumber = user.getState();
                                if (stateNumber == 1) {
                                    request.getSession().setAttribute("userState", "已领养");
                                } else if (stateNumber == 0) {
                                    request.getSession().setAttribute("userState", "未领养");
                                } else {
                                    request.getSession().setAttribute("userState", "");
                                }
                            %>
                            <select class="txtSearch" name="state">
                                <option value="${User.state}">${userState}</option>
                            </select>
                        </div>
                        <input type="text" name="remark" value="${User.remark}" hidden>
                        <br>
                        <div class="field-box">

                            <div style="padding-left: 360px">
                                <input class="btn1 btn-primary btn-lg" type="button" value="提交修改"
                                       id="person_btn">
                                <font color="red"> ${updateUserMessage}</font>
                            </div>
                        </div>
                    </form>
                </div>
            </center>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
        var img_btn=false;
        $("#findPic").click(function uploadPic() {
            $("#photo").click();
            img_btn=true;
        });
        $("#person_btn").click(function () {
            if ( img_btn==true) {
                var formData = new FormData();
                // var name = $("input").val();
                formData.append("file", $("#photo")[0].files[0]);
                // formData.append("name",name),
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
                            console.log("修改照片成功" + result);
                            img_btn=false;
                        } else {
                            console.log("修改失败");
                        }
                    },
                    error: function (result) {
                        alert("失败");
                    }
                });

            }
            $.ajax({
                url: "${pageContext.request.contextPath}/user/updateUserMessage",
                type: "post",
                data: $("#personForm").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        alert("修改成功")
                    } else {
                        alert("修改失败")
                    }
                }
            });



        });
    });
</script>
</html>
