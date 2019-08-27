<%@ page import="com.entity.Pet" %><%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>动物的具体信息</title>

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
            <%
                boolean petId1 = false, petId2 = false, petId3 = false, petId4 = false, petId5 = false, petId6 = false;
                Pet pet = (Pet) request.getSession().getAttribute("newPet");
                if (pet.getId() == 1) {
                    petId1 = true;
                }
                if (pet.getId() == 2) {
                    petId2 = true;
                }
                if (pet.getId() == 3) {
                    petId3 = true;
                }
                if (pet.getId() == 4) {
                    petId4 = true;
                }
                if (pet.getId() == 5) {
                    petId5 = true;
                }
                if (pet.getId() == 6) {
                    petId6 = true;
                }
                request.getSession().setAttribute("petId1", petId1);
                request.getSession().setAttribute("petId2", petId2);
                request.getSession().setAttribute("petId3", petId3);
                request.getSession().setAttribute("petId4", petId4);
                request.getSession().setAttribute("petId5", petId5);
                request.getSession().setAttribute("petId6", petId6);
            %>
            <c:if test="${sessionScope.petId1}" var="flag1" scope="session">
                <div id="demo1" class="slideBox">
                    <ul class="items">
                        <li><a href=""><img class="my-img" src="${pageContext.request.contextPath}/animal/images/1.jpg"></a>
                        </li>
                        <li><a href=""><img class="my-img" src="${pageContext.request.contextPath}/animal/images/2.jpg"></a>
                        </li>
                        <li><a href=""><img class="my-img" src="${pageContext.request.contextPath}/animal/images/3.jpg"></a>
                        </li>
                        <li><a href=""><img class="my-img" src="${pageContext.request.contextPath}/animal/images/4.jpg"></a>
                        </li>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.petId2}" var="flag2" scope="session">
                <div id="demo1" class="slideBox">
                    <ul class="items">
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/cat%20(1).png"></a>
                        </li>
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/cat%20(2).png"></a>
                        </li>
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/cat%20(3).png"></a>
                        </li>
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/cat%20(4).png"></a>
                        </li>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.petId3}" var="flag3" scope="session">
                <div id="demo1"  class="slideBox">
                    <ul class="items">
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/dog%20(2).png"></a>
                        </li>
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/dog%20(3).png"></a>
                        </li>
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/dog%20(4).png"></a>
                        </li>
                        <li><a href=""><img class="my-img"
                                            src="${pageContext.request.contextPath}/animal/images/dog%20(5).png"></a>
                        </li>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.petId4}" var="flag4" scope="session">
            <div id="demo1"  class="slideBox">
                <ul class="items">
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(6).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(7).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(8).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(9).png"></a></li>
                </ul>
            </div>
        </c:if>
            <c:if test="${sessionScope.petId5}" var="flag5" scope="session">
            <div id="demo1"  class="slideBox">
                <ul class="items">
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/cat%20(14).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/cat%20(15).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/cat%20(16).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/cat%20(13).png"></a></li>
                </ul>
            </div>
        </c:if>
            <c:if test="${sessionScope.petId6}" var="flag6" scope="session">
            <div id="demo1"  class="slideBox">
                <ul class="items">
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(10).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(14).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(11).png"></a></li>
                    <li><a href=""><img class="my-img"
                                        src="${pageContext.request.contextPath}/animal/images/dog%20(12).png"></a></li>
                </ul>
            </div>
        </c:if>
            <div class="name">
                <img src="${pageContext.request.contextPath}/animal/images/p9.jpg">
                <span>${newPet.petName}</span>
            </div>
        </center>
        <div class="animal">
            <div class="group">
                <div class="animalX1">
                    <img src="${pageContext.request.contextPath}/animal/images/P7.jpg"><span>编号</span><br>
                    <p>${newPet.id}</p>
                </div>
                <div class="animalX2">
                    <img src="${pageContext.request.contextPath}/animal/images/p6.jpg"><span>年龄</span><br>
                    <p>${newPet.age}</p>
                </div>
            </div>
            <div class="group">
                <div class="animalX3">
                    <img src="${pageContext.request.contextPath}/animal/images/catsm1.jpg"><span>品种</span><br>
                    <p>波斯猫</p>
                </div>
                <div class="animalX4">
                    <%

                        int sexNumber = pet.getSex();
                        if (sexNumber == 1) {
                            request.getSession().setAttribute("petSex", "公");
                        } else if (sexNumber == 0) {
                            request.getSession().setAttribute("petSex", "母");
                        } else {
                            request.getSession().setAttribute("petSex", "");
                        }
                    %>
                    <img src="${pageContext.request.contextPath}/animal/images/p4.jpg"><span>性别</span><br>
                    <p>${petSex}</p>
                </div>
            </div>
            <div class="group">
                <div class="animalX5">
                    <img src="${pageContext.request.contextPath}/animal/images/p8.jpg"><span>备注</span><br>
                    <p>${newPet.remark}</p>
                </div>
            </div>
        </div>
        <div class="animal_me">
            <div class="animal_me1"><img src="${pageContext.request.contextPath}/animal/images/p11.jpg"></div>
            <div class="animal_me2"><p>我的特徵是一豎一摺的耳朵和會說話的眼神。我非常有活力，最愛和人玩耍逛街做運動。我很喜歡認識朋友，我有自信能和大部份狗狗友好相處。
                我已經準備好當你的好朋友，你能帶我回家給我永遠的溫暖嗎?</p></div>
            <div class="animal_me3"><img src="${pageContext.request.contextPath}/animal/images/p10.jpg"></div>
        </div>
        <%
            boolean chickApplyAdopt = true;
            if (request.getSession().getAttribute("AdoptMsg") != null) {
                chickApplyAdopt = false;
                System.out.println("chickApplyAdopt:" + chickApplyAdopt);
            }
            request.getSession().setAttribute("chickApplyAdopt", chickApplyAdopt);
        %>
        <c:if test="${sessionScope.chickApplyAdopt}" var="flag" scope="session">
            <div class="my_btn">
                <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" id="adoptApply">想要领养
                </button>
            </div>
            <%System.out.println("c:if-----未点击--------------");%>
        </c:if>
        <c:if test="${!flag}" var="flag" scope="session">
            <div class="my_btn">
                <span><font color="red">${AdoptMsg}</font></span>
            </div>
            <%System.out.println("c:if-----已点击--------------");%>
        </c:if>
    </div>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        请填写个人信息
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="new_department_form"
                          action="${pageContext.request.contextPath}/adopt/adoptPet" method="post">
                        <div class="form-group">
                            <label for="new_Name" class="col-sm-2 control-label">
                                真实姓名： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Name"
                                       placeholder="name" name="relName" value="${User.relName}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Sex" class="col-sm-2 control-label">
                                性别： </label>
                            <div class="col-sm-10">
                                <select class="form-control" id="new_Sex" name="sex">
                                    <option value="-1">选择</option>
                                    <option value="0">女</option>
                                    <option value="1">男</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_tel" class="col-sm-2 control-label">
                                联系方式： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_tel"
                                       placeholder="telephone" name="tel" value="${User.tel}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Email" class="col-sm-2 control-label">
                                邮件： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Email"
                                       placeholder="Email" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_Adress" class="col-sm-2 control-label">
                                地址： </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="new_Adress"
                                       placeholder="address" name="address" value="${User.address}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new_remark" class="col-sm-2 control-label">
                                备注： </label>
                            <div class="col-sm-10">
                            <textarea type="text" class="form-control" id="new_remark"
                                      placeholder="remark" name="remark"></textarea>
                            </div>
                        </div>
                        <input type="submit" value="提交" id="doAdopt" style="display: none">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="button" class="btn btn-primary" id="submitAdopt">提交申请</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
    <script>
        $(function () {
            $("#submitAdopt").click(function AdoptPet() {
                $("#doAdopt").click();
            });
        });
    </script>
    <div class="comment-list">

    </div>
    <div class="container">
        <div class="commentbox">
            <textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content"></textarea>
            <div class="btn btn-info pull-right" id="comment">评论</div>
        </div>

    </div>
</div>
<script>
    jQuery(function ($) {
        $('#demo1').slideBox();

    });

    var arr = [
        {
            id: 1,
            img: "${pageContext.request.contextPath}/animal/images/img.jpg",
            replyName: "帅大叔",
            beReplyName: "匿名",
            content: "同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",
            time: "2017-10-17 11:42:53",
            address: "深圳",
            osname: "",
            browse: "谷歌",
            replyBody: []
        },
        {
            id: 2,
            img: "${pageContext.request.contextPath}/animal/images/img.jpg",
            replyName: "匿名",
            beReplyName: "",
            content: "到菜市场买菜，看到一个孩子在看摊，我问：“一只鸡多少钱？” 那孩子回答：“23。” 我又问：“两只鸡多少钱？” 孩子愣了一下，一时间没算过来，急中生智大吼一声：“一次只能买一只！”",
            time: "2017-10-17 11:42:53",
            address: "深圳",
            osname: "",
            browse: "谷歌",
            replyBody: [{
                id: 3,
                img: "",
                replyName: "帅大叔",
                beReplyName: "匿名",
                content: "来啊，我们一起吃鸡",
                time: "2017-10-17 11:42:53",
                address: "",
                osname: "",
                browse: "谷歌"
            }]
        },
        {
            id: 3,
            img: "${pageContext.request.contextPath}/animal/images/img.jpg",
            replyName: "帅大叔",
            beReplyName: "匿名",
            content: "同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",
            time: "2017-10-17 11:42:53",
            address: "深圳",
            osname: "win10",
            browse: "谷歌",
            replyBody: []
        }
    ];
    $(function () {
        $(".comment-list").addCommentList({data: arr, add: ""});
        $("#comment").click(function () {
            var obj = new Object();
            obj.img = "./images/img.jpg";
            obj.replyName = "匿名";
            obj.content = $("#content").val();
            obj.browse = "深圳";
            obj.osname = "win10";
            obj.replyBody = "";
            $(".comment-list").addCommentList({data: [], add: obj});
        });
    })
</script>
</body>

</html>
