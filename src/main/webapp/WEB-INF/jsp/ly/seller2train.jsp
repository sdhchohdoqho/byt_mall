<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
        button{
            background-color:blue;
            border:1px solid black;
            color:white;
            padding:2px;
        }
        input[type=button]{
            background-color:blue;
            border:1px solid black;
            color:white;
            margin-left:400px;
            margin-top:5px;
            padding:2px;
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
        <div class="col-sm-4" style="background-color: blueviolet">
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
                        <a href="${pageContext.request.contextPath}/ly/settledin1train.jsp">发布商品</a>
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
        <div class="col-sm-8" style="height:700px;background-color:red">
            <div class="container">
                <ul class="list-inline">
                    <a href="">
                        我是卖家
                    </a>
                    <a href="">
                        交易管理
                    </a>
                    <span>发布商品</span>
                </ul>
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="pid" class="col-sm-2 control-label">商品名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="pid">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">单价</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="price">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="category" class="col-sm-2 control-label">商品类别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="category">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="picture" class="col-sm-2 control-label">商品图片</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="picture">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-2 control-label">商品描述</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" rows="5" id="description"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-11">
                            <button type="submit" class="btn btn-default">发布</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
</body>
</html>

