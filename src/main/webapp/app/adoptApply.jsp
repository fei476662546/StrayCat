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
<script>
    function btn(num) {
        if (num == 1) {
            var form = document.getElementById("form1");
            form.action = "${pageContext.request.contextPath}/batchDelete";
            form.submit();
        } else if (num == 2) {
            var form = document.getElementById("form1");
            form.action = "${pageContext.request.contextPath}/batchUpdate";
            form.submit();
        }

    }
</script>
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
</head>
<body>
<div id="wrapper">
    <div id="page-wrapper">
        <!-- 用户信息查询部分  start-->
        <!-- 搭建显示页面 -->
        <div class="container">
            <!-- 标题 -->
            <center>
                <h2>Hello World!</h2>
                <form action="${pageContext.request.contextPath}/batchDelete" method="post" onsubmit="check();" id="form1">
                    <table border="1">
                        <tr>
                            <td>id</td>
                            <td>User</td>
                            <td>pwd</td>
                            <td>操作</td>
                        </tr>
                        <c:forEach items="${Acclist}" var="acc" varStatus="s">
                            <tr>
                                <td><input type="checkbox" name="Acclist[${s.index}].id" value="${acc.id}"></td>
                                    <%-- 有疑问--%>
                                <td><input type="text" name="Acclist[${s.index}].name" value="${acc.name}"></td>
                                <td><input type="text" name="Acclist[${s.index}].pwd" value="${acc.pwd}"></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/edit?id=${acc.id}">修改</a><%-- 有疑问--%>
                                    <span>${msg}</span>
                                    <a href="${pageContext.request.contextPath}/delete?id=${acc.id}">删除</a><%-- 有疑问--%>
                                    <span>${msg}</span>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                </form>
                <input type="button" value="批量删除" onclick="btn(1)"><%-- 有疑问--%>
                <input type="button" value="批量修改" onclick="btn(2)">
                <input type="button" value="添加用户" onclick=location.href="app/addUser.jsp">
            </center>
        </div>
    </div>

    <!-- 班级列表查询部分  end-->
</div>
</body>
</html>
