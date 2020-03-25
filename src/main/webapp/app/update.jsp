<%--
  Created by IntelliJ IDEA.
  User: 47666
  Date: 2020-3-18
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>上传</title>

    <style>
        .plBtn1{width: 75px;height: 36px;line-height: 36px;background-color: skyblue;text-align: center;display: block;color: #FFFFFF;font-size: 12px;border-radius: 6px;margin-right: 2px;margin-top: 20px;}
        .plBtn1:hover{background-color: slategray;}
        .add_div {
            width: 350px;
            height:430px;
            border: solid #ccc 1px;
            margin-top: 40px;
            margin-left: 170px;
            padding-left: 20px;
        }

        .file-list {
            height: 125px;
            display: none;
            list-style-type: none;
        }

        .file-list img {
            width: 70px;
            height: 80px;
            vertical-align: middle;
        }

        .file-list .file-item {
            margin-bottom: 10px;
            float: left;
            margin-left: 20px;
        }


        .file-list .file-item .file-del {
            display: block;
            margin-left: 20px;
            margin-top: 5px;
            cursor: pointer;
        }

    </style>

</head>
<body>
<div class="add_div">
    <p style="padding-top: 30px">
        <span style="padding-left: 100px"><font color="aqua" size="3">上传宠物生活照</font></span>
    </p>
    <p>
        <input type="file" name="" id="choose-file" multiple="multiple" hidden>
        <input type="button" value="选择图片" id="photo_btn" class="plBtn1">
    </p>
    <p>
    <ul class="file-list ">
    </ul>
    </p>
    <button style="cursor: pointer;margin-left: 150px;" href="javascript:;" id="upload" class="plBtn">上传</button>

</div>
<script src="${pageContext.request.contextPath}/static/update/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/update/layer/layer.js"></script>
<script>

    $(function () {
        ////////////////////////////////////////////////图片上传//////////////////////////////////////////////
        //声明变量
        var $button = $('#upload'),
            //选择文件按钮
            $file = $("#choose-file"),
            //回显的列表
            $list = $('.file-list'),
            //选择要上传的所有文件
            fileList = [];
        //当前选择上传的文件
        var curFile;
        $("#photo_btn").click(function () {
            $file.click();
        })
        // 选择按钮change事件，实例化fileReader,调它的readAsDataURL并把原生File对象传给它，
        // 监听它的onload事件，load完读取的结果就在它的result属性里了。它是一个base64格式的，可直接赋值给一个img的src.
        $file.on('change', function (e) {
            //上传过图片后再次上传时限值数量
            // var numold = $('li').length;
            // if(numold >= 9){
            //     layer.alert('最多上传6张图片1');
            //     return;
            // }
            //限制单次批量上传的数量
            // var num = e.target.files.length;
            // var numall = numold + num;
            // if(num >9 ){
            //     layer.alert('最多上传6张图片2');
            //     return;
            // }else if(numall > 9){
            //     layer.alert('最多上传6张图片3');
            //     return;
            // }
            //原生的文件对象，相当于$file.get(0).files;//files[0]为第一张图片的信息;
            curFile = this.files;
            //curFile = $file.get(0).files;
            //console.log(curFile);
            //将FileList对象变成数组
            fileList = fileList.concat(Array.from(curFile));
            //console.log(fileList);
            for (var i = 0, len = curFile.length; i < len; i++) {
                reviewFile(curFile[i])
            }
            $('.file-list').fadeIn(2500);
        })


        function reviewFile(file) {
            //实例化fileReader,
            var fd = new FileReader();
            //获取当前选择文件的类型
            var fileType = file.type;
            //调它的readAsDataURL并把原生File对象传给它，
            fd.readAsDataURL(file);//base64
            //监听它的onload事件，load完读取的结果就在它的result属性里了
            fd.onload = function () {
                if (/^image\/[jpeg|png|jpg|gif]/.test(fileType)) {
                    $list.append('<li style="border:solid skyblue 1px; margin:5px 5px;" class="file-item"><img src="' + this.result + '" alt="" height="70"><span class="file-del"><font color="black">删除</font></span></li>').children(':last').hide().fadeIn(2500);
                } else {
                    $list.append('<li class="file-item"><span class="file-name">' + file.name + '</span><span class="file-del">删除</span></li>')
                }

            }
        }

        //点击删除按钮事件：
        $(".file-list").on('click', '.file-del', function () {
            let $parent = $(this).parent();
            console.log($parent);
            let index = $parent.index();
            fileList.splice(index, 1);
            $parent.fadeOut(850, function () {
                $parent.remove()
            });
            //$parent.remove()
        });
        //点击上传按钮事件：
        $button.on('click', function () {
            if(fileList.length > 6){
                layer.alert('最多允许上传6张图片');
                return;
            } else {
                var formData = new FormData();
                for (var i = 0, len = fileList.length; i < len; i++) {
                    //console.log(fileList[i]);
                    formData.append('upfile[]', fileList[i]);
                }
                // formData.append('catgory', catgory);
                // formData.append('price', price);
                // formData.append('desc', desc);
                // formData.append('stock', stock);
                // formData.append('status', status);
                //console.log(formData);
                $.ajax({
                    url: "${pageContext.request.contextPath}/pet/upload?user_id=${User.id}&pet_id=${UserPet.id}",
                    type: 'post',
                    data: formData,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    success: function (data) {
                        if (data.code==100) {
                            $(".file-list").html("<font color='red'>上传成功<font>");
                           setTimeout(function () {
                               $(".file-list").html("");
                           },2000)
                        }
                    }
                })
            }
        })
    });
</script>
</body>
</html>
