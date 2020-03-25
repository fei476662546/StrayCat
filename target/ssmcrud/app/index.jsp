
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-7
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="ui_1.jsp"></jsp:include>
</head>
<body>
    <!-- contents -->
    <div class="main_content">
        <div class="main_content_inner">
            <!-- 轮播图 -->
            <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1"
                 uk-slideshow="animation: push ;min-height: 200; max-height: 350 ;autoplay: t rue">

                <ul class="uk-slideshow-items rounded">
                    <li>
                        <div class="uk-position-cover" uk-slideshow-parallax="scale: 1.2,1.2,1">
                            <img src="${pageContext.request.contextPath}/animal/images/1.jpg" alt="" uk-cover>
                        </div>
                        <div class="uk-position-cover"
                             uk-slideshow-parallax="opacity: 0,0,0.2; backgroundColor: #000,#000"></div>
                        <div class="uk-position-bottom-left bg-gradient-4 uk-width-1-1 p-4">
                            <div uk-slideshow-parallax="scale: 1,1,0.8">
                                <h1 uk-slideshow-parallax="x: 200,0,0" class="uk-heading-small"> 每一条生命都应该被呵护 </h1>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="uk-position-cover" uk-slideshow-parallax="scale: 1.2,1.2,1">
                            <img src="${pageContext.request.contextPath}/animal/images/4.jpg" alt="" uk-cover>
                        </div>
                        <div class="uk-position-cover"
                             uk-slideshow-parallax="opacity: 0,0,0.2; backgroundColor: #000,#000"></div>
                        <div class="uk-position-bottom uk-position-medium uk-transition-scale-down">
                            <h1 uk-slideshow-parallax="x: 200,0,0" class="uk-heading-small">主人快带我回家吧</h1>
                        </div>
                    </li>
                    <li>
                        <div class="uk-position-cover" uk-slideshow-parallax="scale: 1.2,1.2,1">
                            <img src="${pageContext.request.contextPath}/animal/images/3.jpg" alt="" uk-cover>
                        </div>
                        <div class="uk-position-cover"
                             uk-slideshow-parallax="opacity: 0,0,0.2; backgroundColor: #000,#000"></div>
                        <div class="uk-position-bottom uk-position-medium uk-transition-scale-down">
                            <h1 uk-slideshow-parallax="x: 200,0,0" class="uk-heading-small">猫和狗是我们的朋友</h1>
                        </div>
                    </li>
                </ul>
                <%--                <a class="uk-position-center-left-out uk-position-small uk-hidden-hover slidenav-prev" href="#"--%>
                <%--                   uk-slideshow-item="previous"></a>--%>
                <%--                <a class="uk-position-center-right-out uk-position-small uk-hidden-hover slidenav-next" href="#"--%>
                <%--                   uk-slideshow-item="next"></a>--%>
            </div>

            <!-- 所有已领养的动物-->
            <div class="video-grid-slider mt-4" uk-slider="finite: true">
                <!-- 上部悬浮栏-->

                <div class="grid-slider-header">
                    <div>
                        <h3> 已领养的动物 </h3>
                        <p>抓紧时间，时不再来</p>
                        <div class="panel panel-default">
                            <!-- 搜索部分 -->
                            <div class="panel-body">
                                <form class="form-inline" method="get">
                                    <div class="form-group">
                                        <label for="find_master_string">搜索已领养</label>
                                        <input type="text" class="form-control" id="find_master_string" placeholder="宠物名,品种，介绍">
                                        <button type="button" id="find_master_btn" class="btn btn-primary">查询</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="grid-slider-header-link">

                        <div class="btn-arrow-slider">
                            <a href="#" class="btn-arrow-slides" uk-slider-item="previous">
                                <span class="arrow-left"></span>
                            </a>
                            <a href="#" class="btn-arrow-slides" uk-slider-item="next">
                                <span class="arrow-right"></span>
                            </a>
                        </div>

                    </div>
                </div>

                <ul class="uk-slider-items uk-child-width-1-4@m uk-child-width-1-3@s uk-grid mb-3" id="ul_page">

                </ul>
                <div class="row">
                    <!-- 分页条信息 -->
                    <div class="col-md-6" id="page_nav_area"></div>
                </div>
            </div>
            <hr class="m-0">
            <!-- 所有未领养的动物-->
            <div class="section-small">

                <div uk-slider="finite: true">

                    <div class="grid-slider-header">
                        <div>
                            <h3> 未领养的动物 </h3>
                            <div class="panel panel-default">
                                <!-- 搜索部分 -->
                                <div class="panel-body">
                                    <form class="form-inline" method="get">
                                        <div class="form-group">
                                            <label for="find_no_master">搜索未领养</label>
                                            <input type="text" class="form-control" id="find_no_master" placeholder="宠物名,品种，介绍">
                                            <button type="button" id="find_no_master_btn" class="btn btn-primary">查询</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="uk-slider-items uk-child-width-1-4@m uk-child-width-1-3@s uk-grid mb-3" id="ul_page_1">

                    </ul>
                    <div class="row">
                        <!-- 分页条信息 -->
                        <div class="col-md-6" id="page_nav_area_1"></div>
                    </div>
                </div>
            </div>
            <hr class="m-0">
            <!-- 所有猫-->
            <div class="section-small">

                <div uk-slider="finite: true">

                    <div class="grid-slider-header">
                        <div>
                            <h3> 所有猫 </h3>
                            <div class="panel panel-default">
                                <!-- 搜索部分 -->
                                <div class="panel-body">
                                    <form class="form-inline" method="get">
                                        <div class="form-group">
                                            <label for="find_pet_cats">搜索猫</label>
                                            <input type="text" class="form-control" id="find_pet_cats" placeholder="宠物名,品种，介绍">
                                            <button type="button" id="find_pet_cats_btn" class="btn btn-primary">查询</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="uk-slider-items uk-child-width-1-4@m uk-child-width-1-3@s uk-grid mb-3" id="ul_page_cat">

                    </ul>
                    <div class="row">
                        <!-- 分页条信息 -->
                        <div class="col-md-6" id="page_nav_area_cat"></div>
                    </div>
                </div>
            </div>
            <hr class="m-0">
            <!-- 所有狗-->
            <div class="section-small">

                <div uk-slider="finite: true">

                    <div class="grid-slider-header">
                        <div>
                            <h3> 所有狗 </h3>
                            <div class="panel panel-default">
                                <!-- 搜索部分 -->
                                <div class="panel-body">
                                    <form class="form-inline" method="get">
                                        <div class="form-group">
                                            <label for="find_pet_dogs">搜索狗</label>
                                            <input type="text" class="form-control" id="find_pet_dogs" placeholder="宠物名,品种，介绍">
                                            <button type="button" id="find_pet_dogs_btn" class="btn btn-primary">查询</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="uk-slider-items uk-child-width-1-4@m uk-child-width-1-3@s uk-grid mb-3" id="ul_page_dog">

                    </ul>
                    <div class="row">
                        <!-- 分页条信息 -->
                        <div class="col-md-6" id="page_nav_area_dog"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</body>
<script>
    //总的数据 当前的页面
    var totalRecord,currentPage;
    $(function(){
        to_page(1);
        to_page_1(1);
        to_page_cat(1);
        to_page_dog(1);
    });
    //查询有主人的动物
    function to_page(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/pets",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //1、解析并显示员工数据
                build_pets_table(result);
                //3、解析显示分页条数据
                build_page_nav(result);

            }
        });
    }
    //动态搭建样式
    function build_pets_table(result){
        //清空table表格
        $("#ul_page").empty();
        //index：下标 user：单个对象
        var pets=result.extend.pageInfo.list;//调用return Msg.success().add("pageInfo", page);
        $.each(pets,function(index,pet){
            var li_0 = $("<li></li>");
            var a_1 = $("<a></a>").addClass("video_post").attr("href","${pageContext.request.contextPath}/pet/petMessage?user_id=${User.id}&pet_id="+pet.id);
            var div_2_1 = $("<div></div>").addClass("video-post-thumbnail");
            var div_2_2 = $("<div></div>").addClass("video-post-content");
            var span_2_1_1 = $("<span></span>").addClass("video-post-count").append("1.4M");//还未调用值
            var span_2_1_2 = $("<span></span>").addClass("video-post-time").append("1.4M");//还未调用值
            var span_2_1_3 = $("<span></span>").addClass("btn-option");
            var div_2_1_4 = $("<div></div>").addClass("dropdown-option-nav").attr("uk-dropdown","pos: bottom-right ;mode : hover ;animation: uk-animation-slide-bottom-small");
            var img_2_1_5 = $("<img/>").attr("src","${pageContext.request.contextPath}/animal/images/"+pet.pic).attr("alt","");
            var h3_2_2_1 = $("<h3></h3>").append(pet.remark);
            var img_2_2_2 = $("<img/>").attr("src","${pageContext.request.contextPath}/static/index/assets/images/avatars/avatar-3.jpg").attr("alt","");
            var span_2_2_3 = $("<span></span>").addClass("video-post-user").append(pet.petName);//还未调用值
            var span_2_2_4 = $("<span></span>").addClass("video-post-views").append(1);//还未调用值
            var span_2_2_5 = $("<span></span>").addClass("video-post-date").append(2);//还未调用值
            var i_2_1_3_1 = $("<i></i>").addClass("icon-feather-more-vertical");
            var ul_2_1_4_1 = $("<ul></ul>");
            var li_2_1_4_1_1 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-history")).append("第一行"));
            var li_2_1_4_1_2 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-bookmark")).append("第二行"));
            var li_2_1_4_1_3 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-share-alt")).append("第三行"));
            li_0.append(a_1);
            a_1.append(div_2_1).append(div_2_2);
            div_2_1.append(span_2_1_1).append(span_2_1_2).append(span_2_1_3).append(div_2_1_4).append(img_2_1_5);
            div_2_2.append(h3_2_2_1).append(img_2_2_2).append(span_2_2_3).append(span_2_2_4).append(span_2_2_5);
            span_2_1_3.append(i_2_1_3_1);
            div_2_1_4.append(ul_2_1_4_1);
            ul_2_1_4_1.append(li_2_1_4_1_1).append(li_2_1_4_1_2).append(li_2_1_4_1_3);
            li_0.appendTo("#ul_page");
        });
    }
    //模糊查询有主人的动物
    $("#find_master_btn").click(function () {
        var PetMessage = $("#find_master_string").val();
        var pn = 1;
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/like_pet_have_master",
            data: {"pn": pn, "petName": PetMessage},
            type:"GET",
            success: function (result) {
                //1、解析并显示员工数据
                build_pets_table(result);
                //2、解析并显示分页信息
                //build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav(result);
            }
        });
    })

    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result){
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum -1);
            });
        }
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page(result.extend.pageInfo.pages);
            });
        }
        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
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
    //查询没有主人的动物
    function to_page_1(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/no_master_pets",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //1、解析并显示员工数据
                build_no_master_pets_table(result);
                //3、解析显示分页条数据
                build_page_nav_1(result);

            }
        });
    }
    //动态搭建样式
    function build_no_master_pets_table(result){
        //清空table表格
        $("#ul_page_1").empty();
        //index：下标 user：单个对象
        var pets=result.extend.pageInfo.list;//调用return Msg.success().add("pageInfo", page);
        $.each(pets,function(index,pet){
            var li_0 = $("<li></li>");
            var a_1 = $("<a></a>").addClass("video_post").attr("href","${pageContext.request.contextPath}/pet/petMessage?user_id=${User.id}&pet_id="+pet.id);
            var div_2_1 = $("<div></div>").addClass("video-post-thumbnail");
            var div_2_2 = $("<div></div>").addClass("video-post-content");
            var span_2_1_1 = $("<span></span>").addClass("video-post-count").append("1.4M");//还未调用值
            var span_2_1_2 = $("<span></span>").addClass("video-post-time").append("1.4M");//还未调用值
            var span_2_1_3 = $("<span></span>").addClass("btn-option");
            var div_2_1_4 = $("<div></div>").addClass("dropdown-option-nav").attr("uk-dropdown","pos: bottom-right ;mode : hover ;animation: uk-animation-slide-bottom-small");
            var img_2_1_5 = $("<img/>").attr("src","${pageContext.request.contextPath}/animal/images/"+pet.pic).attr("alt","");
            var h3_2_2_1 = $("<h3></h3>").append(pet.remark);
            var img_2_2_2 = $("<img/>").attr("src","${pageContext.request.contextPath}/static/index/assets/images/avatars/avatar-3.jpg").attr("alt","");
            var span_2_2_3 = $("<span></span>").addClass("video-post-user").append(pet.petName);//还未调用值
            var span_2_2_4 = $("<span></span>").addClass("video-post-views").append(1);//还未调用值
            var span_2_2_5 = $("<span></span>").addClass("video-post-date").append(2);//还未调用值
            var i_2_1_3_1 = $("<i></i>").addClass("icon-feather-more-vertical");
            var ul_2_1_4_1 = $("<ul></ul>");
            var li_2_1_4_1_1 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-history")).append("第一行"));
            var li_2_1_4_1_2 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-bookmark")).append("第二行"));
            var li_2_1_4_1_3 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-share-alt")).append("第三行"));
            li_0.append(a_1);
            a_1.append(div_2_1).append(div_2_2);
            div_2_1.append(span_2_1_1).append(span_2_1_2).append(span_2_1_3).append(div_2_1_4).append(img_2_1_5);
            div_2_2.append(h3_2_2_1).append(img_2_2_2).append(span_2_2_3).append(span_2_2_4).append(span_2_2_5);
            span_2_1_3.append(i_2_1_3_1);
            div_2_1_4.append(ul_2_1_4_1);
            ul_2_1_4_1.append(li_2_1_4_1_1).append(li_2_1_4_1_2).append(li_2_1_4_1_3);
            li_0.appendTo("#ul_page_1");
        });
    }
    //模糊查询无主人的动物
    $("#find_no_master_btn").click(function () {
        var PetMessage = $("#find_no_master").val();
        var pn = 1;
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/like_pet_no_master",
            data: {"pn": pn, "petName": PetMessage},
            type:"GET",
            success: function (result) {
                //1、解析并显示员工数据
                build_no_master_pets_table(result);
                //2、解析并显示分页信息
                //build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav_1(result);
            }
        });
    })
    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav_1(result){
        //page_nav_area
        $("#page_nav_area_1").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page_1(1);
            });
            prePageLi.click(function(){
                to_page_1(result.extend._1.pageNum -1);
            });
        }
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page_1(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page_1(result.extend.pageInfo.pages);
            });
        }
        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page_1(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area_1");
    }
    //查询所有猫
    function to_page_cat(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/cats",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //1、解析并显示员工数据
                build_cat_table(result);
                //3、解析显示分页条数据
                build_page_nav_cat(result);

            }
        });
    }
    //动态搭建样式
    function build_cat_table(result){
        //清空table表格
        $("#ul_page_cat").empty();
        //index：下标 user：单个对象
        var pets=result.extend.pageInfo.list;//调用return Msg.success().add("pageInfo", page);
        $.each(pets,function(index,pet){
            var li_0 = $("<li></li>");
            var a_1 = $("<a></a>").addClass("video_post").attr("href","${pageContext.request.contextPath}/pet/petMessage?user_id=${User.id}&pet_id="+pet.id);
            var div_2_1 = $("<div></div>").addClass("video-post-thumbnail");
            var div_2_2 = $("<div></div>").addClass("video-post-content");
            var span_2_1_1 = $("<span></span>").addClass("video-post-count").append("1.4M");//还未调用值
            var span_2_1_2 = $("<span></span>").addClass("video-post-time").append("1.4M");//还未调用值
            var span_2_1_3 = $("<span></span>").addClass("btn-option");
            var div_2_1_4 = $("<div></div>").addClass("dropdown-option-nav").attr("uk-dropdown","pos: bottom-right ;mode : hover ;animation: uk-animation-slide-bottom-small");
            var img_2_1_5 = $("<img/>").attr("src","${pageContext.request.contextPath}/animal/images/"+pet.pic).attr("alt","");
            var h3_2_2_1 = $("<h3></h3>").append(pet.remark);
            var img_2_2_2 = $("<img/>").attr("src","${pageContext.request.contextPath}/static/index/assets/images/avatars/avatar-3.jpg").attr("alt","");
            var span_2_2_3 = $("<span></span>").addClass("video-post-user").append(pet.petName);//还未调用值
            var span_2_2_4 = $("<span></span>").addClass("video-post-views").append(1);//还未调用值
            var span_2_2_5 = $("<span></span>").addClass("video-post-date").append(2);//还未调用值
            var i_2_1_3_1 = $("<i></i>").addClass("icon-feather-more-vertical");
            var ul_2_1_4_1 = $("<ul></ul>");
            var li_2_1_4_1_1 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-history")).append("第一行"));
            var li_2_1_4_1_2 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-bookmark")).append("第二行"));
            var li_2_1_4_1_3 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-share-alt")).append("第三行"));
            li_0.append(a_1);
            a_1.append(div_2_1).append(div_2_2);
            div_2_1.append(span_2_1_1).append(span_2_1_2).append(span_2_1_3).append(div_2_1_4).append(img_2_1_5);
            div_2_2.append(h3_2_2_1).append(img_2_2_2).append(span_2_2_3).append(span_2_2_4).append(span_2_2_5);
            span_2_1_3.append(i_2_1_3_1);
            div_2_1_4.append(ul_2_1_4_1);
            ul_2_1_4_1.append(li_2_1_4_1_1).append(li_2_1_4_1_2).append(li_2_1_4_1_3);
            li_0.appendTo("#ul_page_cat");
        });
    }
    //模糊查询所有猫
    $("#find_pet_cats_btn").click(function () {
        var PetMessage = $("#find_pet_cats").val();
        var pn = 1;
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/like_pet_cats",
            data: {"pn": pn, "petName": PetMessage},
            type:"GET",
            success: function (result) {
                //1、解析并显示员工数据
                build_cat_table(result);
                //2、解析并显示分页信息
                //build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav_cat(result);
            }
        });
    })
    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav_cat(result){
        //page_nav_area
        $("#page_nav_area_cat").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page_cat(1);
            });
            prePageLi.click(function(){
                to_page_cat(result.extend._1.pageNum -1);
            });
        }
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page_cat(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page_cat(result.extend.pageInfo.pages);
            });
        }
        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page_cat(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area_cat");
    }
    //查询所有狗
    function to_page_dog(pn){
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/dogs",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //1、解析并显示员工数据
                build_dog_table(result);
                //3、解析显示分页条数据
                build_page_nav_dog(result);

            }
        });
    }
    //动态搭建样式
    function build_dog_table(result){
        //清空table表格
        $("#ul_page_dog").empty();
        //index：下标 user：单个对象
        var pets=result.extend.pageInfo.list;//调用return Msg.success().add("pageInfo", page);
        $.each(pets,function(index,pet){
            var li_0 = $("<li></li>");
            var a_1 = $("<a></a>").addClass("video_post").attr("href","${pageContext.request.contextPath}/pet/petMessage?user_id=${User.id}&pet_id="+pet.id);
            var div_2_1 = $("<div></div>").addClass("video-post-thumbnail");
            var div_2_2 = $("<div></div>").addClass("video-post-content");
            var span_2_1_1 = $("<span></span>").addClass("video-post-count").append("1.4M");//还未调用值
            var span_2_1_2 = $("<span></span>").addClass("video-post-time").append("1.4M");//还未调用值
            var span_2_1_3 = $("<span></span>").addClass("btn-option");
            var div_2_1_4 = $("<div></div>").addClass("dropdown-option-nav").attr("uk-dropdown","pos: bottom-right ;mode : hover ;animation: uk-animation-slide-bottom-small");
            var img_2_1_5 = $("<img/>").attr("src","${pageContext.request.contextPath}/animal/images/"+pet.pic).attr("alt","");
            var h3_2_2_1 = $("<h3></h3>").append(pet.remark);
            var img_2_2_2 = $("<img/>").attr("src","${pageContext.request.contextPath}/static/index/assets/images/avatars/avatar-3.jpg").attr("alt","");
            var span_2_2_3 = $("<span></span>").addClass("video-post-user").append(pet.petName);//还未调用值
            var span_2_2_4 = $("<span></span>").addClass("video-post-views").append(1);//还未调用值
            var span_2_2_5 = $("<span></span>").addClass("video-post-date").append(2);//还未调用值
            var i_2_1_3_1 = $("<i></i>").addClass("icon-feather-more-vertical");
            var ul_2_1_4_1 = $("<ul></ul>");
            var li_2_1_4_1_1 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-history")).append("第一行"));
            var li_2_1_4_1_2 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-bookmark")).append("第二行"));
            var li_2_1_4_1_3 = $("<li></li>").append($("<span></span>").append($("<i></i>").addClass("uil-share-alt")).append("第三行"));
            li_0.append(a_1);
            a_1.append(div_2_1).append(div_2_2);
            div_2_1.append(span_2_1_1).append(span_2_1_2).append(span_2_1_3).append(div_2_1_4).append(img_2_1_5);
            div_2_2.append(h3_2_2_1).append(img_2_2_2).append(span_2_2_3).append(span_2_2_4).append(span_2_2_5);
            span_2_1_3.append(i_2_1_3_1);
            div_2_1_4.append(ul_2_1_4_1);
            ul_2_1_4_1.append(li_2_1_4_1_1).append(li_2_1_4_1_2).append(li_2_1_4_1_3);
            li_0.appendTo("#ul_page_dog");
        });
    }
    //模糊查询所有狗
    $("#find_pet_dogs_btn").click(function () {
        var PetMessage = $("#find_pet_dogs").val();
        var pn = 1;
        $.ajax({
            url:"${pageContext.request.contextPath}/pet/like_pet_dogs",
            data: {"pn": pn, "petName": PetMessage},
            type:"GET",
            success: function (result) {
                //1、解析并显示员工数据
                build_dog_table(result);
                //2、解析并显示分页信息
                //build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav_dog(result);
            }
        });
    })
    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav_dog(result){
        //page_nav_area
        $("#page_nav_area_dog").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page_dog(1);
            });
            prePageLi.click(function(){
                to_page_dog(result.extend._1.pageNum -1);
            });
        }
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page_dog(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page_dog(result.extend.pageInfo.pages);
            });
        }
        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page_dog(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area_dog");
    }
</script>
</html>
