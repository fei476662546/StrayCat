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
    <meta charset="UTF-8"/>
    <title>Title</title>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
    <link
            href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/animal/houtai/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/metisMenu.min.js"></script>
    <!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/animal/houtai/js/dataTables.bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/animal/houtai/js/sb-admin-2.js"></script>
</head>
<script>
    function btn(num) {
        if (num == 1) {
            var form = document.getElementById("form1");
            form.action = "${pageContext.request.contextPath}/adopt/applyOK";
            form.submit();
        } else if (num == 2) {
            var form = document.getElementById("form1");
            form.action = "${pageContext.request.contextPath}/adopt/applyNO";
            form.submit();
        }

    }
    $(function () {
        $("#applyOK1").click( function applyOK(){
            $("#applyOK").click();
        });
        $("#applyNO1").click( function loginUser(){
            $("#applyNO").click();
        });
    });
</script>
<body>
<div id="wrapper">
    <div id="page-wrapper">
        <!-- 用户信息查询部分  start-->
        <!-- 搭建显示页面 -->
        <div class="container">
            <!-- 标题 -->
            <center>
                <h2>Hello World!</h2>
                <form method="post" id="form1">
                    <table border="1">
                        <tr>
                            <td>#</td>
                            <td>id</td>
                            <td>User_id</td>
                            <td>petName</td>
                            <td hidden>审核拒绝</td>
                            <td>审核</td>
                            <td>操作</td>
                        </tr>
                        <c:forEach items="${AdoptList}" var="acc" varStatus="s">
                            <tr>
                                <td><input type="checkbox" name="id" value="${acc.id}"></td>
                                <td><input type="text" name="id" value="${acc.id}"></td>
                                    <%-- 有疑问--%>
                                <td><input type="text" name="user_id" value="${acc.user_id}"></td>
                                <td><input type="text" name="petName" value="${acc.petName}"></td>
                                <td hidden><input type="text" name="apply" value="1" id="applyOK" onclick="btn(1)">
                                    <input type="text" name="apply" value="-1" id="applyNO" onclick="btn(2)"></td>
                                <td>
                                    <button id="applyOK1">审核通过</button>
                                    <button id="applyNO1">审核拒绝</button>
                                    </td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/adopt/edit?id=${acc.id}">修改</a><%-- 有疑问--%>
                                    <span>${msg}</span>
                                    <a href="${pageContext.request.contextPath}/adopt/delete?id=${acc.id}">删除</a><%-- 有疑问--%>
                                    <span>${msg}</span>
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
