<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/3
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>所有订单</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <link rel="stylesheet" href="../../../static/CSS/order-all.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <%@include file="../header.jsp"%>
        <div class="row" style="padding-top: 10px;">
            <div class="col-xs-8 col-xs-offset-2">
                <nav class="row navbar navbar-default">
                    <ul class="nav navbar-nav myorder">
                        <li class="active"><a href="order-all.jsp">所有订单</a></li>
                        <li><a href="order-waittopay.jsp">待付款</a></li>
                        <li><a href="order-waittoreceive.jsp">待收货</a></li>
                    </ul>
                </nav>
                <div class="row myattribute">
                    <label class="col-xs-4 mylabel">
                        商品信息
                    </label>
                    <label class="col-xs-1 mylabel">
                        单价
                    </label>
                    <label class="col-xs-1 mylabel">
                        数量
                    </label>
                    <label class="col-xs-2 mylabel">
                        金额
                    </label>
                    <label class="col-xs-2 mylabel">
                        状态
                    </label>
                    <label class="col-xs-2 mylabel-last">
                        操作
                    </label>
                </div>
                <div class="order-one tab-content">
                    <div class="tab-pane active" id="panel1">
                        <div class="row order-imformation">
                            <div class="col-xs-2 mytable">
                                <a class="vertical-middle a-tab" href="#panel2" data-toggle="tab">
                                    <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                                    2019-8-3
                                </a>
                            </div>
                            <div class="col-xs-10 mytable">
                                <h5 class="vertical-middle">
                                    订单号：123456789
                                </h5>
                            </div>
                        </div>
                        <div class="row mylist-order">
                            <div class="col-xs-1 img-div">
                                <div class="myimg">
                                    <a href="#" class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/src/cat.bmp" alt="...">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-3">
                                商品信息
                            </div>
                            <div class="col-xs-1">
                                ￥100
                            </div>
                            <div class="col-xs-1">
                                2
                            </div>
                            <div class="col-xs-2">
                                ￥200
                            </div>
                            <div class="col-xs-2 operator-div">
                                <div class="operator">
                                    <p style="color: black">
                                        交易完成
                                    </p>
                                    <br/>
                                    <a class="a-operator" href="#">
                                        订单详情
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-2 operator-div">
                                <div class="operator">
                                    <p>
                                        <a class="a-operator" href="#">
                                            加入收藏夹
                                        </a>
                                    </p>
                                    <br/>
                                    <a class="a-operator" href="#">
                                        再次购买
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="row mylist-order">
                            <div class="col-xs-1 img-div">
                                <div class="myimg">
                                    <a href="#" class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/src/cat.bmp" alt="...">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-3">
                                商品信息
                            </div>
                            <div class="col-xs-1">
                                ￥100
                            </div>
                            <div class="col-xs-1">
                                2
                            </div>
                            <div class="col-xs-2">
                                ￥200
                            </div>
                            <div class="col-xs-2 operator-div">
                                <div class="operator">
                                    <p style="color: black">
                                        交易完成
                                    </p>
                                    <br/>
                                    <a class="a-operator" href="#">
                                        订单详情
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-2 operator-div">
                                <div class="operator">
                                    <p>
                                        <a class="a-operator" href="#">
                                            加入收藏夹
                                        </a>
                                    </p>
                                    <br/>
                                    <a class="a-operator" href="#">
                                        再次购买
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="panel2">
                        <div class="row order-imformation">
                            <div class="col-xs-2 mytable">
                                <a class="vertical-middle a-tab" href="#panel1" data-toggle="tab">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    2019-8-3
                                </a>
                            </div>
                            <div class="col-xs-10 mytable">
                                <h5 class="vertical-middle">
                                    订单号：123456789
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="order-one tab-content">
                    <div class="tab-pane active" id="panel3">
                        <div class="row order-imformation">
                            <div class="col-xs-2 mytable">
                                <a class="vertical-middle a-tab" href="#panel4" data-toggle="tab">
                                    <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                                    2019-8-3
                                </a>
                            </div>
                            <div class="col-xs-10 mytable">
                                <h5 class="vertical-middle">
                                    订单号：123456789
                                </h5>
                            </div>
                        </div>
                        <div class="row mylist-order">
                            <div class="col-xs-1 img-div">
                                <div class="myimg">
                                    <a href="#" class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/src/cat.bmp" alt="...">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-3">
                                商品信息
                            </div>
                            <div class="col-xs-1">
                                ￥100
                            </div>
                            <div class="col-xs-1">
                                2
                            </div>
                            <div class="col-xs-2">
                                ￥200
                            </div>
                            <div class="col-xs-2 operator-div">
                                <div class="operator">
                                    <p style="color: black">
                                        交易完成
                                    </p>
                                    <br/>
                                    <a class="a-operator" href="#">
                                        订单详情
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-2 operator-div">
                                <div class="operator">
                                    <p>
                                        <a class="a-operator" href="#">
                                            加入收藏夹
                                        </a>
                                    </p>
                                    <br/>
                                    <a class="a-operator" href="#">
                                        再次购买
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="panel4">
                        <div class="row order-imformation">
                            <div class="col-xs-2 mytable">
                                <a class="vertical-middle a-tab" href="#panel3" data-toggle="tab">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    2019-8-3
                                </a>
                            </div>
                            <div class="col-xs-10 mytable">
                                <h5 class="vertical-middle">
                                    订单号：123456789
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
                <nav aria-label="Page navigation">
                    <ul class="pagination" style="float: right;">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</body>
</html>
