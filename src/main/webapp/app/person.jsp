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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/animal/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/show.css">
    <script src="${pageContext.request.contextPath}/animal/js/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.comment.js"></script>
</head>
<body>
<div>
    <div>
        <h2>待领养的动物</h2>
        <center>
            <%--            <div id="demo1" class="slideBox">--%>
            <%--                <ul class="items">--%>
            <%--                    <li><a href="" ><img class="my-img" src="${pageContext.request.contextPath}/animal/images/1.jpg"></a></li>--%>
            <%--                    <li><a href="" ><img class="my-img" src="${pageContext.request.contextPath}/animal/images/2.jpg"></a></li>--%>
            <%--                    <li><a href="" ><img class="my-img" src="${pageContext.request.contextPath}/animal/images/3.jpg"></a></li>--%>
            <%--                    <li><a href="" ><img class="my-img" src="${pageContext.request.contextPath}/animal/images/4.jpg"></a></li>--%>
            <%--                </ul>--%>
            <%--            </div>--%>
            <div class="head_portrait_box">
                <div class="head_portrait">
                    <img src="${pageContext.request.contextPath}/animal/images/c4.jpg">
                </div>
                <ul class="portrait_text">
                    <input type="file" name="pic" id="photo" style="display: none"/>
                    <button type="button" class="btn head_title2 btn-success">上传头像</button>
                    <li>支持jpg、gif、png、或bmp格式的图片，文件必须小于1M</li>
                </ul>
            </div>
        </center>
        <div class="animal">
            <div class="group">
                <div class="animalX1">
                    <img src="${pageContext.request.contextPath}/animal/images/P7.jpg"><span>用户编号:</span><br>
                    <input type="text" name="id" value="${User.id}" readonly></div>

                <div class="animalX1">
                    <img src="${pageContext.request.contextPath}/animal/images/p6.jpg"><span> 用&nbsp;户&nbsp;名&nbsp;：</span><br>
                    <input type="text" name="username" value="${User.username}" readonly>
                </div>
                <div class="animalX1">
                    <img src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"><span> 真实姓名&nbsp;：</span><br>
                    <input type="text" name="relName" value="${User.relName}" readonly>
                </div>
            </div>
            <div class="group">
                <div class="animalX2">
                    <img src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"><span>  年龄&nbsp;：</span><br>
                    <input type="text" name="age" value="${User.age}" readonly>
                </div>
                <div class="animalX2">
                    <img src="${pageContext.request.contextPath}/animal/images/p4.jpg"><span>性别:</span><br>

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
                    <input type="text" name="sex" value="${userSex}" readonly>
                </div>
                <div class="animalX2">
                    <img src="${pageContext.request.contextPath}/animal/images/p8.jpg"><span> 邮箱&nbsp;：</span><br>
                    <input type="email" name="email" value="${User.email}" readonly>
                </div>
            </div>
            <div class="group">
                <div class="animalX3">
                    <img src="${pageContext.request.contextPath}/animal/images/p8.jpg"><span>  电话&nbsp;：</span><br>
                    <input type="text" name="tel" value="${User.tel}" readonly>
                </div>
                <div class="animalX3">
                    <img src="${pageContext.request.contextPath}/animal/images/p8.jpg"><span> 地址&nbsp;：</span><br>
                    <input type="text" name="address" value="${User.address}" readonly></div>

                <div class="animalX3">
                    <img src="${pageContext.request.contextPath}/animal/images/p8.jpg"><span>  签名&nbsp;：</span><br>
                    <input type="text" name="message" value="${User.message}" readonly></div>
            </div>
            <div class="group">
                <div class="animalX4">
                    <img src="${pageContext.request.contextPath}/animal/images/p8.jpg"><span>领养状态&nbsp;：</span><br>
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
                    <input type="text" name="state" value="${userState}" readonly>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
<%--<div class="animal_me">--%>
<%--    <div class="animal_me1"><img src="${pageContext.request.contextPath}/animal/images/p11.jpg"></div>--%>
<%--    <div class="animal_me2"><p>大家好，我是Salon。我的特徵是一豎一摺的耳朵和會說話的眼神。我非常有活力，最愛和人玩耍逛街做運動。我很喜歡認識朋友，我有自信能和大部份狗狗友好相處。--%>
<%--        我已經準備好當你的好朋友，你能帶我回家給我永遠的溫暖嗎?</p></div>--%>
<%--    <div class="animal_me3"><img src="${pageContext.request.contextPath}/animal/images/p10.jpg"></div>--%>
<%--</div>--%>
</div>
</div>
</body>
</html>
<%--................................................................................................................--%>
<%--<h1>个人资料</h1>--%>
<%--<a href="${pageContext.request.contextPath}/app/home.jsp" class="retureIndex"><font color="black">返回主页</font> </a>--%>
<%--<hr>--%>
<%--<center>--%>
<%--    <form action="#" method="get" name="myprofile_form">--%>
<%--        <div class="head_portrait_box">--%>
<%--            <div class="head_portrait">--%>
<%--                <img src="${pageContext.request.contextPath}/animal/images/c4.jpg">--%>
<%--            </div>--%>
<%--            <ul class="portrait_text">--%>
<%--                <input type="file" name="pic" id="photo" style="display: none"/>--%>
<%--                <button type="button" class="btn head_title2 btn-success">上传头像</button>--%>
<%--                <li>支持jpg、gif、png、或bmp格式的图片，文件必须小于1M</li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <div class="gameID_all">--%>
<%--            <div class="game_ID">--%>
<%--                用户编号：<input type="text" name="id" value="${User.id}" readonly></div>--%>
<%--            <div class="game_ID">--%>
<%--                用&nbsp;户&nbsp;名&nbsp;：<input type="text" name="username" value="${User.username}" readonly></div>--%>
<%--            <div class="game_ID">--%>
<%--                真实姓名&nbsp;：<input type="text" name="relName" value="${User.relName}" readonly></div>--%>
<%--            <div class="game_ID">--%>
<%--                年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：<input type="text" name="age" value="${User.age}" readonly>--%>
<%--            </div>--%>
<%--            <div class="game_ID">--%>
<%--                性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;：--%>
<%--                <%--%>
<%--                    User user = (User) request.getSession().getAttribute("User");--%>
<%--                    int sexNumber = user.getSex();--%>
<%--                    if (sexNumber == 1) {--%>
<%--                        request.getSession().setAttribute("userSex", "男");--%>
<%--                    } else if (sexNumber == 0) {--%>
<%--                        request.getSession().setAttribute("userSex", "女");--%>
<%--                    } else {--%>
<%--                        request.getSession().setAttribute("userSex", "");--%>
<%--                    }--%>
<%--                %>--%>
<%--                <input type="text" name="sex" value="${userSex}" readonly>--%>
<%--            </div>--%>
<%--            <div class="game_ID">--%>
<%--                邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱&nbsp;：<input type="email" name="email" value="${User.email}"--%>
<%--                                                                    readonly></div>--%>
<%--            <div class="game_ID">--%>
<%--                电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话&nbsp;：<input type="text" name="tel" value="${User.tel}" readonly>--%>
<%--            </div>--%>
<%--            <div class="game_ID">--%>
<%--                地址&nbsp;：<input type="text" name="address" value="${User.address}" readonly></div>--%>
<%--            <div class="game_ID">--%>
<%--                签名&nbsp;：<input type="text" name="message" value="${User.message}" readonly></div>--%>
<%--            <div class="game_ID">--%>
<%--                <%--%>
<%--                    int stateNumber = user.getState();--%>
<%--                    if (stateNumber == 1) {--%>
<%--                        request.getSession().setAttribute("userState", "已领养");--%>
<%--                    } else if (stateNumber == 0) {--%>
<%--                        request.getSession().setAttribute("userState", "未领养");--%>
<%--                    } else {--%>
<%--                        request.getSession().setAttribute("userState", "");--%>
<%--                    }--%>
<%--                %>--%>
<%--                <input type="text" name="state" value="${userState}" readonly>--%>
<%--            </div>--%>
<%--            <div class="submit_box">--%>
<%--                <input type="submit" value="提交修改">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--</form>--%>
<%--</center>--%>
<%--</body>--%>

<%--</html>--%>
