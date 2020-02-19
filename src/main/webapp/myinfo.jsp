<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米商城-个人中心</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
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
    function checkboxchangedname(name) {
        if(name.innerHTML=="编辑") {
            $("#name-user").prop("disabled", false);
            $("#name-user").css("border","20px");
            $("#name-user").css("outline-color","red");



            name.innerHTML = "保存"
        }
        else
        {
            $("#name-user").prop("disabled", true);
            $("#name-user").css("border","none");
            $("#name-user").css("outline-color","none");
            name.innerHTML = "编辑"

        }




    }
    function checkboxchangedphone(name) {
        if(name.innerHTML=="编辑") {
            $("#phone-user").prop("disabled", false);
            $("#phone-user").css("border","5px");


            name.innerHTML = "保存"
        }
        else
        {
            $("#phone-user").prop("disabled", true);
            name.innerHTML = "编辑"

        }




    }
    function checkboxchangedpassword(name) {
        if(name.innerHTML=="编辑") {
            $("#password-user").prop("disabled", false);
            $("#password-user").css("border","5px");


            name.innerHTML = "保存"
        }
        else
        {
            $("#password-user").prop("disabled", true);
            name.innerHTML = "编辑"

        }




    }
    function checkboxchangedsignal(name) {
        if(name.innerHTML=="编辑") {
            $("#signal-user").prop("disabled", false);
            $("#signal-user").css("border","5px");


            name.innerHTML = "保存"
        }
        else
        {
            $("#signal-user").prop("disabled", true);
            name.innerHTML = "编辑"

        }




    }
    function checkboxchangedfavorite(name) {
        if(name.innerHTML=="编辑") {
            $("#favorite-user").prop("disabled", false);
            $("#favorite-user").css("border","5px");


            name.innerHTML = "保存"
        }
        else
        {
            $("#favorite-user").prop("disabled", true);
            name.innerHTML = "编辑"

        }




    }
    function checkboxchangedaddress(name) {
        if(name.innerHTML=="编辑") {
            $("#address-user").prop("disabled", false);
            $("#address-user").css("border","5px");


            name.innerHTML = "保存"
        }
        else
        {
            $("#address-user").prop("disabled", true);
            name.innerHTML = "编辑"

        }




    }



</script>
<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="">MIUI</a></li>
                <li>|</li>
                <li><a href="">米聊</a></li>
                <li>|</li>
                <li><a href="">游戏</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">小米商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="dingdanzhongxin.jsp">我的订单</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./login.html" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="./register.html" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li><a href="#top">个人中心</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->
<!-- start banner_x -->
<div class="banner_x center">
    <a href="./index.html" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="">小米手机</a></li>
            <li><a href="">红米</a></li>
            <li><a href="">平板·笔记本</a></li>
            <li><a href="">电视</a></li>
            <li><a href="">盒子·影音</a></li>
            <li><a href="">路由器</a></li>
            <li><a href="">智能硬件</a></li>
            <li><a href="">服务</a></li>
            <li><a href="">社区</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
            </div>
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<!-- end banner_x -->
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="./dingdanzhongxin.html" >我的订单</a></li>
                    <li><a href="">意外保</a></li>
                    <li><a href="">团购订单</a></li>
                    <li><a href="">评价晒单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="./self_info.html" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
                    <li><a href="">消息通知</a></li>
                    <li><a href="">优惠券</a></li>
                    <li><a href="">收货地址</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="grzlbt ml40">我的资料</div>
            <div class="subgrzl ml40" ><span>昵称</span><span><input id="name-user" type="text" disabled="true" value="${username}" style="border:none;background:none;"></input></span><span><a href="#" onclick="checkboxchangedname(this)">编辑</a></span></div>
            <div class="subgrzl ml40" ><span>手机号</span><span><input id="phone-user" type="text" disabled="true" value="${userphone}" style="border:none;background:none;"></span><span><a href="#" onclick="checkboxchangedphone(this)">编辑</a></span></div>
            <div class="subgrzl ml40"><span>密码</span><span><input id="password-user" type="text" disabled="true" value="${userpassword}" style="border:none;background:none;"></span><span><a href="#" onclick="checkboxchangedpassword(this)">编辑</a></span></div>
            <div class="subgrzl ml40"><span>个性签名</span><span>"<input id="signal-user" type="text" disabled="true" value="${usersignal}" style="border:none;background:none;">"</span><span><a href="#" onclick="checkboxchangedsignal(this)">编辑</a></span></div>
            <div class="subgrzl ml40"><span>收货地址</span><span>"<input id="address-user" type="text" disabled="true" value="${useraddress}" style="border:none;background:none;"></span><span><a href="#" onclick="checkboxchangedaddress(this)">编辑</a></span></div>
            <div class="subgrzl ml40" style="border: none"><span></span><span></span><span><a href="#">保存修改</a></span></div>

        </div>

        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->


</body>
</html>