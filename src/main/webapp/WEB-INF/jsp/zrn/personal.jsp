<%-- 
    Document   : personal
    Created on : 2019-11-9, 17:38:13
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <!--使用bootstarp是偷懒的最好方法-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <!--上一行是对移动端设备友好-->

        <title>个人中心</title>
    </head>
        <style type="text/css">

        #footer { 
            position: relative; 
            left:-221px;
            margin-top: -441px;/*等于footer的高度*/ 
            height: 50px; 
            clear:both; 
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
        .first_pop_btn li a{
            width: 237px;

            display: inline-block;

            height: 40px;
            line-height: 40px;
            font-weight: bold;
            font-size: 2.4rem;
            text-decoration: none;


        }


        .background{
            background: url(all_bg.png) repeat top left;
            margin:0

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
               background:url(img/xingkong.png)  no-repeat center center;
   background-size:cover;
   background-attachment:fixed;


        }
        
.navbar-nav > li > a{

     top: 40%;

    padding-bottom:0 ;

    height: 28px;

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
 <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/first.jsp" style="font-size:2rem"> 北邮淘</a>
                        <a>&nbsp&nbsp&nbsp&nbsp</a>

                    </div>
                    

                    <div>
                        <ul class="nav navbar-nav">

                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li>
                            
                            <li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li><li>&nbsp&nbsp&nbsp&nbsp</li>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            <li><a  href="${pageContext.request.contextPath}/zym/order-all.jsp" style="font-size:1.5rem"> 我的订单</a></li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>


                            <li><a  href="${pageContext.request.contextPath}/register.jsp" style="font-size:1.5rem"> 购物车</a></li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li><a  href="${pageContext.request.contextPath}/bug.jsp" style="font-size:1.5rem"> 账户设置</a></li>
                            
                             <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li><a href="${pageContext.request.contextPath}/messageBoard.jsp" style="font-size:1.5rem">收藏夹</a></li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li><a href="${pageContext.request.contextPath}/linkUs.jsp" style="font-size:1.5rem">商品分类</a></li>
                                                        <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li><a href="${pageContext.request.contextPath}/class.jsp" style="font-size:1.5rem">联系客服</a></li>
                                                        <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li>&nbsp&nbsp&nbsp&nbsp</li>
                            <li><a href="${pageContext.request.contextPath}/myCourse.jsp" style="font-size:1.5rem">消息中心</a></li>




                        </ul>


                    </div>
                </div>
            </nav>
                          <div class="container" >
            <div class="row">
                <div class="col-md-3 col-lg-3 col-sm-3">

                    <div class="menu" style="height:1000px;">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div style="margin-top:50px">

                            <a   role="button"  href="index.html" aria-expanded="false" aria-controls="collapseTwo" style="border-color:white;margin-left: 120px;color:red;margin-bottom: 50px">
                                全部功能
                            </a>
                        </div>
                            <div style="margin-top:20px">

                            <a   role="button" data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" style="border-color:white;margin-left: 120px">
                                已买到的宝贝
                            </a>
                            <div id="collapseOne" class="panel-collapse collapse">
                                <div class="list-group" style="margin-left:115px;margin-right: 150px">
                                    <a href="block1.jsp" class="list-group-item">物品1</a>
                                    <a href="block2.jsp" class="list-group-item">物品2</a>
                                    <a href="block3.jsp" class="list-group-item">物品3</a>
                                    <a href="block4.jsp" class="list-group-item">物品4</a>
                                    <a href="block5.jsp" class="list-group-item">物品5</a>
                                    <a href="block6.jsp" class="list-group-item">物品6</a>
                                </div>
                            </div>
                            </div>
                            <div style="margin-top:20px">
                            <a   role="button"  href="link.jsp" aria-expanded="false" aria-controls="collapseTwo" style="border-color:white;margin-left: 120px">
                                我的购物车
                            </a>
                            </div>
                            <div style="margin-top:20px">
                            <a   role="button"  href="bug.jsp" aria-expanded="false" aria-controls="collapseTwo" style="border-color:white;margin-left: 120px">
                                购买过的店铺
                            </a>
                            </div>
                            <div style="margin-top:20px">
                            <a "  role="button"  href="hello.jsp" aria-expanded="false" aria-controls="collapseTwo" style="border-color:white;margin-left: 120px">
                                我的收藏
                            </a>
                            </div>
                                                        <div style="margin-top:20px">
                            <a "  role="button"  href="/zym/roder-all.jsp" aria-expanded="false" aria-controls="collapseTwo" style="border-color:white;margin-left: 120px">
                                我的订单
                            </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5 col-sm-5">
                    

                        
                                <br/>
        <br/>
        


                        <div class="panel panel-primary" onmouseout="makevisible(this,50)" onmouseover="makeavisible(this,80)" style="opacity:0.5">

    <div class="panel-heading" onmouseout=">
                <h3 class="panel-title">个人资料 </h3>
    </div>
    <div class="panel-body"style="height:150px" >
        <br>    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a>用户名：永恒、明夜</a>  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a>我的收货地址</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a>我的支付方式</a>
        
        <hr style="margin-bottom: -5px">
        <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>待付款</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>待发货</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>待收货</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>待评价</a>

        
    </div>


</div>
        <div class="panel panel-primary" onmouseout="makevisible(this,50)" onmouseover="makeavisible(this,80)" style="opacity:0.5">
            
                <div class="panel-heading" onmouseout=">
                <h3 class="panel-title">我的物流 </h3>
    </div>
            <div class="panel-body"style="height:60px" >
                        <br> 手办1
        <a>确认收货</a>
            </div>
            <hr>
                        <div class="panel-body"style="height:60px" >
                        <br> 手办2
        <a>确认收货</a>
            </div>
            <hr>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <a href="first.jsp?pageIndex=1">首页</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="first.jsp?">上一页</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="first.jsp?">下一页</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="first.jsp?">末页</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<br/>
<p style="color:red">当前页数：1</p>
        </div>


        
                </div>
            </div>
                          </div>
    </body>
</html>
