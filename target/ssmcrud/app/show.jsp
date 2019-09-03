<%@ page import="com.entity.Pet" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="home.jsp"></jsp:include>
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
    <title>立体轮播效果样式</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/lunbo/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/animal/lunbo/css/demo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/lunbo/css/style.css">
</head>
<body>

<div>
    <div>
        <br>
        <br>
        <br>
        <h2>待领养的动物</h2>
        <center>
                <div  class="htmleaf-container">
                    <div class="carousel" data-gap="20" data-bfc>
                        <figure>
                            <img src="/myImg/${newPet.imgPath}/m1.jpg" style="width: 500px;height: 300px"  alt=""><!--alt为若图片失效提示当前位置有张图片的-->
                            <img src="/myImg/${newPet.imgPath}/m2.jpg" style="width: 500px;height: 300px" alt="">
                            <img src="/myImg/${newPet.imgPath}/m3.jpg" style="width: 500px;height: 300px" alt="">
                            <img src="/myImg/${newPet.imgPath}/m4.jpg" style="width: 500px;height: 300px" alt="">
                            <img src="/myImg/${newPet.imgPath}/m5.jpg" style="width: 500px;height: 300px" alt="">
                            <img src="/myImg/${newPet.imgPath}/m6.jpg" style="width: 500px;height: 300px" alt="">
                        </figure>
                        <nav>
                            <button class="nav prev">上一张</button>
                            <button class="nav next">下一张</button>
                        </nav>
                    </div>
                </div>
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
                        Pet pet = (Pet) request.getSession().getAttribute("newPet");
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
                   <br>
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
                    <div class="panel-body">
                    <button class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModal" id="adoptApply">想要领养
                    </button>
                    </div>
            </div>

        </c:if>
        <c:if test="${!flag}" var="flag" scope="session">
            <div class="my_btn">
                <span><font color="red">${AdoptMsg}</font></span>
            </div>
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
                        <input type="text" name="petName" value="${newPet.petName}" hidden>
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
   2
    <div class="container">
        <div class="commentbox">
            <form id="form_pinglun">
                <%
                    //我要获取当前的日期
                    Date date = new Date();
                    //设置要获取到什么样的时间
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    //获取String类型的时间
                    String createdate = sdf.format(date);
                    request.getSession().setAttribute("NowTime", createdate);
                %>
                <input type="text" name="img" value="${User.pic}" id="new_pinglun_img" hidden>
                <input type="text" name="replyName" value="${User.username}" id="new_pinglun_replyName" hidden>
                <input type="text" name="beReplyName" value="" id="new_pinglun_beReplyName" hidden>
                <input type="text" name="time" value="${NowTime}" id="new_pinglun_time" hidden>
                <input type="text" name="pinglunObj" value="${newPet.petName}" hidden>
                <textarea cols="80" rows="50" placeholder="来说几句吧......" name="content" class="mytextarea"
                          id="content"></textarea>
            </form>
            <div class="btn1 btn-info pull-right" id="comment">评论</div>
        </div>
    </div>
</div>
<%----------------------评论显示的位置--%>
<div class="comment-list">
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%--立体轮播效果js--%>
<script type="text/javascript">
    'use strict';

    window.addEventListener('load', function () {
        var carousels = document.querySelectorAll('.carousel');

        for (var i = 0; i < carousels.length; i++) {
            carousel(carousels[i]);
        }
    });

    function carousel(root) {
        var figure = root.querySelector('figure'),
            nav = root.querySelector('nav'),
            images = figure.children,
            n = images.length,
            gap = root.dataset.gap || 0,
            bfc = 'bfc' in root.dataset,
            theta = 2 * Math.PI / n,
            currImage = 0;

        setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        window.addEventListener('resize', function () {
            setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        });

        setupNavigation();

        function setupCarousel(n, s) {
            var apothem = s / (2 * Math.tan(Math.PI / n));

            figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';

            for (var i = 0; i < n; i++) {
                images[i].style.padding = gap + 'px';
            }
            for (i = 1; i < n; i++) {
                images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
                images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
            }
            if (bfc) for (i = 0; i < n; i++) {
                images[i].style.backfaceVisibility = 'hidden';
            }
            rotateCarousel(currImage);
        }

        function setupNavigation() {
            nav.addEventListener('click', onClick, true);

            function onClick(e) {
                e.stopPropagation();

                var t = e.target;
                if (t.tagName.toUpperCase() != 'BUTTON') return;

                if (t.classList.contains('next')) {
                    currImage++;
                } else {
                    currImage--;
                }

                rotateCarousel(currImage);
            }
        }

        function rotateCarousel(imageIndex) {
            figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
        }
    }
</script>
<script>
    $(function () {
        $("#submitAdopt").click(function AdoptPet() {
            $("#doAdopt").click();
        });
    });
    var arr = [
        <c:forEach items="${pinglunList}" var="pinglun" varStatus="s">
        {
            id:${pinglun.id},
            img: "/myImg/${pinglun.img}",
            replyName: "${pinglun.replyName}",
            beReplyName: "${pinglun.beReplyName}",
            content: "${pinglun.content}",
            time: "${pinglun.time}",
            replyBody: [{
                // id: 3,
                // img: "",
                // replyName: "帅大叔",
                // beReplyName: "匿名",
                // content: "来啊，我们一起吃鸡",
                // time: "2017-10-17 11:42:53",
            }]
        },
        </c:forEach>
    ];
    $(function () {
        $(".comment-list").addCommentList({data: arr, add: ""});
        $("#comment").click(function () {
            var obj = new Object();
            obj.img = "/myImg/${User.pic}";
            obj.replyName = $("#new_pinglun_replyName").val();
            obj.content = $("#content").val();
            obj.time = $("#new_pinglun_time").val();
            obj.replyBody = "";
            $(".comment-list").addCommentList({data: [], add: obj});
            $.ajax({
                url: "${pageContext.request.contextPath}/pinglun/pinglunAdd",
                type: "post",
                data: $("#form_pinglun").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        $("#content").val('');
                    } else {
                        console.log(result);
                    }
                }
            })
        });
    })
</script>

</body>

</html>
