<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //我要获取当前的日期
    Date date = new Date();
    //设置要获取到什么样的时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取String类型的时间
    String createdate = sdf.format(date);
    request.getSession().setAttribute("NowTime", createdate);
%>
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-7
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <%--    评论--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/comment/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/comment/css/comment.css">
    <%--    评论--%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/static/admin/assets/images/favicon.png">
    <title>宠物空间</title>
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
            </div>
            <div class="row">

                <!-- Column -->
                <div class="col-lg-4 col-xlg-3 col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <center class="m-t-30"><img
                                    src="${pageContext.request.contextPath}/animal/images/${UserPet.pic}"
                                    class="img-circle" width="150"/>
                                <input value="${UserPet.id}" hidden>
                                <h4 class="card-title m-t-10">${UserPet.petName}</h4>
                                <div class="row text-center justify-content-md-center">
                                    <c:if test="${UserPet.sex eq 1}">
                                        <div class="col-4"><p class="link"><i class="icon-people"></i> <font
                                                class="font-medium"><img src="/myImg/sex_1.png" class="img-circle"
                                                                         width="25px"/></font></p></div>
                                    </c:if>
                                    <c:if test="${UserPet.sex eq 0}">
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i
                                                class="icon-people"></i> <font class="font-medium"><img
                                                src="/myImg/sex_0.png" class="img-circle" width="25px"/></font></a>
                                        </div>
                                    </c:if>
                                    <%--                                    <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">254</font></a></div>--%>
                                    <c:if test="${UserPet.counts==null}">
                                        <div class="col-4"><a href="javascript:count()" class="link"><i
                                                class="icon-feather-thumbs-up"></i> <font class="font-medium"
                                                                                          color="red">0</font></a>
                                        </div>
                                    </c:if>
                                    <c:if test="${UserPet.counts!=null}">
                                        <div class="col-4">
                                            <a href="javascript:count()" class="link" id="pet_zan">
                                                <i style="width: 10px" class="icon-feather-thumbs-up"></i>
                                                <font class="font-medium" color="#87ceeb" size="3">${Pet_counts}</font>
                                            </a>
                                        </div>

                                    </c:if>
                                    <div id="pet_photo"></div>
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
                            <input value="${User.id}" id="user_id" hidden>

                            <div class="form-group">
                                <div class="col-md-12" style="padding-top: 20px">
                                    <div class="card-subtitle" style="color: black">名字<font color="#87ceeb"
                                                                                            style="padding-left: 250px">${UserPet.petName}</font>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12" style="padding-top: 5px">
                                    <div class="card-subtitle" style="color: black">月龄<font color="#87ceeb"
                                                                                            style="padding-left: 290px">${UserPet.age}个月</font>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12" style="padding-top: 5px">
                                    <div class="card-subtitle" style="color: black">介绍<font color="#87ceeb"
                                                                                            style="padding-left: 250px">${UserPet.remark}</font>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12" style="padding-top: 5px">
                                    <div class="card-subtitle" style="color: black">主人<font color="#87ceeb"
                                                                                            style="padding-left: 250px">${UserPet.master.username}</font>
                                        <c:if test="${UserPet.master eq null}">
                                            <c:if test="${is_apply}">
                                                <font color="red">您的申请已提交，请等待管理员审核</font>
                                            </c:if>
                                            <c:if test="${!is_apply}">
                                                <a id="shi_ming_yan_zheng"
                                                   class="btn waves-effect waves-light btn-info hidden-md-down"><font
                                                        color="white">申请领养</font></a>
                                            </c:if>
                                            <span id="you_have_no_pet" style="padding-left: 50px"></span>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                            <c:if test="${UserPet.master.id eq User.id&&User.id!=null}">
                                <div ><jsp:include page="update.jsp"></jsp:include></div>
                            </c:if>

                            <div class="commentAll">
                                <!--评论区域 begin-->
                                <div class="reviewArea clearfix">
                                        <textarea class="content comment-input" name="content" id="content"
                                                  placeholder="评论一下吧&hellip;"
                                                  onkeyup="keyUP(this)"></textarea>
                                    <a href="javascript:;" class="plBtn" id="pl_btn">评论</a>
                                </div>
                                <!--评论区域 end-->
                                <!--回复区域 begin-->
                                <div class="comment-show" id="pl_list_me">
                                    <div class="comment-show-con clearfix">
                                        <div class="comment-show-con-img pull-left"><img
                                                src="images/header-img-comment_03.png" alt=""></div>
                                        <%--           评论显示区域--%>
                                        <div class="comment-show-con-list pull-left clearfix">
                                            <div class="pl-text clearfix">
                                                <a href="#" class="comment-size-name">张三 : </a>
                                                <span class="my-pl-con">&nbsp;来啊 造作啊!</span>
                                            </div>
                                            <div class="date-dz">
                                                <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                                                <div class="date-dz-right pull-right comment-pl-block">
                                                    <a href="javascript:;" class="removeBlock">删除</a>
                                                    <a href="javascript:;"
                                                       class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                                    <span class="pull-left date-dz-line">|</span>
                                                    <a href="javascript:;" class="date-dz-z pull-left">
                                                        <i class="date-dz-z-click-red"></i>赞 (
                                                        <i class="z-num">666</i>)
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="hf-list-con"></div>
                                        </div>
                                    </div>

                                </div>
                                <!--回复区域 end-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
        $("#shi_ming_yan_zheng").click(function () {
            var id = $("#user_id").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/user/shiMing?id=" + id,
                type: "get",
                dataType: "json",
                success: function (result) {
                    if (result.code == 100) {
                        window.location.href = "${pageContext.request.contextPath}/app/apply_adopt.jsp";
                    } else if (result.code == 300) {
                        $("#you_have_no_pet").html("<font color='red' size='2'>你已有宠物，不能再进行申请</font>");
                    } else {
                        alert("请先进行实名验证");
                        window.location.href = "${pageContext.request.contextPath}/user/toShiMing";
                    }
                }
            });
            $("#submit_adopt").click(function () {
                var data = $("#adopt_form").serialize();
                alert(data);
                $.ajax({
                    url: "${pageContext.request.contextPath}/adopt/adoptPetApply",
                    type: "get",
                    data: data,
                    dataType: "json",
                    success: function (result) {
                        if (result.code == 100) {
                            alert("成功");
                        } else {
                            alert("失败");
                        }

                    }
                })
                // $("#stop_model").click();
            })
        })
    });

    //点赞数
    function count() {
        $.ajax({
            url: "${pageContext.request.contextPath}/pet/fabulous?pet_id=${UserPet.id}&user_id=${User.id}",
            type: "GET",
            dataType: "JSON",
            async: false,
            cache: false,
            success: function (result) {
                if (result.code == 100) {
                    var counts = result.extend.Pet_counts;
                    $("#pet_zan").empty();
                    var a_1 = $("<i></i>").addClass("icon-feather-thumbs-up").attr("style", "width:10px");
                    var a_2 = $("<font></font>").addClass("font-medium").attr("color", "red").attr("size", "3").append(counts);
                    $("#pet_zan").append(a_1).append(a_2);
                    <%--alert("346");--%>
                } else if (result.code == 110) {
                    alert("不能点两次赞");
                } else if (result.code == 300) {
                    alert("游客不能点赞");
                } else {
                    alert("点赞失败");
                }
            }
        })
    }
</script>
<%----------------------------------评论--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/comment/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/comment/js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t) {
        var len = $(t).val().length;
        if (len > 139) {
            $(t).val($(t).val().substring(0, 140));
        }
    }
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click', '.plBtn', function () {
        var myDate = new Date();
        //获取当前年
        var year = myDate.getFullYear();
        //获取当前月
        var month = myDate.getMonth() + 1;
        //获取当前日
        var date = myDate.getDate();
        var h = myDate.getHours();       //获取当前小时数(0-23)
        var m = myDate.getMinutes();     //获取当前分钟数(0-59)
        if (m < 10) m = '0' + m;
        var s = myDate.getSeconds();
        if (s < 10) s = '0' + s;
        var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
        //获取输入内容
        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        console.log(oSize);
        //动态创建评论模块
        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="/myImg/${User.pic}" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">${User.username} : </a> <span class="my-pl-con">&nbsp;' + oSize + '</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
        if (oSize.replace(/(^\s*)|(\s*$)/g, "") != '') {
            $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value', '').siblings('pre').find('span').text('');
        }
    });
</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click', '.pl-hf', function () {
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@' + fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
        //显示回复
        if ($(this).is('.hf-con-block')) {
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        } else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
</script>
<!--评论回复块创建-->
<script type="text/javascript">
    $('.comment-show').on('click', '.hf-pl', function () {
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year = myDate.getFullYear();
        //获取当前月
        var month = myDate.getMonth() + 1;
        //获取当前日
        var date = myDate.getDate();
        var h = myDate.getHours();       //获取当前小时数(0-23)
        var m = myDate.getMinutes();     //获取当前分钟数(0-59)
        if (m < 10) m = '0' + m;
        var s = myDate.getSeconds();
        if (s < 10) s = '0' + s;
        var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
        //获取输入内容
        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
        console.log(oHfVal)
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var oAllVal = '回复@' + oHfName;
        if (oHfVal.replace(/^ +| +$/g, '') == '' || oHfVal == oAllVal) {

        } else {
            $.getJSON("json/pl.json", function (data) {
                var oAt = '';
                var oHf = '';
                $.each(data, function (n, v) {
                    delete v.hfContent;
                    delete v.atName;
                    var arr;
                    var ohfNameArr;
                    if (oHfVal.indexOf("@") == -1) {
                        data['atName'] = '';
                        data['hfContent'] = oHfVal;
                    } else {
                        arr = oHfVal.split(':');
                        ohfNameArr = arr[0].split('@');
                        data['hfContent'] = arr[1];
                        data['atName'] = ohfNameArr[1];
                    }

                    if (data.atName == '') {
                        oAt = data.hfContent;
                    } else {
                        oAt = '回复<a href="#" class="atName">@' + data.atName + '</a> : ' + data.hfContent;
                    }
                    oHf = data.hfName;
                });

                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">' + oAt + '</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display', 'block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
            });
        }
    });
</script>
<!--删除评论块-->
<script type="text/javascript">
    $('.commentAll').on('click', '.removeBlock', function () {
        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
        if (oT.siblings('.all-pl-con').length >= 1) {
            oT.remove();
        } else {
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display', 'none')
            oT.remove();
        }
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

    })
</script>
<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click', '.date-dz-z', function () {
        var zNum = $(this).find('.z-num').html();
        if ($(this).is('.date-dz-z-click')) {
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        } else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
<%--评论的list--%>

<script>
    $(function () {
        find_pl(1)
    });

    //查评论
    function find_pl(pn) {
        $.ajax({
            url: "${pageContext.request.contextPath}/pinglun/pl_list?pn=" + pn + "&pet_id=${UserPet.id}",
            type: "Get",
            success: function (result) {
                //解析评论列表
                pl_list(result);
                build_page_nav(result);
            }
        })
    }

    //搭建评论list
    function pl_list(result) {
        $("pl_list_me").empty();//清空
        var pl_lists = result.extend.pls.list;
        $.each(pl_lists, function (index, pl) {
            var pl_0 = $("<div></div>").addClass("comment-show-con clearfix");
            var pl_1 = $("<div></div>").addClass("comment-show-con-img pull-left").append($("<img/>").attr("src", "/myImg/" + pl.img).attr("alt", ""));
            var pl_2 = $("<div></div>").addClass("comment-show-con-list pull-left clearfix");
            var pl_2_1 = $("<div></div>").addClass("pl-text clearfix");
            var pl_2_2 = $("<div></div>").addClass("date-dz");
            var pl_2_3 = $("<div></div>").addClass("hf-list-con");
            var pl_2_1_1 = $("<a></a>").addClass("omment-size-name").attr("href", "#").append(pl.replyName + "：");//姓名
            var pl_2_1_2 = $("<span></span>").addClass("my-pl-con").append(pl.content);//评论内容
            var pl_2_2_1 = $("<span></span>").addClass("date-dz-left pull-left comment-time").append(pl.time);//时间
            var pl_2_2_2 = $("<div></div>").addClass("date-dz-right pull-right comment-pl-block");
            var pl_2_2_2_1 = $("<a></a>").addClass("removeBlock").attr("href", "javascript:;").append("删除").attr("id","del_pl").attr("pl_id", pl.id);
            var pl_2_2_2_2 = $("<a></a>").addClass("date-dz-pl pl-hf hf-con-block pull-left").attr("href", "javascript:;").append("回复");
            var pl_2_2_2_3 = $("<span></span>").addClass("pull-left date-dz-line").append("|");
            var pl_2_2_2_4 = $("<a></a>").addClass("date-dz-z pull-left").attr("href", "javascript:;").append($("<i></i>").addClass("date-dz-z-click-red").attr("id", "pl_zan").attr("pl_id", pl.id)).append($("<i></i>").addClass("z-num").append(pl.zan));
            pl_0.append(pl_1).append(pl_2);
            pl_2.append(pl_2_1).append(pl_2_2).append(pl_2_3);
            pl_2_1.append(pl_2_1_1).append(pl_2_1_2);
            pl_2_2.append(pl_2_2_1).append(pl_2_2_2);
            pl_2_2_2.append(pl_2_2_2_1).append(pl_2_2_2_2).append(pl_2_2_2_3).append(pl_2_2_2_4);
            $("#pl_list_me").append(pl_0);
        })
    }

    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result) {
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        } else {
            //为元素添加点击翻页的事件
            firstPageLi.click(function () {
                to_page(1);
            });
            prePageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum - 1);
            });
        }
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            nextPageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum + 1);
            });
            lastPageLi.click(function () {
                to_page(result.extend.pageInfo.pages);
            });
        }
        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.extend.pageInfo.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function () {
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }
    //评论的添加
    $("#pl_btn").click(function () {
        var data = $("#content").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/pinglun/pl_add?img=${User.pic}&replyName=${User.username}&content=" + data + "&time=${NowTime}&pinglunObj=${UserPet.petName}&user_id=${User.id}&pet_id=${UserPet.id}",
            data: data,
            type: "get",
            dataType: "JSON",
            success: function () {
                alert("提交成功");
            }
        })
    });

    //评论点赞
    var flag = false;
    $(document).on("click","#pl_zan",function () {
        var id = $(this).attr("pl_id");
        if (flag==false){
        $.ajax({
            url: "${pageContext.request.contextPath}/pinglun/pl_zan_add?pl_id=" + id + "&user_id=${User.id}&pet_id=${UserPet.id}",
            success: function (result) {
                if (result.code == 100) {
                    flag = true;
                }else {
                }
            }
        });
        }else {
            $.ajax({
                url: "${pageContext.request.contextPath}/pinglun/pl_zan_reduce?pl_id=" + id + "&user_id=${User.id}&pet_id=${UserPet.id}",
                success: function (result) {
                    if (result.code == 100) {
                        flag = false;
                    }else {
                    }
                }
            });
        }
    });
    //评论删除
    $(document).on("click","#del_pl",function () {
        var id = $(this).attr("pl_id");
        $.ajax({
            url:"${pageContext.request.contextPath}/pinglun/del_pl?id="+id,
            success:function (result) {
                if (result.code==100){
                    alert("删除成功");
                } else {
                    alert("失败");
                }
            }
        })
    });
    //显示主人为其拍摄的生活照
    $(function () {
       $.ajax({
           url:"${pageContext.request.contextPath}/pet/pet_photo?user_id=${UserPet.master.id}&pet_id=${UserPet.id}",
           success:function (r) {
               if (r.code==100){
                   var photoes = r.extend.photo;
                   $.each(photoes,function (index,photo) {
                       var img_0 = $("<img/>").attr("src","/myImg/"+photo.photo).attr("width","200px");
                       $("#pet_photo").append(img_0);
                   })
               }
           }
       })
    })
</script>
</html>
