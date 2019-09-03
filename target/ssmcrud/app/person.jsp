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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css"
          media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/animal/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/show.css">
    <script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.comment.js"></script>
</head>
<body>
<style>
    .btnSearch {
        width: 30px;
        height: 30px;
        vertical-align: middle;
    }

    .txtSearch {
        padding-left: 40px;
    }

    table {
        background: rgba(128, 233, 143, 0.09);
        width: 800px;
        height: 600px;
    }

    input {
        border: hidden;
    }
    .round_icon{
        width: 80px;
        height: 80px;
        border-radius: 50%;
        align-items: center;
        justify-content: center;
        overflow: hidden;

    }
</style>

<center>
<h2>个人资料</h2>
<br>
<br>
    <div class="head_portrait_box">
        <ul class="portrait_text">
            <form id="fileImg" method="post" enctype="multipart/form-data"
                  id="formPic">
                <input type="file" name="pic" id="photo" style="display: none">
                <li style="padding-right: 400px">
                    <img src="/myImg/${User.pic}" width="100px"
                         style=" vertical-align:middle" class="round_icon">
                    <button type="button" class="btn head_title2 btn-success" id="findPic">选择头像
                        <button type="button" class="btn head_title2 btn-success" id="pic_btn" >跟换头像</button>
                    </button>
                </li>
            </form>
            <li>${updateMsg}</li>
            <a href="${pageContext.request.contextPath}/app/home.jsp"><font color="#87ceeb">返回主页</font></a>
        </ul>
        <script type="text/javascript">
            $(function () {
                $("#pic_btn").click(function uploadPic() {
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
                                console.log("成功" + result);
                            } else {
                                console.log("失败");
                            }
                        },
                        error: function (result) {
                            alert("失败");
                        }
                    })
                });
            })

            $(function () {
                $("#findPic").click(function uploadPic() {
                    $("#photo").click();
                });
            })
        </script>
    </div>
    <form method="post" id="personForm">
        <table>
            <tr hidden>
                <td>
                    <div class="group1"><img src="/myImg/${User.pic}" width="60px"
                                             style="border-radius: 50%"><font color="#87ceeb">头像：</font>
                    </div>
                </td>
                <td>
                    <button type="button" class="btn head_title2 btn-success">选择头像
                    </button>
                    <button type="button" class="btn head_title2 btn-success" onclick="">跟换头像</button>
                </td>
                <td>${updateMsg}</td>
            </tr>

            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe2.jpg"
                                class="btnSearch"> <font color="#87ceeb">用户编号：</font>
                    </div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="id" value="${User.id}" readonly class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe0.jpg"
                                class="btnSearch"><font color="#87ceeb">用户名：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="username" value="${User.username}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe0.jpg"
                                class="btnSearch"><font color="#87ceeb">密码：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="password" name="password" value="${User.password}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe1.jpg"
                                class="btnSearch"> <font color="#87ceeb">真实姓名：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="relName" value="${User.relName}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe9.jpg"
                                class="btnSearch"><font color="#87ceeb">年龄：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="age" value="${User.age}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe12.jpg"
                                class="btnSearch"><font color="#87ceeb">性别：</font></div>
                </td>
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
                <td>
                    <div class="inputLeft"><select class="txtSearch" name="sex">
                        <option value="${User.sex}">${userSex}</option>
                        <option value="1">男</option>
                        <option value="0">女</option>
                    </select>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe6.jpg"
                                class="btnSearch"><font color="#87ceeb">邮箱：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="email" name="email" value="${User.email}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe4.jpg"
                                class="btnSearch"><font color="#87ceeb">电话：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="tel" value="${User.tel}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe7.jpg"
                                class="btnSearch"><font color="#87ceeb">地址：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="address" value="${User.address}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/p8.jpg"
                                class="btnSearch"><font color="#87ceeb">个性签名：</font></div>
                </td>
                <td>
                    <div class="inputLeft"><input type="text" name="message" value="${User.message}"
                                                  class="txtSearch">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="group1">
                        <img
                                src="${pageContext.request.contextPath}/animal/images/pe11.jpg"
                                class="btnSearch"><font color="#87ceeb">领养状态：</font></div>
                </td>
                <td><%
                    int stateNumber = user.getState();
                    if (stateNumber == 1) {
                        request.getSession().setAttribute("userState", "已领养");
                    } else if (stateNumber == 0) {
                        request.getSession().setAttribute("userState", "未领养");
                    } else {
                        request.getSession().setAttribute("userState", "");
                    }
                %>
                    <div class="inputLeft"><select class="txtSearch" name="state">
                        <option value="${User.state}">${userState}</option>
                    </select>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <div style="padding-left: 360px">
                        <input class="btn1 btn-primary btn-lg" type="button" value="提交修改" id="person_btn">
                        <font color="red"> ${updateUserMessage}</font>
                    </div>
                </td>

            </tr>

        </table>
    </form>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</center>
<script>
    $(function () {
        $("#person_btn").click(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/updateUserMessage",
                type: "post",
                data: $("#personForm").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        alert("成功")
                    }
                }
            })

        })
    })
</script>
</body>
</html>
<%--        <div class="peopleMessage1">--%>
<%--            <div class="groupX">--%>
<%--                <div class="MessageX1">--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">用户编号：</font><img src="${pageContext.request.contextPath}/animal/images/P7.jpg"--%>
<%--                                                                   class="btnSearch">--%>
<%--                        </div>--%>
<%--                        <div class="inputLeft"><input type="text" name="id" value="${User.id}" readonly class="txtSearch"></div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">用户名：</font><img src="${pageContext.request.contextPath}/animal/images/p6.jpg"--%>
<%--                                                                  class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="text" name="username" value="${User.username}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">真实姓名：</font><img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="text" name="relName" value="${User.relName}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">年龄：</font><img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="text" name="age" value="${User.age}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">性别：</font><img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <%--%>
<%--                            User user = (User) request.getSession().getAttribute("User");--%>
<%--                            int sexNumber = user.getSex();--%>
<%--                            if (sexNumber == 1) {--%>
<%--                                request.getSession().setAttribute("userSex", "男");--%>
<%--                            } else if (sexNumber == 0) {--%>
<%--                                request.getSession().setAttribute("userSex", "女");--%>
<%--                            } else {--%>
<%--                                request.getSession().setAttribute("userSex", "");--%>
<%--                            }--%>
<%--                        %>--%>
<%--                        <div class="inputLeft"><input type="text" name="sex" value="${userSex}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">邮箱：</font> <img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/p8.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="email" name="email" value="${User.email}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">电话：</font><img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="text" name="tel" value="${User.tel}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">地址：</font><img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/p8.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="text" name="address" value="${User.address}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">个性签名：</font> <img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/p8.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <div class="inputLeft"><input type="text" name="message" value="${User.message}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <div class="group1">--%>
<%--                            <font color="#87ceeb">领养状态：</font><img--%>
<%--                                src="${pageContext.request.contextPath}/animal/images/p8.jpg"--%>
<%--                                class="btnSearch"></div>--%>
<%--                        <%--%>
<%--                            int stateNumber = user.getState();--%>
<%--                            if (stateNumber == 1) {--%>
<%--                                request.getSession().setAttribute("userState", "已领养");--%>
<%--                            } else if (stateNumber == 0) {--%>
<%--                                request.getSession().setAttribute("userState", "未领养");--%>
<%--                            } else {--%>
<%--                                request.getSession().setAttribute("userState", "");--%>
<%--                            }--%>
<%--                        %>--%>
<%--                        <div class="inputLeft"><input type="text" name="state" value="${userState}" readonly--%>
<%--                                                      class="txtSearch">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </center>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="animal_me">--%>
<%--    <div class="animal_me1"><img src="${pageContext.request.contextPath}/animal/images/p11.jpg"></div>--%>
<%--    <div class="animal_me2"><p>大家好，我是Salon。我的特徵是一豎一摺的耳朵和會說話的眼神。我非常有活力，最愛和人玩耍逛街做運動。我很喜歡認識朋友，我有自信能和大部份狗狗友好相處。--%>
<%--        我已經準備好當你的好朋友，你能帶我回家給我永遠的溫暖嗎?</p></div>--%>
<%--    <div class="animal_me3"><img src="${pageContext.request.contextPath}/animal/images/p10.jpg"></div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
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
