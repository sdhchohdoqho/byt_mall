<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../static/CSS/personaltrain.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
                        <a href="${pageContext.request.contextPath}/ly/settledin2train.jsp.jsp">我要开店</a>
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
        <div class="col-sm-8" style="background-color:#ffedb7;font-size:12px;">
            <div class="main-list">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#p1" data-toggle="tab">店铺基本设置</a></li>
                    <li><a href="#p2" data-toggle="tab">域名设置</a></li>
                    <li><a href="#p3" data-tpggle="tab">物流跟踪信息</a></li>
                    <li><a href="#p4" data-toggle="tab">地址库</a></li>
                </ul>
                <div class="tab-content" id="info-set">
                    <div id="p1" class="tab-pane fade in active">
                        <div class="main-list-warning">
                            您填写的信息建在店铺前台展示给买家，请认真填写！
                        </div>
                        <div class="row">
                            <div class="col-sm-2" style="background-color:#f9e4e9;">
                                <span>基础信息</span>
                            </div>
                            <div class="col-sm-10" style="background-color:#c5bfb6;">
                                <form class="basicConfirm">
                                    <label for="store-name">店铺名称：</label>
                                    <input type="text" id="store-name" name="store-name"><br>
                                    <label for="store-symbol-upload">店铺标志：<input type="image" id="store-symbol" name="store-symbol"></label>
                                    <input type="file" id="store-symbol-upload" name="store-symbol-upload" defaultValue="上传图片"><br>
                                    <label for="store-signature">店铺签名：</label>
                                    <input type="text" id="store-signature" name="store-signature"><br>
                                    <label for="store-activity">店铺动态：</label>
                                    <input type="text" id="store-activity" name="store-activity"><br>
                                    <label for="store-category">主营类别：</label>
                                    <input type="text" id="store-category" name="store-category"><br>
                                    <p style="border:1px solid orangered">店铺签名、动态和主营类别会加入到店铺索引中！</p>
                                    <label for="store-address">经营地址：</label>
                                    <select name="store-address" id="store-address">
                                        <option value="Beijing">北京</option>
                                        <option value="Shanghai">上海</option>
                                        <option value="Guangzhou">广州</option>
                                    </select><br>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <label for="store-origin">主要货源：</label>
                                        </div>
                                        <div class="col-sm-4">
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">线下批发市场<br>
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">北邮淘批发<br>
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">自己生产<br>
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">自费公司渠道
                                        </div>
                                        <div class="col-sm-4">
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">实体店拿货<br>
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">分销/代销<br>
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">代工生产<br>
                                            <input type="checkbox" id="store-origin" name="store-origin" value="">货源还未确定
                                        </div>
                                    </div>

                                    <label for="store-introduction">店铺介绍：</label><br>
                                    <textarea id="store-introduction" rows="10" cols="30"></textarea><br>
                                    <input type="radio" id="store-confirmation" name="store-confirmation" value="" style="font-size:8px;">我声明，此页面填写内容真实有效<br>
                                    <input type="button" onclick="javascrtpt:window.location.href='/ly/seller4train.jsp'" value="保存">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="p2" class="tab-pane fade">
                        <div class="main-list-warning">
                            您的店铺的初始域名为：
                            <span class="user-init-url">bupttqud.com</span>
                        </div>
                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="url-model">
                                    <div class="url-model-sign1">
                                        您的当前域名为：
                                        <span class="user-new-url">bupttqud</span>
                                        <a href="">更改域名</a>
                                    </div>
                                    <div class="url-model-sign2">
                                        绑定时间：
                                        <span class="user-url-updatetime">2019.8.1</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="p3" class="tab-pane fade">

                    </div>
                    <div id="p4" class="tab-pane fade">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
