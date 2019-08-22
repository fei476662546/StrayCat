<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学员关系管理系统CRM</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>

    <link href="${pageContext.request.contextPath}/animal/houtai/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/animal/houtai/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.request.contextPath}/animal/houtai/css/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-group {
            max-height: 770px;
            overflow: auto;
        }

        .leftMenu {
            margin: 10px;
            margin-top: 5px;
        }

        .panel-heading {
            background-color: #337ab7;
            border-color: #2e6da4;
            font-size: 14px;
            padding-left: 20px;
            height: 36px;
            line-height: 36px;
            color: white;
            position: relative;
            cursor: pointer;
        }

        /*转成手形图标*/
        .panel-heading span {
            position: absolute;
            right: 10px;
            top: 12px;
        }

        .menu-item-left {
            padding: 2px;
            background: transparent;
            border: 1px solid transparent;
            border-radius: 6px;
        }

        .menu-item-left:hover {
            background: #C4E3F3;
            border: 1px solid #1E90FF;
        }
    </style>

</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="">流浪猫狗管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="crmclass/list.action#"><i class="fa fa-user fa-fw"></i>
                        用户：</a>
                    </li>
                    <li><a href="crmclass/list.action#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul> <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <!-- 教学管理  折叠的分组列表 -->
                <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse"
                     data-target="#collapseListGroup3" role="tab">
                    <h4 class="panel-title">
                        后台管理 <span class="fa fa-chevron-up right"></span>
                    </h4>
                </div>
                <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel"
                     aria-labelledby="collapseListGroupHeading3">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a href="${pageContext.request.contextPath}/app/userMessage.jsp">
                                <i class="fa fa-flash fa-fw"></i> 用户信息管理
                            </a>
                        </li>

                        <li class="list-group-item">
                            <a href="${pageContext.request.contextPath}/app/animal">
                                <i class="fa fa-sitemap fa-fw"></i> 评论管理
                            </a></li>
                    </ul>
                </div>

            </div>
        </div><!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 用户信息查询部分  start-->
    <!-- 搭建显示页面 -->
    <div id="page-wrapper">
        <div class="container">
            <!-- 标题 -->
            <div class="row">
                <div class="col-md-12">
                    <h1>CRUD</h1>
                </div>
            </div>
            <!-- 按钮 -->
            <div class="row">
                <div class="col-md-4 col-md-offset-8">
                    <button class="btn btn-primary" id="user_add_modal_btn">新增</button>
                    <button class="btn btn-danger" id="user_delete_all_btn">批量删除</button>
                </div>
            </div>
            <!-- 显示表格数据 -->
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover" id="user_table">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" id="check_all"/>
                            </th>
                            <th>#</th>
                            <th>user</th>
                            <th>pwd</th>
                            <th>age</th>
                            <th>sex</th>
                            <th>tel</th>
                            <th>email</th>
                            <th>pic</th>
                            <th>address</th>
                            <th>message</th>
                            <th>atate</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- 显示分页信息 -->
            <div class="row">
                <!--分页文字信息  -->
                <div class="col-md-6" id="page_info_area"></div>
                <!-- 分页条信息 -->
                <div class="col-md-6" id="page_nav_area">

                </div>
            </div>

        </div>
    </div>
    <script>
        var totalRecord, currentPage;
        $(function () {
            to_page(1);
        });

        function to_page(pn) {
            $.ajax({
                url: "${pageContext.request.contextPath}/admit/users",
                data: "pn=" + pn,
                type: "GET",
                success: function (result) {
                    console.log(result);
                    //1、解析并显示员工数据
                    build_users_table(result);
                    //2、解析并显示分页信息
                    build_page_info(result);
                    //3、解析显示分页条数据
                    build_page_nav(result);

                }
            });
        }

        function build_users_table(result) {
            //清空table表格
            $("#user_table tbody").empty();
            var users = result.extend.pageInfo.list;//list<User>users
            //index：下标 item：单个对象
            $.each(users, function (index, user) {
                var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
                var userIdTd = $("<td></td>").append(user.id);
                var usernameTd = $("<td></td>").append(user.username);
                var passwordTd = $("<td></td>").append(user.password);
                var ageTd = $("<td></td>").append(user.age);
                var sexTd = $("<td></td>").append(user.sex);
                var telTd = $("<td></td>").append(user.tel);
                var emailTd = $("<td></td>").append(user.email);
                var picTd = $("<td></td>").append(user.pic);
                var addressTd = $("<td></td>").append(user.address);
                var messageTd = $("<td></td>").append(user.message);
                var stateTd = $("<td></td>").append(user.state);


                var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                    .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
                //为编辑按钮添加一个自定义的属性，来表示当前员工id
                editBtn.attr("edit-id", user.id);
                var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                    .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
                //为删除按钮添加一个自定义的属性来表示当前删除的员工id
                delBtn.attr("del-id", user.id);
                var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
                //var delBtn =
                //append方法执行完成以后还是返回原来的元素
                $("<tr></tr>").append(checkBoxTd)
                    .append(userIdTd)
                    .append(usernameTd)
                    .append(passwordTd)
                    .append(ageTd)
                    .append(sexTd)
                    .append(telTd)
                    .append(emailTd)
                    .append(picTd)
                    .append(addressTd)
                    .append(messageTd)
                    .append(stateTd)
                    .append(btnTd)
                    .appendTo("#user_table tbody");
            });
        }


        //解析显示分页信息
        function build_page_info(result) {
            $("#page_info_area").empty();
            $("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
                result.extend.pageInfo.pages + "页,总" +
                result.extend.pageInfo.total + "条记录");
            totalRecord = result.extend.pageInfo.total;//最后的数据
            currentPage = result.extend.pageInfo.pageNum;//当前页
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

        //清空表单样式及内容
        function reset_form(ele) {
            $(ele)[0].reset();
            //清空表单样式
            $(ele).find("*").removeClass("has-error has-success");
            $(ele).find(".help-block").text("");
        }

        //点击新增按钮弹出模态框。
        $("#user_add_modal_btn").click(function () {
            //清除表单数据（表单完整重置（表单的数据，表单的样式））
            reset_form("#userAddModal form");
            //弹出模态框
            $("#userAddModal").modal({
                backdrop: "static"
            });
        });
        //点击保存，保存员工。
        $("#user_save_btn").click(function () {
            //2、发送ajax请求修改员工
            $.ajax({
                url: "${pageContext.request.contextPath}/addUser",
                type: "POST",
                data: $("#userAddModal form").serialize(),
                success: function (result) {
                    //alert(result.msg);
                    if (result.code == 100) {
                        //员工修改成功；
                        //1、关闭模态框
                        $("#userAddModal").modal('hide');
                        //请求最后的数据，就会显示新增的数据
                        to_page(totalRecord);
                    } else {
                        //显示失败信息
                        console.log(result);
                    }
                }
            });
        });

        //单个删除
        $(document).on("click", ".delete_btn", function () {
            //1、弹出是否确认删除对话框
            var userName = $(this).parents("tr").find("td:eq(2)").text();
            var userId = $(this).attr("del-id");

            if (confirm("确认删除【" + userName + "】吗？")) {
                //确认，发送ajax请求删除即可
                $.ajax({
                    url: "${APP_PATH}/delete",
                    type: "POST",
                    data: {"id": userId},
                    success: function (result) {
                        //alert(result.msg);
                        if (result.code == 100) {

                            //回到本页
                            to_page(currentPage);
                        } else {
                            //显示失败信息
                            console.log(result);
                        }
                    }
                });
            }
        });

        //点击编辑按钮弹出模态框。
        $(document).on("click", ".edit_btn", function () {
            //1、发送ajax,根据id获取用户信息
            //清除表单数据（表单完整重置（表单的数据，表单的样式））
            reset_form("#userModifyModal form");
            var Id = $(this).attr("edit-id");
            $.ajax({
                url: "${APP_PATH}/edit?id=" + Id,
                type: "GET",
                success: function (result) {
                    //填充用户信息
                    console.log(result);

                    $("#userId_modify_input").val(result.extend.user.id);
                    $("#username_modify_input").val(result.extend.user.name);
                    $("#password_modify_input").val(result.extend.user.pwd);
                    ("#age_modify_input").val(result.extend.user.age);
                    $("#sex_modify_input").val(result.extend.user.sex);
                    $("#tel_modify_input").val(result.extend.user.tel);
                    ("#email_modify_input").val(result.extend.user.email);
                    $("#pic_modify_input").val(result.extend.user.pic);
                    $("#address_modify_input").val(result.extend.user.address);
                    ("#message_modify_input").val(result.extend.user.message);
                    $("#state_modify_input").val(result.extend.user.state);
                }
            });
            //2、弹出模态框
            $("#userModifyModal").modal({
                backdrop: "static"
            });

        });

        //点击新增按钮弹出模态框。
        $("#user_modify_btn").click(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/admit/update",
                type: "POST",
                data: $("#userModifyModal form").serialize(),
                success: function (result) {
                    //alert(result.msg);
                    if (result.code == 100) {
                        //员工保存成功；
                        //1、关闭模态框
                        $("#userModifyModal").modal('hide');
                        //2、显示刚才保存的数据
                        console.log("获取当前页：" + currentPage);
                        to_page(currentPage);
                    } else {
                        //显示失败信息
                        console.log(result);
                    }
                }
            });

        });
        //批量删除 user_delete_all_btn
        //点击全部删除，就批量删除
        $("#user_delete_all_btn").click(function () {
            //
            var userNames = "";
            var del_idstr = "";
            $.each($(".check_item:checked"), function () {
                //this
                userNames += $(this).parents("tr").find("td:eq(2)").text() + ",";
                //组装员工id字符串
                del_idstr += $(this).parents("tr").find("td:eq(1)").text() + "-";
            });
            //去除empNames多余的,
            userNames = userNames.substring(0, userNames.length - 1);
            //去除删除的id多余的-
            del_idstr = del_idstr.substring(0, del_idstr.length - 1);
            //console.log("传递后台的ids:"+del_idstr);
            if (confirm("确认删除【" + userNames + "】吗？")) {
                //发送ajax请求删除
                $.ajax({
                    url: "${APP_PATH}/batchDelete?ids=" + del_idstr,
                    type: "POST",
                    success: function (result) {
                        alert(result.msg);
                        //回到当前页面
                        to_page(currentPage);
                    }
                });
            }
        });

    </script>
    <!-- 班级列表查询部分  end-->
</div>

<!-- 用户添加的模态框 -->
<div class="modal fade" id="userAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">用户添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">username</label>
                        <div class="col-sm-10">
                            <input type="text" name="username" class="form-control" id="username_add_input"
                                   placeholder="username">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">password</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" class="form-control" id="password_add_input"
                                   placeholder="****">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">age</label>
                        <div class="col-sm-10">
                            <input type="text" name="age" class="form-control" id="age_add_input" placeholder="****">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">sex</label>
                        <div class="col-sm-10">
                            <input type="text" name="sex" class="form-control" id="sex_add_input"
                                   placeholder="username">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">tel</label>
                        <div class="col-sm-10">
                            <input type="text" name="tel" class="form-control" id="tel_add_input" placeholder="****">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" class="form-control" id="email_add_input"
                                   placeholder="****">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">pic</label>
                        <div class="col-sm-10">
                            <input type="text" name="pic" class="form-control" id="pic_add_input"
                                   placeholder="username">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">address</label>
                        <div class="col-sm-10">
                            <input type="text" name="address" class="form-control" id="address_add_input"
                                   placeholder="****">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">message</label>
                        <div class="col-sm-10">
                            <input type="text" name="message" class="form-control" id="message_add_input"
                                   placeholder="****">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">state</label>
                        <div class="col-sm-10">
                            <input type="text" name="state" class="form-control" id="state_add_input"
                                   placeholder="username">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="user_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!--用户修改的模态框-->
<!-- 用户编辑的模态框 -->
<div class="modal fade" id="userModifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="modifyModalLabel">用户修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">userID</label>
                        <div class="col-sm-10">
                            <input type="text" name="id" class="form-control" id="userId_modify_input"
                                   value="${user.id}" readonly placeholder="userid">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">username</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="username_modify_input"
                                   value="${user.username}" placeholder="username">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">password</label>
                        <div class="col-sm-10">
                            <input type="password" name="pwd" class="form-control" id="password_modify_input"
                                   value="${user.password}" placeholder="password">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">age</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="age_modify_input"
                                   value="${user.age}" placeholder="age">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">sex</label>
                        <div class="col-sm-10">
                            <input type="text" name="sex" class="form-control" id="sex_modify_input" value="${user.sex}"
                                   placeholder="sex">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">tel</label>
                        <div class="col-sm-10">
                            <input type="text" name="tel" class="form-control" id="tel_modify_input" value="${user.tel}"
                                   placeholder="tel">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" class="form-control" id="email_modify_input"
                                   value="${user.email}" placeholder="email">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">pic</label>
                        <div class="col-sm-10">
                            <input type="text" name="pic" class="form-control" id="pic_modify_input" value="${user.pic}"
                                   placeholder="pic">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">address</label>
                        <div class="col-sm-10">
                            <input type="text" name="address" class="form-control" id="address_modify_input"
                                   value="${user.address}" placeholder="address">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">message</label>
                        <div class="col-sm-10">
                            <input type="text" name="message" class="form-control" id="message_modify_input"
                                   value="${user.message}" placeholder="message">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">state</label>
                        <div class="col-sm-10">
                            <input type="textd" name="state" class="form-control" id="state_modify_input"
                                   value="${user.state}" placeholder="state">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="user_modify_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/animal/houtai/js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/animal/houtai/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/animal/houtai/js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="${pageContext.request.contextPath}/animal/houtai/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/animal/houtai/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/animal/houtai/js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
    $(function () {
        $(".panel-heading").click(function (e) {
            /*切换折叠指示图标*/
            $(this).find("span").toggleClass("fa-chevron-down");
            $(this).find("span").toggleClass("fa-chevron-up");
        });
    });
</script>
</body>
</html>