<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:02
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
        div.goods-picture{
            border:1px solid black;
        }
        div.goods-gallery{
            margin-top:25%;
            margin-bottom:10%;
            border:1px solid #c5bfb6;
        }
        div.goods-wrap{
            border:1px solid #c5bfb6;
        }
        p.newp{
            color: #c5bfb6;
        }
        div.goods-detail-price{
            background-color:grey;
        }
        dl.price-list dt{
            float:left;
        }

        dl.transport-list dt{
            float:left;
        }
        dl.transport-list dt span{
            margin-left:5%;
        }
        ul.goods-detail-panel{
            list-style-type:none;
            margin-top: 5%;
        }
        ul.goods-detail-panel li{
            float:left;
            border-left-style: solid;
            border-right-style: solid;
            border-color: grey;
            text-align:center;
        }
        div.goods-detail-choice{
            margin-top:10%;
        }
        div.goods-detail-choice div.row div.col-sm-10 input[type=button]{
            float:left;
            width:20%;
            margin-left:3%;
        }
        div.goods-detail-choice div.row div.col-sm-10 input[type=image]{
            float:left;
            width:10%;
            margin-left:5%;
        }
        div.goods-detail-skin{
            margin-top:5%;
        }
        dl.skin-list{
            display:block;
        }
        dl.skin-list dt{
            float:left;
        }

        dd#skin-list1-amount input[type=text]{
            margin-left:15%;
            border:1px solid grey;
            display:inline-block;
            cursor:text;
            writing-mode: horizontal-tb;
        }
        span.skin-amount-btn{
            display:inline-block;
        }
        span.skin-amount-increase{
            border:1px solid grey;
            display:block;
            cursor:pointer;
        }
        span.skin-amount-decrease{
            border:1px solid grey;
            display:block;
            cursor:pointer;
        }
        div.skin-btn{
            margin-left:20%;
        }
        div.skin-btn a#skin-btn-purchase{
            float:left;
            color: #f9e4e9;
            border:1px solid #ff8224;
        }
        div.skin-btn a#skin-btn-addbasket{
            float:left;
            background-color: #ff8224;
            color: #f9e4e9;
            border:1px solid #ff8224;
        }
        div.goods-detail-promise{
            margin-top:10%;
        }
        ul.promise-list1-panel{
            list-style-type:none;
        }
        ul.promise-list1-panel li{
            float:left;
            margin-left:5%;
        }
        div.goods-particulars{
            margin-top:10%;
        }
        div.panel{
            margin-top:10%;
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
<div class="row">
    <div class="col-sm-3" style="background-color: #c5bfb6;">
        <div class="goods-picture">
            <img src="74.jpg" type="img-responsive" alt="Goods Picture" width="80%" style="margin-left:10%;margin-right:10%;margin-top:10%;">
            <div class="goods-gallery">
                <div class="row">
                    <div class="col-sm-2 col-sm-offset-1">
                        <img src="" type="img-responsive" alt="g1" width="80%">
                    </div>
                    <div class="col-sm-2">
                        <img src="" type="img-responsive" alt="g2" width="80%">
                    </div>
                    <div class="col-sm-2">
                        <img src="" type="img-responsive" alt="g3" width="80%">
                    </div>
                    <div class="col-sm-2">
                        <img src="" type="img-responsive" alt="g4" width="80%">
                    </div>
                    <div class="col-sm-2">
                        <img src="" type="img-responsive" alt="g5" width="80%">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-9" style="background-color: #c5bfb6;">
        <div class="goods-wrap">
            <div class="goods-detail-title">
                <h1>商品标题</h1>
                <p class="newp">商品卖点</p>
            </div>
            <div class="goods-detail-price">
                <dl class="price-list">
                    <dt class="price-list1">价格</dt>
                    <dd class="price-list1-content">

                    </dd><br>
                    <dt class="price-list2">促销价</dt>
                    <dd class="price-list2-content">

                    </dd><br>
                    <dt class="price-list3">本店活动</dt>
                    <dd class="price-list3-content">

                    </dd>
                </dl>
            </div>
            <br>
            <div class="goods-detail-transport">
                <dl class="transport-list">
                    <dt class="transport-list1">运费</dt>
                    <dt class="transport-list1-content">
                        <span class="transport-deliveryAddr">北京</span> 至
                        <span class="transport-mutiAddr">上海</span>
                        <span class="transport-form">快递包邮</span>
                    </dt>
                </dl>
            </div>
            <br>
            <ul class="goods-detail-panel">
                <li class="goods-detail-item-sellcount" style="width:50%;">
                    <span class="item-label">月销量</span>
                    <span class="item-count"></span>
                </li>
                <li class="goods-detail-item-reviewcount" style="width:50%;">
                    <span class="item-label">评价数</span>
                    <span class="item-count"></span>
                </li>
            </ul>
            <div class="goods-detail-choice">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="goods-detail-size">
                            <span class="size-title">尺码</span>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <input type="button" id="size-kind1" name="size-kind1" value="145/80A">
                        <input type="button" id="size-kind2" name="size-kind2" value="150/80A">
                        <input type="button" id="size-kind3" name="size-kind3" value="155/80A">
                        <input type="button" id="size-kind4" name="size-kind4" value="160/80A">
                        <input type="button" id="size-kind5" name="size-kind5" value="165/88A">
                        <input type="button" id="size-kind6" name="size-kind6" value="170/92A">
                        <input type="button" id="size-kind7" name="size-kind7" value="175/96A">
                        <input type="button" id="size-kind8" name="size-kind8" value="175/100A">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <div class="goods-detail-color">
                            <span class="color-title">颜色分类</span>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <input type="image" id="color-kind1" name="color-kind1" value="">
                    </div>
                </div>
            </div>
            <div class="goods-detail-skin">
                <dl class="skin-list">
                    <dt class="skin-list1">数量</dt>
                    <dd id="skin-list1-amount">
                        <input type="text" class="skin-amount-input" value="1">
                        <span class="skin-amount-btn">
                                <span class="skin-amount-increase">o</span>
                                <span class="skin-amount-decrease">o</span>
                            </span>
                        <span class="skin-amount-unit">件</span>
                    </dd>
                </dl>
                <div class="skin-btn">
                    <a href="${pageContext.request.contextPath}/../zym/shoppingcar.jsp" id="skin-btn-purchase" role="button">
                        立即购买
                    </a>
                    <a href="${pageContext.request.contextPath}/../zym/shoppingcar.jsp" id="skin-btn-addbasket" role="button">
                        加入购物车
                    </a>
                </div>
            </div>

            <div class="goods-detail-promise">
                <div class="row">
                    <div class="col-sm-2" style="background-color: #ff701d">
                        <span class="promise-list1">服务承诺</span>
                    </div>
                    <div class="col-sm-10" style="background-color: #c5bfb6">
                        <ul class="promise-list1-panel">
                            <li class="promise-list1-content1">赠保价险</li>
                            <li class="promise-list1-content2">正品保证</li>
                            <li class="promise-list1-content3">极速退款</li>
                            <li class="promise-list1-content4">七天无理由退换</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="goods-particulars">
            <ul class="nav nav-tabs">
                <li><a href="#detail" data-toggle="tab">商品详情</a></li>
                <li><a href="#review" data-toggle="tab">累计评价</a></li>
            </ul>
            <div id="goods-detail-review" class="tab-content">
                <div id="detail" class="tab-pane fade in active">
                    1
                </div>
                <div id="review" class="tab-pane fade">
                    2
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                商品详情长图
            </div>
            <div class="panel-body">

            </div>
        </div>
    </div>
</div>
</body>
</html>
