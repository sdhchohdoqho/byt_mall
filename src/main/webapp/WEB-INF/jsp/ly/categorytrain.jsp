<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:00
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
        div#all-brand{
            margin:5px;
            border:1px solid #fff8cf;
        }
        div#all-brand-title{
            height:30px;
            border:1px solid grey;
            color:white;
        }
        div#all-brand-items{
            height:50px;
            border:1px solid grey;
        }
        div#item-list{
            margin-top:10px;
            margin-left:5px;
            margin-right:5px;
            border:1px solid #c5bfb6;
        }
        div#item-detail{
            margin-top:5px;
            border:1px solid #c5bfb6;
        }
        div.item-detail-member{
            margin:5px;
            width:120px;
            height:300px;
            border:1px solid #c5bfb6;
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
            <form class="form-inline" role="form">
                <div class="form-group">
                    <label class="sr-only" for="searchbox">搜索框</label>
                    <input type="text" class="form-control" id="searchbox" placeholder="please input!" width="200">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>
    </div>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <ul class="list-group">
                <li class="list-group-item" style="color:white;background-color: black">
                    所有产品分类
                </li>
                <li class="list-group-item" onclick="javascrtpt:window.location.href='categorytrain.jsp '">
                    二手市场
                </li>
                <li class="list-group-item">
                    图书音像
                </li>
                <li class="list-group-item">
                    食品饮料
                </li>
                <li class="list-group-item">
                    美容洗护
                </li>
                <li class="list-group-item">
                    家居家电
                </li>
                <li class="list-group-item">
                    男装
                </li>
                <li class="list-group-item">
                    女装
                </li>
                <li class="list-group-item">
                    数码产品
                </li>
            </ul>
        </div>
        <div class="col-sm-9" style="background-color:#c5bfb6">

            <div id="item-list">
                <div class="row">
                    <div class="col-sm-3" style="background-color:grey;color:white;text-align:center">
                        商品列表
                    </div>
                    <div class="col-sm-4 col-sm-offset-5" style="background-color:#fff8cf">
                        <ul class="list-inline">
                            <a href="" class="default-sort" style="border:1px solid grey">
                                默认排序
                            </a>
                            <a href="" class="price-sort" style="border:1px solid grey">
                                价格
                            </a>
                            <a href="" class="sales-sort" style="border:1px solid grey">
                                销量
                            </a>
                        </ul>
                    </div>
                </div>
                <div id="item-detail">
                    <div class="item-detail-member">
                        <a href="${pageContext.request.contextPath}/ly/goodstrain.jsp">
                            <img src="" class="img-responsive" alt="Goods Picture">
                            <h4>商品</h4>
                        </a>
                        <a href="${pageContext.request.contextPath}/ly/goodstrain.jsp">
                            <img src="" class="img-responsive" alt="Goods Picture">
                            <h4>商品</h4>
                        </a>
                        <a href="${pageContext.request.contextPath}/ly/goodstrain.jsp">
                            <img src="" class="img-responsive" alt="Goods Picture">
                            <h4>商品</h4>
                        </a>
                        <a href="${pageContext.request.contextPath}/ly/goodstrain.jsp">
                            <img src="" class="img-responsive" alt="Goods Picture">
                            <h4>商品</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</head>
</html>
