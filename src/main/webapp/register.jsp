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

    <script type="text/javascript" src="bootstrap.min.js"></script>
    <!--使用bootstarp是偷懒的最好方法-->
    <meta name="viewport"  content="width=device-width;minimum-scale=1.0;initial-scale=1.0; maximum-scale=2.0; charset=UTF-8">
    <!--上一行是对移动端设备友好-->
    <title>蓂雪の租房系统——登录</title>
</head>

<style type="text/css">
    .navbar-inverse button[type="submit"] {
        position: absolute;
        top:100%;
        right:200000px;
        background: none;
        border: none;
    }
    #footer1 {
        position: relative;
        left: 100px;
        margin-top: -441px;/*等于footer的高度*/
        height: 50px;
        clear:both;
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
    #footer {
        position: relative;
        left:-221px;
        margin-top: -441px;/*等于footer的高度*/
        height: 50px;
        clear:both;
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



</style>

<script type="text/javascript">
    jQuery(document).ready(function () {
        $("#register").on("click",function () {
            var username=document.getElementById("username").value;
            var userpass=document.getElementById("userpassword").value;
            var userpass1=document.getElementById("userpass1").value;
            if(userpass != userpass1){
                alert("两次输入的密码不一致，请重新输入！");
                return false;
            }else if(userpass.length<=0 || username.length<=0) {
                alert("用户名以及密码不能为空，请重新输入！");
                return false;
            }

            var telephone = $("#phone").val();
            var password = $("#userpassword").val();
            var name = $("#username").val();
            var cardnumber = $("#cardnumber").val();
            $.ajax({
                type: "POST",
                contentType: "application/x-www-form-urlencoded",
                url: "http://localhost:8091/user/register",
                data:
                    {
                        "telephone": $("#phone").val(),
                        "password": password,
                        "name": name,
                        "cardnumber": cardnumber
                    },
                success: function (data) {
                    if (data.status == "success") {
                        alert("注册成功");
                        window.location.href="http://localhost:8091/first";

                    } else {
                        alert("您的注册信息出现了一点问题");
                    }
                },
                error: function (data) {

                    alert("您的注册信息出了大问题！");
                }
            });
            return false;
        });



                });








    function isValidate(form) {
        var username=document.getElementById("username").value;
        var userpass=document.getElementById("userpassword").value;
        var userpass1=document.getElementById("userpass1").value;

        var phone = document.getElementById('phone').value;
        if(!(/^1[3456789]\d{9}$/.test(phone))){
            alert("手机号码有误，请重填");
            return false;
        }
        if(userpass != userpass1){
            alert("两次输入的密码不一致，请重新输入！");
            return false;
        }else if(userpass.length<=0 || username.length<=0) {
            alert("用户名以及密码不能为空，请重新输入！");
            return false;
        }else{
            return true;
        }
    }
    function makevisible(obj,num){
        obj.style.opacity=".6";
    }
    function makeavisible(obj,num)
    {
        obj.style.opacity=".9";
    }
    function checkPhone(){
        var phone = document.getElementById('phone').value;
        if(!(/^1[3456789]\d{9}$/.test(phone))){
            alert("手机号码有误，请重填");
            return false;
        }
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










                    <li><a  href="CustomerCenter.jsp" style="font-size:1.5rem;margin-top: -6px"> 首页</a></li>
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
                    <li><a href="house certain.jsp" style="font-size:1.5rem;margin-top: -6px">我的购物车</a></li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li>&nbsp&nbsp&nbsp&nbsp</li>
                    <li><a href="house certain.jsp" style="font-size:1.5rem;margin-top: -6px">用户中心</a></li>
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
                <div id="footer">
                    <img src="22bog.gif" style="position:fixed;top: 50%;">
                </div>
            </div>
            <div class="col-lg-7">



                <h4 class="text-right" style="color:#FFFF00">——尼古拉斯.瑞年.张</h4>
                <br/>
                <br/>
                <div class="panel panel-danger"onmouseout="makevisible(this,50)" onmouseover="makeavisible(this,80)" style="opacity:0.5;margin-left: 15%;margin-right: 15%;height: 600px">
                    <div class="panel-heading">
                        <h2 style="text-align:center;">请您在这里注册</h2>
                    </div>
                    <div class="panel-body">
                        <h4 style="text-align:center;color:#7B68EE;font-weight:bold;">加入蓂雪の淘宝系统，优质商品任你挑</h4>
                        <br>


                        <form  name="register" method="post" onsubmit="return isValidate()">


                            <div style="width:100%;text-align:center">
                                <input type="text" id="username" name="user.user_Name"placeholder="请在此键入您的用户名" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width:300px" >
                            </div>
                            <br>
                            <br>

                            <div style="width:100%;text-align:center">
                                <input type="password" id="userpassword" name="user.user_Password" placeholder="请在此键入您的密码" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width:300px">
                            </div>
                            <br>
                            <br>

                            <div style="width:100%;text-align:center">
                                <input type="password" id="userpass1" name="userpass1" placeholder="请确认您的密码" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width:300px" >
                            </div>
                            <br>
                            <br>
                            <div style="width:100%;text-align:center">
                                <input type="text" id="phone" name="user.user_phone" placeholder="请输入您的手机号" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width:300px" >
                            </div>
                            <br>
                            <br>
                            <div style="width:100%;text-align:center">
                                <input type="text" id="cardnumber" name="user.user_cardnumber" placeholder="请输入您的学生卡号" style=" border-bottom: black 1px solid;    border-top-style: none;    border-right-style: none;    border-left-style: none;    background-color: transparent;width:300px" >
                            </div>
                            <br>
                            <br>



                            <div align="center">
                                <div style="width:70%;height: 60%">
                                    <button type="reset" class="btn btn-primary  btn-block">清空</button>

                                </div>
                                <br>
                                <div style="width:70%;height: 60%">
                                    <button type="submit" class="btn btn-primary  btn-block" id="register">提交</button>

                                </div>
                            </div>
                        </form>


                    </div>
                </div>
            </div>
            <div class="col-lg-1">
            </div>
            <div class="col-lg-2">

                <div id="footer1">
                    <img src="33bog.gif" style="position:fixed;top: 50%;">
                </div>
            </div>
        </div>
    </div>
</div>





</body>
</html>
