<%--
    Document   : talk
    Created on : 2018-9-18, 16:51:12
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="jquery-1.10.2.min.js"></script>

    <script type="text/javascript" src="bootstrap.min.js"></script>
    <!--使用bootstarp是偷懒的最好方法-->
    <title>bog 讨论块</title>
</head>
<style type="text/css">

    .hide{
        display: none;
    }
    html,body{
        background: url(ev108a.tlg.png) no-repeat top left;
        position: fixed;

    }
    .header{
        background:


                #FFFFE0 ;
        line-height: 40px;
    }
    .menu {



        background:


                #FFFFE0 ;
    }
    .btn-full{
        width: 100%;

        border-radius: 0;
    }
    #downBtn{
        display: none;
    }

</style>
<script type="text/javascript">
    function f()
    {
        alert(document.getElementById("block").value);

    }
</script>
<body>
<div class="container" >
    <div class="row">
        <div class="col-md-3 col-lg-3 col-sm-3">
            <div class="header" >
                <img src="pop_logo1.gif" style="width:100%">
            </div>

            <div class="menu" style="height:5000px;">

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <p class="text-center">
                        <a style="color:black;font-size: 2.8rem;background-color:

#FFFFE0;border-color:white">Bog匿名版
                        </a>
                    </p>
                    <a class="btn btn-primary btn-full"  role="button"  href="index.html" aria-expanded="false" aria-controls="collapseTwo" style="background-color: #FFFFE0;border-color:white;color:black">
                        大会员购买
                    </a>

                    <a class="btn btn-primary btn-full"  role="button" data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" style="background-color: #FFFFE0;border-color:white;color:black">
                        热门板块
                    </a>
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="list-group">
                            <a href="block1.jsp" class="list-group-item">死宅</a>
                            <a href="block2.jsp" class="list-group-item">姐妹</a>
                            <a href="block3.jsp" class="list-group-item">动漫</a>
                            <a href="block4.jsp" class="list-group-item">日记</a>
                            <a href="block5.jsp" class="list-group-item">热点</a>
                            <a href="block6.jsp" class="list-group-item">音乐</a>
                        </div>
                    </div>

                    <a class="btn btn-primary btn-full"  role="button"  href="link.jsp" aria-expanded="false" aria-controls="collapseTwo" style="background-color: #FFFFE0;border-color:white;color:black">
                        联系我们
                    </a>
                    <a class="btn btn-primary btn-full"  role="button"  href="bug.jsp" aria-expanded="false" aria-controls="collapseTwo" style="background-color: #FFFFE0;border-color:white;color:black">
                        Bug反馈
                    </a>
                    <a class="btn btn-primary btn-full"  role="button"  href="hello.jsp" aria-expanded="false" aria-controls="collapseTwo" style="background-color: #FFFFE0;border-color:white;color:black">
                        回到主界面
                    </a>


                </div>

            </div>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1"></div>
        <div class="col-md-8 col-lg-8 col-sm-8" style="border-radius: 5px;padding:20px; overflow-y:auto; height:900px;width: 800px">

            <form class="form-inline" role="form" style="overflow-y:auto">
                <div style="margin-top:30px">
                    <textarea  rows="10" cols="102" id="text1" style="vertical-align:top;outline:none;">请在此输入您那些没人想知道的废话</textarea>
                </div>
                <div style="float:right;" class="form-group" >
                    <button type="button" class="btn btn-success " style="margin-top:10px;overflow:auto;" onclick="f();">反馈给我们</button></div>
                <div>
                    <textarea name="test" id="block" class="hide">感谢您反馈那些没用的废话，我们会当做什么都没看到的</textarea>
                </div>











            </form>
        </div>
    </div>
</div>




</body>
</html>
