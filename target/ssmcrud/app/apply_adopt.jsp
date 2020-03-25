<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-9
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请页面</title>
    <jsp:include page="ui.jsp"></jsp:include>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />

</head>
<body>
<div class="contact" id="contact" style="padding-left: 200px">
    <div class="container">
        <h3 class="agile-title">申请领养</h3>
        <div class="col-md-9 col-sm-9 contact-right">
            <form action=""  id="verification_form" >
                <input name="user_id" value="${User.id}" hidden >
                <input name="pet_id" value="${UserPet.id}" hidden >
                <input name="time" value="${NowTime}" hidden>
                <input name="apply" value="" hidden>
                <p>真实姓名：<input type="text" name="relName" value="${User.relName}" required=""></p>
<%--                <span>:<input type="text" name="id_card" placeholder="" required=""></span>--%>
                <p>电话号码：<input type="text" name="tel" value="${User.tel}" required=""></p>
                <p>居住地址：<input type="text" name="address" value="${User.address}" required=""></p>
                <p>申请理由：<textarea name="reason" placeholder="说说你想要领养此动物的理由" required=""></textarea></p>
                <input type="button" id="verification_send" value="发送">
            </form>
            <font color="red"></font>
        </div>
        <div class="col-md-3 col-sm-3 contact-left">
            <div class="address">
                <h4>
                    <i class="fa fa-map-marker" aria-hidden="true"></i>地址</h4>
                <p>华东交通大学北区</p>

            </div>
            <div class="phone">
                <h4>
                    <i class="fa fa-phone" aria-hidden="true"></i>电话</h4>
                <p>18370964218</p>

            </div>
            <div class="email">
                <h4>
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>宗旨</h4>
                <p>
                    <a href="mailto:info@example.com">绝不泄露用户信息</a>
                </p>

            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
        $("#verification_send").click(function () {
            var data =  $("#verification_form").serialize();
            $.ajax({
                url:"${pageContext.request.contextPath}/adopt/adoptPetApply",
                dataType:"json",
                data:data,
                type:"Get",
                success:function (result) {
                    if (result.code = 100) {
                        window.location.href="${pageContext.request.contextPath}/pet/petMessage?user_id=${User.id}&pet_id=${UserPet.id}";
                        //返回上一级目录
                        historyUtils.back();
                    }
                }
            });
        })
    })
</script>

</html>
