<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/animal/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/animal/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/myprofile.css">
    <script>
        function YYYYMMDDstart()
        {
            MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

            //先给年下拉框赋内容
            var y  = new Date().getFullYear();
            for (var i = (y-30); i < (y+10); i++) //以今年为准，前30年，后30年
                document.myprofile_form.YYYY.options.add(new Option(" "+ i +" 年", i));

            //赋月份的下拉框
            for (var i = 1; i < 13; i++)
                document.myprofile_form.MM.options.add(new Option(" " + i + " 月", i));

            document.myprofile_form.YYYY.value = y;
            document.myprofile_form.MM.value = new Date().getMonth() + 1;
            var n = MonHead[new Date().getMonth()];
            if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;
            writeDay(n); //赋日期下拉框Author:meizz
            document.myprofile_form.DD.value = new Date().getDate();
        }
        if(document.attachEvent)
            window.attachEvent("onload", YYYYMMDDstart);
        else
            window.addEventListener('load', YYYYMMDDstart, false);
        function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)
        {
            var MMvalue = document.myprofile_form.MM.options[document.myprofile_form.MM.selectedIndex].value;
            if (MMvalue == ""){ var e = document.myprofile_form.DD; optionsClear(e); return;}
            var n = MonHead[MMvalue - 1];
            if (MMvalue ==2 && IsPinYear(str)) n++;
            writeDay(n)
        }
        function MMDD(str)   //月发生变化时日期联动
        {
            var YYYYvalue = document.myprofile_form.YYYY.options[document.myprofile_form.YYYY.selectedIndex].value;
            if (YYYYvalue == ""){ var e = document.myprofile_form.DD; optionsClear(e); return;}
            var n = MonHead[str - 1];
            if (str ==2 && IsPinYear(YYYYvalue)) n++;
            writeDay(n)
        }
        function writeDay(n)   //据条件写日期的下拉框
        {
            var e = document.myprofile_form.DD; optionsClear(e);
            for (var i=1; i<(n+1); i++)
                e.options.add(new Option(" "+ i + " 日", i));
        }
        function IsPinYear(year)//判断是否闰平年
        {     return(0 == year%4 && (year%100 !=0 || year%400 == 0));}
        function optionsClear(e)
        {
            e.options.length = 1;
        }
        $(function () {
            $(".head_title2").click(function () {
                $("#photo").click();
            })
        })
    </script>
</head>
<style>
    .retureIndex{
        font-size: 20px;
        float: right;
        padding-bottom: auto;
    }
</style>
<body>
<h1>个人资料</h1>
<a href="${pageContext.request.contextPath}/app/home.jsp" class="retureIndex"><font color="black">返回主页</font> </a>
<hr>
<form action="#" method="get" name="myprofile_form">
    <div class="head_portrait_box">
        <div class="head_portrait">
            <img src="${pageContext.request.contextPath}/animal/images/c4.jpg">
        </div>
        <ul class="portrait_text">
            <input type="file" name="pic" id="photo" style="display: none"/>
            <button type="button" class="btn head_title2 btn-success">上传头像</button>
            <li>支持jpg、gif、png、或bmp格式的图片，文件必须小于1M</li>
        </ul>
    </div>
    <div class="gameID_all" >
        <div class="game_ID">
            用户编号：<input type="text" name="id"/></div>
        <div class="game_ID">
            用&nbsp;户&nbsp;名&nbsp;：<input type="text" name="username" ></div>
        <div class="game_ID">
           年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：<input type="text" name="age">
        </div>
        <div class="game_ID">
            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;：
            <select class="sex" name="sex">
                <option value="0">男</option>
                <option value="1">女</option>
            </select>
        </div>
        <div class="game_ID">
            邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱&nbsp;：<input type="email" name="email" ></div>
        <div class="game_ID">
            电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话&nbsp;：<input type="text" name="tel" ></div>
        <div class="game_ID">
            地址&nbsp;：<input type="text" name="address" ></div>
        <div class="game_ID">
            签名&nbsp;：<input type="text" name="message" ></div>
        <div class="game_ID">
            是否领养动物&nbsp;：<select  name="adoptPet" >
            <option value="0">未领养</option>
            <option value="1">已领养</option>
        </select>
        </div>
        <div class="submit_box">
            <input type="submit" value="提交修改">
        </div>
    </div>
</form>
</body>

</html>
