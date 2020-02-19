<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:15
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
        button.btn{
            background-color:blue;
            border:1px solid black;
            color:white;
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
                        <a href="">失效订单</a>
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
        <div class="col-sm-8" style="height:500px;background-color:#ffdc6e">
            <div class="container">
                <ul class="list-inline">
                    <a href="">
                        我是卖家
                    </a>
                    <a href="">
                        商品管理
                    </a>
                    <span>货存记录</span>
                </ul>
                <form class="form-horizontal" role="form" style="margin-top:30px;font-size:12px">
                    <div class="form-group">
                        <label for="ID" class="col-sm-2 control-label">ID</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="ID">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pid" class="col-sm-2 control-label">商品名</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="pid">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-8">
                            <button type="submit" class="btn btn-default">搜索库存</button>
                        </div>
                    </div>
                </form>
                <table class="table table-bordered" style="margin-top:30px;font-size:12px">
                    <thead>
                    <tr>
                        <th></th>
                        <th>ID</th>
                        <th>货存量</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><label><input type="checkbox" value=""></label></td>
                        <td></td>
                        <td></td>
                        <td><a href="">编辑商品</a></td>
                    </tr>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-default">批量增加</button>
                <button type="submit" class="btn btn-default">批量减少</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
