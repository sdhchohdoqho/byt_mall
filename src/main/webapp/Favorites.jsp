<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    Document   : index
    Created on : 2018-9-12, 10:04:11
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

    <script type="text/javascript" src="css/bootstrap.min.js"></script>
    <!--使用bootstarp是偷懒的最好方法-->
    <meta name="viewport"  content="width=device-width;minimum-scale=1.0;initial-scale=1.0; maximum-scale=2.0; charset=UTF-8">
    <!--上一行是对移动端设备友好-->
    <title>蓂雪の租房系统——首页</title>

</head>

<style type="text/css">
    .panel
    {




    }









    .first_pop_logo{

        padding-top: 0px;
        max-width: 500px;

    }
    .first_pop_logo img{
        width: 50%;
    }
    .first_pop{

        background: url(hua.png) repeat left top;
        border: solid 1px #f2a685;
        box-shadow: 4px 4px 4px rgba(0,0,0,0.2);

    }
    .first_pop_text02{
        font-size: 1.6rem;
        color: #565858;
        line-height: 1.5;



    }
    .first_pop_btn{
        text-align: center;
        font-size: 0;


    }
    .first_pop_btn li{
        display: inline-block;

    }
    .first_pop_btn li a{
        width: 237px;

        display: inline-block;

        height: 40px;
        line-height: 40px;
        font-weight: bold;
        font-size: 2.4rem;
        text-decoration: none;


    }


    html,body{
        background:url(shan.png)  no-repeat center center;
        background-size:cover;
        background-attachment:fixed;


    }

    .navbar-nav > li > a{

        top: 40%;

        padding-bottom:0 ;

        height: 20px;

    }
    .navbar-header > li > a{
        top: 40%;

        padding-bottom:0 ;

        height: 20px;
    }


    .navbar {min-height:20px ;
        height: 55px;}
    @media (min-width:1200px) {
        .container {width: auto
        }
    }



</style>
<script type="text/javascript">
    function makevisible(obj,num){
        obj.style.opacity=".6";
    }
    function makeavisible(obj,num)
    {
        obj.style.opacity=".9";
    }



</script>

<body>


<div class="background">
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="height:0px;padding-top: -5px;margin-bottom: -10px;background-color:#333333;">
        <div class="container-fluid" style="background-color:#333333;height: 40px;">
            <div class="navbar-header">

                <a class="navbar-brand" href="first.jsp" style="font-size:2rem;margin-left: 30px;margin-top: -6px"> 蓂雪の淘宝系统</a>


            </div>


            <div>
                <ul class="nav navbar-nav">

                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li> <li>&nbsp&nbsp&nbsp&nbsp</li>

                    <li>&nbsp&nbsp&nbsp&nbsp</li> <li>&nbsp&nbsp&nbsp&nbsp</li> <li>&nbsp&nbsp&nbsp&nbsp</li> <li>&nbsp&nbsp&nbsp&nbsp</li>










                    <li><a  href="http://localhost:63342/test/GoodModule/src/main/byt/index.html" style="font-size:1.5rem;margin-top: -6px"> 首页</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>

                    <li><a  href="bug.jsp" style="font-size:1.5rem;margin-top: -6px"> 商品大全</a></li>

                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="talking.jsp" style="font-size:1.5rem;margin-top: -6px">讨论块</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="Housing issue.jsp" style="font-size:1.5rem;margin-top: -6px">商品发布</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="/shoppingcar" style="font-size:1.5rem;margin-top: -6px">我的购物车</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="Favorites.jsp" style="font-size:1.5rem;margin-top: -6px">我的收藏夹</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="house certain.jsp" style="font-size:1.5rem;margin-top: -6px">用户中心</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="login" style="font-size:1.5rem;margin-top: -6px">点击登出</a></li>




                </ul>


            </div>
        </div>
    </nav>
    <br>
    <h2 class="text-center" style="color:red">
        <a href="https://baike.baidu.com/item/韭菜/478849?fr=aladdin" style="color:#C6E2FF">
            人，是会思考的韭菜
        </a>
    </h2>
    <div class="container">
        <div class="row">
            <div class="col-md-1 col-lg-1 col-sm-1">
            </div>
            <div class="col-md-10 col-lg-10 col-sm-10">
                <h3 style="color:white">我收藏的店铺</h3>
                <hr>
                <div>

                        <div class="col-md-2" style="text-align: center;">
                            <img src="//img.alicdn.com/bao/uploaded/i1/62614701/O1CN01hFxuHv1kb6PW17ugh_!!62614701.jpg_160x160xz.jpg"  alt="">
                            <div style="text-align: center;">
                                <span >糖葫芦</span>

                            </div>
                            <button type="button" style="color:red">删除</button>
                        </div>






                </div>















            </div>









                    </div>
                </div>

            </div>

        </div>
    </div>

</div>
</body>
</html>