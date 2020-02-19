<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        div.category{
            padding-left:14px;
            padding-top:14px;
            padding-bottom:4px;
        }
        span.title{
            font-size:14px;
        }
        ul.list{
            list-style-type:none;
            display:block;
            font-size:12px;
            margin:4px;
            padding:4px;
            width:171px;
            height:27px;
        }
        ul.list li{
            float:left;
            color:black;
            width:70px;
            border:1px solid red;
        }
        ul.list li a{
            display: block;
            margin:0;
            color:black;
            text-decoration:none;
        }
        button.btn-default{
            background-color:blue;
            border:1px solid black;
            color:white;
            padding:2px;
        }
        div#run-title{
            border:1px solid red;
        }
        div#run-content{
            list-style-type:none;
            margin-top:20%;
            margin-bottom: 20%;
            border:1px solid red;
        }
    </style>
</head>
<body>
<div id="site-nav">
    <%@include file="../header.jsp"%>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <img src="wang.png" class="img-responsive" alt="Responsive Image" width="150">
        </div>
        <div class="col-sm-8">
            <span>商家中心</span>
        </div>
    </div>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-sm-4" style="background-color: #c5bfb6">
            <div class="category">
                <div>
                    <span class="title">交易管理</span>
                </div>
                <ul class="list">
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/seller1train.jsp">已卖出商品</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/seller9train.jsp">未支付订单</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/seller10train.jsp">失效订单</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <div>
                    <span class="title">商品管理</span>
                </div>
                <ul class="list">
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/release1train.jsp">发布商品</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/seller2train.jsp">调整记录</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/seller3train.jsp">货存商品</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <div>
                    <span class="title">店铺管理</span>
                </div>
                <ul class="list">
                    <li>
                        <a href="${pageContext.request.contextPath}/ly/settledin2train.jsp">我要开店</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <div>
                    <span class="title">物流管理</span>
                </div>
                <ul class="list">
                    <li>
                        <a href="">发货</a>
                    </li>
                    <li>
                        <a href="">物流工具</a>
                    </li>
                    <li>
                        <a href="">物流服务</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-sm-8" style="background-color: #ffdc6e">
            <div id="run-title">
                <span class="seller-status">我要开店</span>
            </div>
            <div id="run-content">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <h5>通过个人实名验证的商家创建的店铺</h5>
                        <br>
                        <img src="wang.jpg" class="img-responsive" alt="Responsive Image">
                        <br>
                        <button type="submit" class="btn btn-default" onclick="javascript:window.location.href='settledin1train.jsp'">创建个人店铺</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
