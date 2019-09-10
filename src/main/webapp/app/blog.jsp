<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--

  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="home.jsp"></jsp:include>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>动物的具体信息</title>
    <script src="${pageContext.request.contextPath}/animal/js/jquery-2.2.3.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="${pageContext.request.contextPath}/animal/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/show.css">
    <meta charset="UTF-8">
    <script src="${pageContext.request.contextPath}/animal/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/animal/js/jquery.comment.js" type="text/javascript"
            charset="UTF-8"></script>
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css"
          media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all"/>
</head>
<body>
<!-- Blog -->
<div class="blog" id="blog">
    <div class="container">
        <h3 class="agile-title">我们的日记</h3>
        <div class="col-md-5 col-xs-6 blog-grids">
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Jan</p>
                    <span>18</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">大黑短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">悠闲生活</a>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>22</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二黑短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">猫狗大战</a>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>15</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二橘短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">甜梦时光</a>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-md-5 col-xs-6 blog-grids">
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Jan</p>
                    <span>26</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二白短记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">家里酣睡</a>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>06</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">二狗日记</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">睡觉</a>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="blog-full-wthree">
                <div class="blog-left-agileits">
                    <p>Feb</p>
                    <span>12</span>
                </div>
                <div class="blog-right-agileits-w3layouts">
                    <h4>
                        <a href="#" data-toggle="modal" data-target="#myModal2">田地笔记 2018</a>
                    </h4>
                    <p>
                        <a href="#" data-toggle="modal" data-target="#myModal2">Cat Life</a>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="blog-grids mid-blog-agile">
        <img src="${pageContext.request.contextPath}/animal/images/cat2.png" class="img-responsive" alt="">
    </div>
</div>
<!-- Modal5 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="modal-info">
                    <h4>猫狗生活</h4>
                    <img src="${pageContext.request.contextPath}/animal/images/g2.jpg" alt=" " class="img-responsive"/>
                    <h5>崭新的一天，从睡觉开始</h5>
                    <p class="para-agileits-w3layouts">明天好像更棒哦！</p>
                </div>
            </div>
        </div>
    </div>
</div>
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
            <input type="text" name="pinglunObj" value="blog" hidden>
            <textarea cols="80" rows="50" placeholder="来说几句吧......" name="content" class="mytextarea"
                      id="content"></textarea>
        </form>
        <div class="btn1 btn-info pull-right" id="comment">评论</div>
    </div>
</div>

<%----------------------评论显示的位置--%>
<div class="comment-list">
</div>
</body>
<script type="text/javascript" charset="UTF-8">
    var arr = [
            <c:forEach items="${pinglunList}" var="pinglun" varStatus="s">
            {
                id:${pinglun.id},
                img: "/myImg/${pinglun.img}",
                replyName: "${pinglun.replyName}",
                beReplyName: "${pinglun.beReplyName}",
                content: "${pinglun.content}",
                time: "${pinglun.time}",
                browse: "深圳",
                // osname: "win10",
                replyBody:[],
            },
            </c:forEach>
        ]
    ;
    $(function () {
        $(".comment-list").addCommentList({data: arr, add: ""});
        $("#comment").click(function () {
            var obj = new Object();
            obj.img = "/myImg/${UserPic}";
            obj.replyName = $("#new_pinglun_replyName").val();
            obj.content = $("#content").val();
            obj.time = $("#new_pinglun_time").val();
            obj.replyBody = "";
            $(".comment-list").addCommentList({data: [], add: obj});
            $.ajax({
                url: "${pageContext.request.contextPath}/blog/pinglunAdd",
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
</html>
