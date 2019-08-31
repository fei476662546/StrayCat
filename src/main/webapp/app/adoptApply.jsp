<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/26
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<style>
    input {
        border: hidden;
    }

    table {
        width: 900px;
        height: 500px;
    }

    input {
        width: 100px;
    }
</style>
<body>
<div id="wrapper">
    <div id="page-wrapper">
        <!-- 用户信息查询部分  start-->
        <!-- 搭建显示页面 -->
        <div class="container">
            <!-- 标题 -->
            <center>
                <h2>领养申请表</h2>
                <form method="post" id="form1">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <td>id</td>
                            <td>User_id</td>
                            <td>petName</td>
                            <td style="padding-left: 10px">审核</td>
                            <td style="padding-left: 30px">操作</td>
                            <td>是否审核 (0为否，1为是，-1为拒绝)</td>
                        </tr>
                        <c:forEach items="${AdoptList}" var="acc" varStatus="s">
                            <tr>
                                <td hidden><input type="checkbox" name="id" value="${acc.id}"></td>
                                <td><input type="text" name="id" value="${acc.id}"></td>
                                    <%-- 有疑问--%>
                                <td><input type="text" name="user_id" value="${acc.user_id}"></td>
                                <td><input type="text" name="petName" value="${acc.petName}"></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/adopt/edit?id=${acc.id}">修改</a><%-- 有疑问--%>
                                    <span>${msg}</span>
                                    <a href="${pageContext.request.contextPath}/adopt/delete?id=${acc.id}">删除</a>
                                    <span>${msg}</span>
                                </td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/adopt/applyOK?id=${acc.id}">审核通过</a><%-- 有疑问--%>
                                    <span>${msg}</span>
                                    <a href="${pageContext.request.contextPath}/adopt/applyNO?id=${acc.id}">审核拒绝</a>
                                    <span>${msg}</span>
                                </td>
                                <td>
                                    <input type="text" name="apply" value="${acc.apply}" style="padding-left: 80px">
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
            </center>
        </div>
    </div>

    <!-- 班级列表查询部分  end-->
</div>
</body>

</html>
