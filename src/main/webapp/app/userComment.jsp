<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学员关系管理系统CRM</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="../../houtai/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="../../houtai/css/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="../../houtai/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../../houtai/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../../houtai/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../../houtai/css/boot-crm.css" rel="stylesheet" type="text/css">
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
    <!-- 用户信息查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">用户信息管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <form class="form-inline" method="get" action="#">
                    <div class="form-group">
                        <label for="userName">用户名</label>
                        <input type="text" class="form-control" id="userName" value="" name="name">
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
        <a href="crmclass/list.action#" class="btn btn-primary" data-toggle="modal" data-target="#newPinglunDialog"
           onclick="clearpinglun()">新建</a>
        <a href="crmclass/list.action#" class="btn btn-info" data-toggle="modal" data-target="#uploadDialog"
           onclick="clearupload()">上传用户信息</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">用户评论列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>评论编号</th>
                            <th>用户名</th>
                            <th>评论内容</th>
                            <th>评论时间</th>
                            <th>评论位置</th>
                            <th>操作</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>李白</td>
                            <td>我爱这只猫</td>
                            <td>2019年8月22日</td>
                            <td>pet2</td>
                            <td>
                                <a href="crmclass/list.action#" class="btn btn-primary btn-xs" data-toggle="modal"
                                   data-target="#crmPinglunEditDialog" onclick="editpinglun(1)">修改</a>
                                <a href="crmclass/list.action#" class="btn btn-danger btn-xs"
                                   onclick="deletepinglun(1)">删除</a>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <nav>
                            <ul class="pagination">
                                <li class="disabled"><a href="#">首页 </a></li>
                                <li class="disabled"><a href="crmclass/list.action#">上一页 </a></li>
                                <li class="active"><a href="crmclass/list.action#">1</spanclass="sr-only"></spanclass
                                    ="sr-only"></a></li>
                                <li class="disabled"><a href="crmclass/list.action#">下一页</a></li>
                                <li class="disabled"><a href="crmclass/list.action#">尾页</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- 班级列表查询部分  end-->
</div>
<!-- 创建用户模态框 -->
<div class="modal fade" id="newPinglunDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建用户评论信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_pinglun_form">
                    <div class="form-group">
                        <label for="new_crmUserName" class="col-sm-2 control-label">
                            用户名
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_crmUserName" placeholder="用户名"
                                   name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_pinglunText" class="col-sm-2 control-label">
                            内容
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_pinglunText" placeholder="内容"
                                   name="pinglunText">
                        </div>
                        <label for="new_pinglunTime" class="col-sm-2 control-label">
                            评论时间
                        </label>
                        <div class="col-sm-4">
                            <input type="datetime-local" class="form-control" id="new_pinglunTime" placeholder="评论时间"
                                   name="pinglunTime">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_pinglunAddr" class="col-sm-2 control-label">
                            评论位置
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_pinglunAddr" placeholder="评论位置"
                                   name="pinglunAddr">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createpinglun()">创建评论记录</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改班级模态框 -->
<div class="modal fade" id="crmPinglunEditDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabe">修改用户评论记录</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_pinglun_form">
                    <input type="hidden" id="edit_pinglunId" name="pinglunId">
                    <div class="form-group">
                        <label for="edit_crmUserName" class="col-sm-2 control-label">
                            用户名
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_crmUserName" placeholder="用户名"
                                   name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_pinglunText" class="col-sm-2 control-label">
                            内容
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_pinglunText" placeholder="内容"
                                   name="pinglunText">
                        </div>
                        <label for="edit_pinglunTime" class="col-sm-2 control-label">
                            评论时间
                        </label>
                        <div class="col-sm-4">
                            <input type="datetime-local" class="form-control" id="edit_pinglunTime" placeholder="评论时间"
                                   name="pinglunTime">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_pinglunAddr" class="col-sm-2 control-label">
                            评论位置
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_pinglunAddr" placeholder="评论位置"
                                   name="pinglunAddr">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updatePinglun()">保存修改</button>
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

    //清空新建班级窗口中的数据
    function clearpinglun() {
        $("#new_crmUserName").val("");
        $("#new_pinglunText").val("");
        $("#new_pinglunTime").val("");
        $("#new_pinglunAddr").val("");
    }

    // 创建班级
    function createpinglun() {
        $.Post("crmclass/create.action",
            $("#new_pinglun_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("记录创建成功！");
                    window.location.reload();
                } else {
                    alert("记录创建失败！");
                    window.location.reload();
                }
            });
    }

    // 通过id获取修改的班级信息
    function editpinglun(id) {
        $.ajax({
            type: "get",
            url: "crmclass/getcrmclassById.action",
            data: {"id": id},
            success: function (data) {
                $("#edit_pinglunId").val(data.pinglunId);
                $("#edit_crmUserName").val(data.name);
                $("#edit_pinglunText").val(data.pinglunText);
                $("#edit_pinglunTimen").val(data.pinglunTime);
                $("#edit_pinglunAddr").val(data.pinglunTime);
            }
        });
    }

    // 执行修改班级操作
    function updatePinglun() {
        $.Post("crmclass/update.action",
            $("#edit_pinglun_form").serialize(),
            function (data) {
                if (data == "OK") {
                    alert("评论记录更新成功！");
                    window.location.reload();
                } else {
                    alert("评论记录更新失败！");
                    window.location.reload();
                }
            });
    }

    // 删除班级
    function deletepinglun(id) {
        if (confirm('确实要删除该评论记录吗?')) {
            $.Post("crmclass/delete.action", {"id": id},
                function (data) {
                    if (data == "OK") {
                        alert("记录删除成功！");
                        window.location.reload();
                    } else {
                        alert("删除记录失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>

</body>
</html>
