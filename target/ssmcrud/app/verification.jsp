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
<style>
    .plBtn{width: 75px;height: 36px;line-height: 36px;background-color:skyblue;
        text-align: center;display: block;color: #FFFFFF;font-size: 12px;
        border-radius: 6px;margin-right: 2px;margin-top: 20px;

    }
</style>
<head>
    <title>实名验证</title>
    <jsp:include page="ui.jsp"></jsp:include>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />

</head>
<body>
<div class="contact" id="contact" style="padding-left: 200px">
    <div class="container">
        <h3 class="agile-title">实名验证</h3>
        <div class="col-md-9 col-sm-9 contact-right">
            <div style="padding-top: -800px;float: right"><jsp:include page="update.jsp"></jsp:include></div>
            <form action=""  id="verification_form" >
                <input name="user_id" value="${User.id}" hidden>
                <p>真实姓名:<input type="text" name="relName" value="${User.relName}" required=""></p>
                <p>身份证号:<input type="text" name="id_card" placeholder="" required=""></p>
                <p>电话号码:<input type="text" name="tel" value="${User.tel}" required=""></p>
                <p>居住地址:<input type="text" name="address" value="${User.address}" required=""></p>
                <div style="padding-left: 500px"><input type="button" id="verification_send" value="发送"  class="plBtn" ></div>
                    <div id="msg"></div>

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
       $.ajax({
           url: "${pageContext.request.contextPath}/user/shiMing?id=${User.id}",
           dataType: "json",
           type: "Get",
           success:function (result) {
               if (result.code==100){
                   alert("你已实名，即将跳转首页");
                   window.location.href="${pageContext.request.contextPath}/user/index";
               } else {

               }
           }
       });
        $("#verification_send").click(function () {
            var data =  $("#verification_form").serialize();
            $.ajax({
                url:"${pageContext.request.contextPath}/user/addShiMing",
                dataType:"json",
                data:data,
                type:"Get",
                success:function (result) {
                    if (result.code = 100) {
                        alert("实名成功");
                        window.location.href="${pageContext.request.contextPath}/user/index";
                        //返回上一级目录
                        historyUtils.back();
                    }else{
                       var msg= result.extend.fail;
                       $("#msg").html(msg);
                        window.location.href="${pageContext.request.contextPath}/user/index";
                    }
                }
            });
        })

    })
</script>
<%--返回上一级目录的方法--%>
<script>
    var historyUtils = {
        add : function (url) {
            var historyArray = historyUtils.getLocal();
            if (!historyArray) {
                historyArray = [];
            }
            var currentPage = historyArray.pop();
            if (currentPage && currentPage == url) {
                //do nothing
            } else if (currentPage){
                historyArray.push(currentPage); //历史里面没有现在传入的url，在加回去
            }
            historyArray.push(url);
            historyUtils.saveLocal(historyArray);
        },
        back : function() {
            var historyArray = historyUtils.getLocal();
            var currentPage = historyArray.pop();//去掉当前页面，pop取最后，类似stack
            var history = historyArray.pop();
            if (!history) {//没有历史页面
                historyUtils.add(currentPage);//将当前页面加入回数组中
                return;
            }
            historyUtils.saveLocal(historyArray);
            window.location.href = history;
        },
        getLocal : function() {
            var result = window.sessionStorage.getItem(historyUtils.key);
            if (!result) {
                return null;
            }
            return JSON.parse(result);
        },
        saveLocal : function(data) {
            window.sessionStorage.setItem(historyUtils.key, JSON.stringify(data));
        },
        init : function() {
            historyUtils.saveLocal([]);
        },
        key : "_history_"
    };

    historyUtils.add(window.location.href);
</script>
</html>
