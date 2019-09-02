<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2019/8/22
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""/>

    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/bootstrap/css/bootstrap.css" type="text/css" media="all">
    <!-- Owl-Carousel-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/animal/css/style.css" type="text/css" media="all" />

</head>
<jsp:include page="home.jsp"></jsp:include>
<body>

<!-- welcome -->
<div class="about" id="about">
    <div class="container">
        <h3 class="agile-title">铲屎官们要注意了</h3>
        <div class="about-top w3ls-agile">
            <div class="col-md-6 red">
                <img class="img-responsive" src="${pageContext.request.contextPath}/animal/images/ab9.png" alt="">
            </div>
            <div class="col-md-6 come">
                <div class="about-wel">
                    <h5>关于养
                        <span>猫狗</span>的几点意见!
                    </h5>
                    <p>猫和狗都是我们很多人喜欢的宠物，但是在我们开始养它们之前，要注意一些问题</p>
                    <ul>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的健康和关怀</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的美容</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的食物</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的行为</li>
                    </ul>
                </div>
                <div class="button-styles">
                    <a href="#cat" data-toggle="modal" data-target="#myModal2">养猫注意的地方</a>
                    <a href="#dog" class="button2-w3l scroll">养狗注意的地方</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="about" id="cat">
    <div class="container">
        <h3 class="agile-title">养<span>猫咪</span>要注意的地方</h3>
        <div class="about-top w3ls-agile">
            <div class="col-md-6 red">
                <img class="img-responsive" src="${pageContext.request.contextPath}/animal/images/ab1.png" alt="">
                <br>
                <img class="img-responsive" src="${pageContext.request.contextPath}/animal/images/ab2.png" alt="">
            </div>
            <div class="col-md-6 come">
                <div class="about-wel">
                    <p>
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一个要注意的就是给猫咪一个环境<br>
                        猫咪到家以后不要急着去抱猫，因为猫的性子是慢热的而且非常敏感，在猫咪换了一个新环境的时候，一定要给猫一定的时间去适应环境，可以在接猫回家以后，不去打扰猫咪！
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二个就是要保护猫咪<br>
                        猫咪和小孩子一样，都喜欢跳来跳去的，所以为了让猫咪安全，就要收起易碎的东西还有刀具，还有猫咪过敏的东西都是不能有的！
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第三个就是要把窗户封住<br>
                        因为猫咪非常喜欢看窗外，为了不让猫咪从窗户上面掉下去，或者是猫咪悄悄的跑出去，在开窗的时候，一定不能让猫看到，不然它们自己就会悄悄的开窗，然后偷跑出去！
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第四个就是要给猫咪买一些用具<br>
                        猫咪在到家以后，一定要准备一些吃喝拉撒的东西，第一个就是猫的食盆，一定要准备两个，一个是猫咪用来喝水的，还有一个就是猫咪吃东西的。再然后就是猫粮了，
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第五个就是要注意猫的温度<br>
                        有的人非常喜欢开空调，如果家里养了猫以后，室内和室外的温度不能超过三度，猫咪是非常敏感的动物，所以不能用冷风直接吹猫咪，让冷风往上吹，这样会让房子里面的温度均匀
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第六个就是一定要给猫咪绝育<br>
                        猫在6个月的时候，就到了发情期，不管是母猫还是公猫，都要进行绝育。</p>
                    <ul>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>对猫狗的健康和关怀</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗保养</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的食物</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的行为</li>
                    </ul>
                </div>
                <div class="button-styles">
                    <a href="#dog" data-toggle="modal" data-target="#myModal2">养狗注意的地方</a>
                    <a href="#cat" class="button2-w3l scroll">养猫注意的地方</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="about" id="dog">
    <div class="container">
        <h3 class="agile-title">养<span>狗狗</span>要注意的地方</h3>
        <div class="about-top w3ls-agile">
            <div class="col-md-6 red">
                <img class="img-responsive" src="${pageContext.request.contextPath}/animal/images/ab5.png" alt="">
                <br>
                <img class="img-responsive" src="${pageContext.request.contextPath}/animal/images/ab6.png" alt="">
            </div>
            <div class="col-md-6 come">
                <div class="about-wel">
                    <p>
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一是狗粮的问题<br>
                        毕竟第一次养狗，没有经验，喂狗这事就显得很重要了。狗粮不用买太贵的，只要营养丰富就行，蛋白质一定要丰富，高蛋白的狗粮对狗狗的皮毛很有好处，而且会提高狗狗的免疫力，不容易生病。主人也会很省心；
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二是疫苗一定要打<br>
                        可以去医院咨询一下医生，在哪个年纪打什么样的，这是很重要的，关系到狗狗的健康，打上疫苗，狗狗健康，主人也安心；
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三是一定要从小驯养<br>
                        教会它定点上厕所，如果你不想它在家里到处拉的话。这是很重要的，长大了就不好教了，一定要从小形成好的习惯；
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四是洗澡不要太勤<br>
                        太勤对狗的皮肤不好，洗澡的时候要清理肛门腺，要定期给狗狗刷牙，掏耳朵，不然会有很大的味道；
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;五是出去遛狗的时候<br>
                        牵引绳要拿好，万一狗狗性格是那种放荡不羁爱自由的，就得考验你的速度了。</p>
                    <ul>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的健康和关怀</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的美容</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的食物</li>
                        <li>
                            <i class="glyphicon glyphicon-ok"></i>猫和狗的行为</li>
                    </ul>
                </div>
                <div class="button-styles">
                    <a href="#dog" data-toggle="modal" data-target="#myModal2">养狗注意的地方</a>
                    <a href="#cat" class="button2-w3l scroll">养猫注意的地方</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/animal/bootstrap/js/bootstrap.js"></script>

</body>
</html>
