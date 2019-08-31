<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/23
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<html>
<head>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/metisMenu.min.js"></script>
    <!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/animal/houtai/js/dataTables.bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/sb-admin-2.js"></script>
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
<!-- 用户信息查询部分  start-->
<!-- 搭建显示页面 -->
<div id="page-wrapper">
    <div class="container">
        <!-- 标题 -->
        <br>
        <br>
        <br>
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <form class="form-inline" method="get" action="">
                    <div class="form-group">
                        <label for="findByName">用户名</label>
                        <input type="text" class="form-control" id="findByName" value="" name="adminName">
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
                <div style="float: right">
                    <button class="btn btn-primary" id="user_add_modal_btn">新增</button>
                    <button class="btn btn-danger" id="user_delete_all_btn">批量删除</button>
                </div>

            </div>
        </div>
        <!-- 显示表格数据 -->
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered table-striped" id="user_table">
                    <thead>
                    <tr>
                        <th>
                            <input type="checkbox" id="check_all"/>
                        </th>
                        <th>#</th>
                        <th>petName</th>
                        <th>age</th>
                        <th>sex</th>
                        <th>pic</th>
                        <th>state</th>
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

<%--pet添加的模态框--%>
<div class="modal fade" id="petAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">pet添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">petName</label>
                        <div class="col-sm-10">
                            <input type="text" name="petName" class="form-control" id="petName_add_input"
                                   placeholder="petName">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">age</label>
                        <div class="col-sm-10">
                            <input type="password" name="age" class="form-control" id="age_add_input"
                                   placeholder="年龄">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">sex</label>
                        <div class="col-sm-10">
                           <select class="form-control" name="sex" id="sex_add_input">
                               <option value="-1">请选择</option>
                               <option value="0">母</option>
                               <option value="1">公</option>
                           </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">pic</label>
                        <div class="col-sm-10">
                            <input type="text" name="pic" class="form-control" id="pic_add_input"
                                   placeholder=picName">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">state</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="state" id="state_add_input">
                                <option value="-1">请选择</option>
                                <option value="0">未被领养</option>
                                <option value="1">已被领养</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="pet_save_btn">保存</button>
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
                <h4 class="modal-title" id="modifyModalLabel">pet修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">PetID</label>
                        <div class="col-sm-10">
                            <input type="text" name="id" class="form-control" id="PetId_modify_input"
                                   value="${pet.id}" readonly placeholder="userid">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">pet名</label>
                        <div class="col-sm-10">
                            <input type="text" name="petName" class="form-control" id="PetName_modify_input"
                                   value="${pet.petName}" placeholder="宠物名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">年龄</label>
                        <div class="col-sm-10">
                            <input type="password" name="age" class="form-control" id="age_modify_input"
                                   value="${pet.age}" placeholder="password">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                           <select class="form-control" name="sex" id="sex_modify_input">
                               <option value="0">母</option>
                               <option value="1">公</option>
                           </select>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">照片</label>
                        <div class="col-sm-10">
                            <input type="text" name="pic" class="form-control" id="pic_modify_input" value="${user.sex}"
                                   placeholder="pic">
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">state</label>
                        <div class="col-sm-10">
                            <input type="textd" name="state" class="form-control" id="state_modify_input"
                                   value="${pet.state}" placeholder="state">
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
<script>
    var totalRecord, currentPage;
    $(function () {
        to_page(1);
    });

    function to_page(pn) {
        $.ajax({
            url: "${pageContext.request.contextPath}/pet/pets",
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
        var pets = result.extend.pageInfo.list;//list<User>users
        //index：下标 item：单个对象
        $.each(pets, function (index, pet) {
            var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
            var petIdTd = $("<td></td>").append(pet.id);
            var petNameTd = $("<td></td>").append(pet.petName);
            var petAgeTd = $("<td></td>").append(pet.age);
            var petSexTd = $("<td></td>").append(pet.sex);
            var petPicTd = $("<td></td>").append(pet.pic);
            var petStateTd = $("<td></td>").append(pet.state);



            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            //为编辑按钮添加一个自定义的属性，来表示当前员工id
            editBtn.attr("edit-id", pet.id);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            //为删除按钮添加一个自定义的属性来表示当前删除的员工id
            delBtn.attr("del-id", pet.id);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            //var delBtn =
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>").append(checkBoxTd)
                .append(petIdTd)
                .append(petNameTd)
                .append(petAgeTd)
                .append(petSexTd)
                .append(petPicTd)
                .append(petStateTd)
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
    $("#pet_add_modal_btn").click(function () {
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#petAddModal form");
        //弹出模态框
        $("#petAddModal").modal({
            backdrop: "static"
        });
    });
    //点击保存，保存员工。
    $("#pet_save_btn").click(function () {
        //2、发送ajax请求修改员工
        $.ajax({
            url: "${pageContext.request.contextPath}/pet/addPet",
            type: "POST",
            data: $("#petAddModal form").serialize(),
            success: function (result) {
                //alert(result.msg);
                if (result.code == 100) {
                    //员工修改成功；
                    //1、关闭模态框
                    $("#petAddModal").modal('hide');
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
                url: "${APP_PATH}/pet/delPet",
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
            url: "${APP_PATH}/pet/editPet?id=" + Id,
            type: "GET",
            success: function (result) {
                //填充用户信息
                console.log(result);

                $("#userId_modify_input").val(result.extend.pet.id);
                $("#username_modify_input").val(result.extend.pet.petName);
                $("#password_modify_input").val(result.extend.pet.age);
                ("#age_modify_input").val(result.extend.pet.sex);
                $("#sex_modify_input").val(result.extend.pet.pic);
                $("#tel_modify_input").val(result.extend.pet.state);
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
            url: "${pageContext.request.contextPath}/pet/updatePet",
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
                url: "${APP_PATH}/pet/batchDeletePet?ids=" + del_idstr,
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
</body>
</html>
