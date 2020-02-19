<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:17
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
        table{
            font-size:12px;
        }
        th,td{
            border:1px solid black;
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
        <div class="col-sm-8" style="height:800px;background-color:#f0e8cf">
            <ul class="list-inline">
                <a href="">
                    我是卖家
                </a>
                <a href="">
                    交易管理
                </a>
                <span>未支付订单</span>
            </ul>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="ID" class="col-sm-1 control-label" style="background-color: brown">ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="ID" placeholder="please">
                    </div>
                </div>
                <div class="form-group">
                    <label for="pid" class="col-sm-2 control-label">商品名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="pid">
                    </div>
                </div>
                <div class="form-group">
                    <label for="buyer" class="col-sm-2 control-label">买家</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="buyer">
                    </div>
                </div>
                <div class="form-group">
                    <label for="dingdanID" class="col-sm-2 control-label">订单编号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="dingdanID">
                    </div>
                </div>
                <div class="form-group">
                    <label for="boughttime" class="col-sm-2 control-label">成交时间</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="boughttime">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <button type="submit" class="btn btn-default">搜索订单</button>
                    </div>
                </div>
            </form>

            <table class="table table-bordered" style="margin-top:5px">
                <thead>
                <tr>
                    <th>商品名</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>订单编号</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered" style="margin-top:5px">
                <caption>以往订单记录  显示近30天的订单</caption>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>商品名</th>
                    <th>买家</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>订单编号</th>
                    <th>成交时间</th>
                    <th>收货情况</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
            <input type="button" value="下一页">

        </div>
    </div>
</div>
</body>
</html>
