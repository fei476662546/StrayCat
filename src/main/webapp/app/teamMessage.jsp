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
    <jsp:include page="admitHome.jsp"></jsp:include>
    <div id="page-wrapper">
        <!-- 用户信息查询部分  start-->
        <!-- 搭建显示页面 -->
        <div class="container">
            <!-- 标题 -->
            <div class="row">
                <div class="col-md-12">
                    <center>
                        <h2>团队申请表</h2>
                        <form method="post" id="form1">
                            <table class="table table-bordered table-striped">
                                <tr>
                                    <td hidden>id</td>
                                    <td>姓名</td>
                                    <td>邮箱</td>
                                    <td>电话</td>
                                    <td>理由</td>
                                    <td>自荐</td>
                                    <td>时间</td>
                                    <td>操作</td>
                                    <td>是否审核 (0为否，1为是，-1为拒绝)</td>
                                    <td>审核结果</td>
                                </tr>
                                <c:forEach items="${teamList}" var="acc" varStatus="s">
                                    <tr>
                                        <td hidden><input type="checkbox" name="id" value="${acc.id}"></td>
                                        <td><input type="text" name="team_name" value="${acc.team_name}"></td>
                                        <td><input type="text" name="team_email" value="${acc.team_email}"></td>
                                        <td><input type="text" name="team_tel" value="${acc.team_tel}"></td>
                                        <td><input type="text" name="team_reason" value="${acc.team_reason}"></td>
                                        <td><input type="text" name="team_message" value="${acc.team_message}"></td>
                                        <td><input type="text" name="time" value="${acc.time}"></td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/team/delete?id=${acc.id}">删除</a>
                                            <span>${teamMsg}</span>
                                        </td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/team/applyOK?id=${acc.id}">审核通过</a><%-- 有疑问--%>
                                            <span>${teamMsg}</span>
                                            <a href="${pageContext.request.contextPath}/team/applyNO?id=${acc.id}">审核拒绝</a>
                                            <span>${teamMsg}</span>
                                        </td>
                                        <td>
                                            <input type="text" name="state" value="${acc.state}">
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </form>
                    </center>
                </div>
            </div>
        </div>
    </div>

    <!-- 班级列表查询部分  end-->
</div>
</body>

</html>
