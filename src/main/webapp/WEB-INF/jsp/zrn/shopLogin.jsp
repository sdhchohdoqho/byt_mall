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
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--使用bootstarp是偷懒的最好方法-->
    <meta name="viewport"  content="width=device-width;minimum-scale=1.0;initial-scale=1.0; maximum-scale=2.0; charset=UTF-8">
    <!--上一行是对移动端设备友好-->
    <title>蓂雪の淘宝系统——登录</title>
</head>

<style type="text/css">
    .navbar-inverse button[type="submit"] {
        position: absolute;
        top:100%;
        right:200000px;
        background: none;
        border: none;
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
        background:url(xingkong.png)  no-repeat center center;
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

                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp" style="font-size:2rem;margin-left: 30px;margin-top: -6px"> 北邮淘</a>


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










                    <li><a  href="${pageContext.request.contextPath}/zrn/shopLogin.jsp" style="font-size:1.5rem;margin-top: -6px"> 用户登录</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>


                    <li><a  href="${pageContext.request.contextPath}/zrn/shopRegister.jsp" style="font-size:1.5rem;margin-top: -6px"> 用户注册</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a  href="bug.jsp" style="font-size:1.5rem;margin-top: -6px"> Bug反馈</a></li>

                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="talk board.jsp" style="font-size:1.5rem;margin-top: -6px">讨论块</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>



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

            <div class="col-lg-2">
            </div>
            <div class="col-lg-7">



                <h4 class="text-right" style="color:#FFFF00">——尼古拉斯.瑞年.张</h4>
                <br/>
                <br/>
                <div class="panel panel-danger"onmouseout="makevisible(this,50)" onmouseover="makeavisible(this,80)" style="opacity:0.5;margin-left: 15%;margin-right: 15%;height: 500px">
                    <div class="panel-heading">
                        <h2 style="text-align:center;">请您在这里登录</h2>
                    </div>
                    <div class="panel-body">
                        <h4 style="text-align:center;color:#7B68EE;font-weight:bold;">登录北邮淘，优质商品任你挑</h4>
                        <br>
                        <br>
                        <br>




                        <form action="/ly/mainpagetrain.jsp" method="post" >

                            <div style="width:100%;text-align:center">
                                <input type="text" name="user.user_Name" size="30" placeholder="请在此键入您的用户名" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width:300px" />


                            </div>
                            <br/>
                            <br/>
                            <br>
                            <br>
                            <div style="width:100%;text-align:center">
                                <input type="password" name="user.user_Password"  size="30" placeholder="请在此键入您的密码" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width: 300px" />
                            </div>
                            <br/>
                            <br/>
                            <br>
                            <br>
                            <div align="center">
                                <div style="width:70%;">
                                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="登录" onclick="javascrtpt:window.location.href='/ly/mainpagetrain.jsp'"/>

                                </div>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
            <div class="col-lg-2">

            </div>

        </div>
    </div>

</div>

</body>
</html>