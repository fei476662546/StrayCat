<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

<html>
<head>
    <!-- jQuery -->
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/animal/JQuery/jquery.min.js"></script>
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
    <title>用户信息</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>

        /*转成手形图标*/
        .panel-heading span {
            position: absolute;
            right: 10px;
            top: 12px;
        }

    </style>
</head>
<body>
<div id="wrapper">
    <jsp:include page="admitHome.jsp"></jsp:include>
    <div id="page-wrapper">
        <!-- 用户信息查询部分  start-->
        <!-- 搭建显示页面 -->
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
                            <input type="text" class="form-control" id="findByName" value="" name="petName">
                        </div>
                        <button type="button" class="btn btn-primary" id="findPet_btn">查询</button>
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
                            <th>申请者ID</th>
                            <th>姓名</th>
                            <th>领养动物ID</th>
                            <th>电话号码</th>
                            <th>地址</th>
                            <th>申请理由</th>
                            <th>申请时间</th>
                            <th>审核结果</th>
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
                <div class="col-md-6" id="page_info_area">

                </div>
                <!-- 分页条信息 -->
                <div class="col-md-6" id="page_nav_area">

                </div>
            </div>
        </div>
    </div>

    <!-- 班级列表查询部分  end-->
</div>

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

<script>
    var totalRecord, currentPage;
    $(function () {
        to_page(1);
    });

    function to_page(pn) {
        $.ajax({
            url: "${pageContext.request.contextPath}/adopt/all_adopt",
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
            var usernameTd = $("<td></td>").append(user.user_id);
            var passwordTd = $("<td></td>").append(user.relName);
            var petTd = $("<td></td>").append(user.pet_id);
            var ageTd = $("<td></td>").append(user.tel);
            var sexTd = $("<td></td>").append(user.address);
            var telTd = $("<td></td>").append(user.reason);
            var stateTd = $("<td></td>").append(user.time);
            var resultTd = $("<td></td>").append(user.apply);
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn").attr("id","agree_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("同意");
            //为编辑按钮添加一个自定义的属性，来表示当前员工id
            editBtn.attr("edit-id", user.id);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn").attr("id","refuse_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("拒绝");
            //为删除按钮添加一个自定义的属性来表示当前删除的员工id
            delBtn.attr("del-id", user.id);
            var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            //var delBtn =
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>").append(checkBoxTd)
                .append(userIdTd)
                .append(usernameTd)
                .append(passwordTd)
                .append(petTd)
                .append(ageTd)
                .append(sexTd)
                .append(telTd)
                .append(stateTd)
                .append(resultTd)
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




    //拒绝领养申请
    $(document).on("click", ".delete_btn", function () {
        //1、弹出是否确认删除对话框
        var userName = $(this).parents("tr").find("td:eq(3)").text();
        var id = $(this).attr("del-id");

        if (confirm("确认拒绝【" + userName + "】的领养申请吗？")) {
            //确认，发送ajax请求删除即可
            $.ajax({
                url: "${APP_PATH}/admin/refuse?id="+id,
                type: "get",
                success: function (result) {
                    // alert(result.msg);
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
    $(document).on("click", ".edit_btn", function () {
        //同意领养申请
            var id = $(this).attr("edit-id");
            var userName = $(this).parents("tr").find("td:eq(3)").text();
            if (confirm("确认同意【" + userName + "】的领养申请吗？")) {
                $.ajax({
                    url: "${APP_PATH}/admin/agree?id="+id,
                    type: "GET",
                    success: function (result) {
                        if (result.code==100){
                            //回到本页
                            window.location.reload();
                            to_page(currentPage);
                        }

                    }
                })
            }

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
                url: "${APP_PATH}/pet/batchDelete?ids=" + del_idstr,
                type: "POST",
                success: function (result) {
                    alert(result.msg);
                    //回到当前页面
                    to_page(currentPage);
                }
            });
        }
    });


    //搜索框显示-------------------
    $(function () {
        $("#findPet_btn").click(function () {
            var PetMessage = $("#findByName").val();
            alert(PetMessage);
            var pn = 1;
            $.ajax({
                url:"${pageContext.request.contextPath}/pet/likePetByPetName",
                data: {"pn": pn, "petName": PetMessage},
                type:"GET",
                success: function (result) {
                    //1、解析并显示员工数据
                    build_users_table(result);
                    //2、解析并显示分页信息
                    build_page_info(result);
                    //3、解析显示分页条数据
                    build_page_nav(result);
                }
            });
        })
    });
</script>
</body>
</html>
