<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <link rel="stylesheet" href="release2train.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
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
        <div class="col-sm-8 col-sm-offset-2" style="background-color:#f0e8cf;">
            <div class="release1">
                <div class="release1-title" style="background-color:grey;">
                    <h4>商品发布</h4>
                </div>
                <div class="release1-content">
                        <span class="release1-category">类目：
                            <span class="category-name">

                            </span>
                        </span>
                    <a href="${pageContext.request.contextPath}/ly/release1train.jsp">切换类目</a>
                </div>
            </div>
            <div class="release2">
                <div class="release2-title">
                    1.商品基本信息
                </div>
                <div class="release2-content">
                    <div class="release2-content-form">
                        <div class="release2-content-kind">
                            <span class="goods-kind" style="background-color: #c5bfb6;">商品类型：</span>
                            <form class="goods-kind-content">
                                <input type="radio" id="all-new" name="all-new" value="all-new">
                                <label for="all-new">全新</label>
                                <input type="radio" id="second-hand" name="second-hand" value="second-hand">
                                <label for="second-hand">二手</label>
                            </form>
                        </div>
                        <div class="release2-content-topic">
                            <span class="goods-topic">商品标题：</span>
                            <input type="text" id="goods-name" name="goods-name" value="">
                            <span class="input-strain">0/50</span>
                        </div>
                        <div class="release2-content-hotpoint">
                            <span class="goods-hotpoint">商品卖点：</span><br>
                            <textarea id="goods-hotpoint-textarea"></textarea>
                            <span class="input-strain">0/150</span>
                        </div>
                        <div class="release2-content-attribute">
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="goods-attribute">商品属性</div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="goods-attribute-warning">错误填写商品属性，可能会引起宝贝下或搜索流量减少，请认真准确填写！</div>
                                    <div class="goods-attribute-detail">
                                        <form class="detail-option">
                                            <label for="brand">品牌</label>
                                            <select name="brand">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                            </select><br>
                                            <label for="itemNo">货号</label>
                                            <input type="text" id="itemNo" name="itemNo" value="">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="release2-content-picture">
                            <span class="goods-picture">商品图片：</span>
                            <div class="goods-picture-warning">商品主图不能超过3mb</div><br>
                            <img src="" class="img-responsive" alt="!">
                        </div>
                        <div class="release2-content-specification">
                            <span class="goods-specification">商品规格：</span>
                            <div class="goods-specification-detail">
                                <div class="specification1">
                                    <span class="specification1-topic">颜色分类</span>
                                    <div class="s1-row1">
                                        <input type="checkbox" id="row1-col1" name="row1-col1" value="">
                                        <input type="text" id="row1-col2" name="row1-col2" value="选择主色">
                                        <input type="text" id="row1-col3" name="row1-col3" value="备注（如偏深偏浅等）">
                                        <input type="button" id="row1-col4" name="row1-col4" value="上传图片">
                                    </div>
                                </div>
                                <div class="specification2">
                                    <span class="specification2-topic">尺码</span>
                                    <form class="s2-row1">
                                        <input type="radio" id="row1-col1" name="size" value="">
                                        <label for="row1-col1">通用</label>
                                        <input type="radio" id="row1-col2" name="size" value="">
                                        <label for="row1-col2">中国码</label>
                                        <input type="radio" id="row1-col3" name="size" value="">
                                        <label for="row1-col3">英码</label>
                                        <input type="radio" id="row1-col4" name="size" value="">
                                        <label for="row1-col4">美码</label>
                                        <input type="radio" id="row1-col5" name="size" value="">
                                        <label for="row1-col5">均码</label>
                                    </form>
                                    <form class="s2-row2">
                                        <input type="checkbox" id="size-kind1" name="size-kind" value="">
                                        <label for="size-kind1">145/80A</label>
                                        <input type="checkbox" id="size-kind2" name="size-kind" value="">
                                        <label for="size-kind2">150/80A</label>
                                        <input type="checkbox" id="size-kind3" name="size-kind" value="">
                                        <label for="size-kind3">155/80A</label>
                                        <input type="checkbox" id="size-kind4" name="size-kind" value="">
                                        <label for="size-kind4">160/84A</label>
                                        <input type="checkbox" id="size-kind5" name="size-kind" value="">
                                        <label for="size-kind5">165/88A</label>
                                        <input type="checkbox" id="size-kind6" name="size-kind" value="">
                                        <label for="size-kind6">170/92A</label>
                                        <input type="checkbox" id="size-kind7" name="size-kind" value="">
                                        <label for="size-kind7">175/96A</label>
                                        <input type="checkbox" id="size-kind8" name="size-kind" value="">
                                        <label for="size-kind8">175/100A</label>
                                    </form>
                                </div>
                                <div class="specification3">
                                    <span class="specification3-topic">商品销售规模</span>
                                    <div class="s3-row1">
                                        <span class="row1-col1">批量填充</span>
                                        <input type="text" id="row1-col2" name="row1-col2" value="价格">
                                        <input type="text" id="row1-col3" name="row1-col3" value="数量">
                                        <input type="button" id="row1-col4" name="row1-col4" value="确定">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="release2-content-issue" style="background-color: #c5bfb6;">
                            <span class="goods-issue">总发布：</span>
                            <div class="goods-issue-detail">
                                <div class="issue">
                                    <table class="issue-table" border="1">
                                        <tr>
                                            <th>价格</th>
                                            <th>数量</th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="release2-content-source">
                            <span class="goods-source">采购地：</span>
                            <form class="goods-source-content">
                                <input type="radio" id="domestic" name="domestic" value="">
                                <label for="domestic">国内</label>
                                <input type="radio" id="abroad" name="abroad" value="">
                                <label for="abroad">海外及港澳台</label>
                            </form>
                        </div>
                        <div class="release2-content-advanceBooking">
                            <span class="goods-advanceBooking">预售设置：</span>
                            <form class="goods-advanceBooking-content">
                                <input type="radio" id="noBooking" name="noBooking" value="">
                                <label for="noBooking">非预售</label>
                                <input type="radio" id="normalBooking" name="normalBooking" value="">
                                <label for="normalBooking">普通预售</label>
                                <input type="radio" id="timingBooking" name="timingBooking" value="">
                                <label for="timingBooking">定时预售</label>
                                <input type="radio" id="fullBooking" name="fullBooking" value="">
                                <label for="fullBooking">全款预售</label>
                            </form>
                        </div>
                        <div class="release2-content-video">
                            <span class="goods-video">商品视频：</span>
                            <div class="goods-video-content">

                            </div>
                        </div>
                        <div class="release2-content-description">
                            <span class="goods-description">商品描述：</span><br>
                            <div class="goods-description-content">
                                <textarea id="goods-description-textarea"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="release3">
                <div class="release3-title">
                    2.商品物流服务
                </div>
                <div class="release3-content">
                    <div class="release3-content-extraction">
                        <span class="goods-extraction">提取方式：</span>
                        <form class="goods-extraction-content">
                            <input type="checkbox" id="logistics-distribution" name="logistics-distribution" value="">
                            <label for="logistic-distribution">使用物流配送</label>
                        </form>
                        <div class="goods-extraction-extra">
                            <span class="logistic-distribution-set">物流设置</span>
                            <div class="logistic-distribution-set-warning">为了提升购物体验，北邮淘要求全网商品设置运费模板</div>
                            <div class="goods-set-show">
                                <form class="goods-set-template">
                                    <label for="show-template">运费模板</label>
                                    <select name="show-template">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                    </select>
                                    <input type="button" id="newtemplate" name="newtemplate" value="新建运费模板">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="release4">
                <div class="release4-title">
                    3.售后保障信息
                </div>
                <div class="release4-content">
                    <div class="release4-content-service">
                        <span class="goods-service">售后服务：</span>
                        <form class="goods-service-content">
                            <input type="checkbox" id="service1" name="service1" value="">
                            <label for="service1">提供发票</label><br>
                            <input type="checkbox" id="service2" name="service2" value="">
                            <label for="service2">保障服务</label><br>
                            <input type="checkbox" id="service3" name="service3" value="">
                            <label for="service2">退换货服务</label><br>
                            <input type="checkbox" id="service4" name="service4" value="">
                            <label for="service2">服务承诺</label>
                        </form>
                    </div>
                </div>
            </div>
            <div class="release5">
                <div class="release4-title">
                    4.商品其他信息
                </div>
                <div class="release4-content">
                    <div class="release4-content-other">
                        <span class="goods-inventoryCounting">库存计数：</span>
                        <form class="goods-inventoryCounting-content">
                            <input type="radio" id="before" name="before" value="">
                            <label for="before">买家拍下减库存</label>
                            <input type="radio" id="after" name="after" value="">
                            <label for="after">买家付款减库存</label>
                        </form><br>
                        <span class="goods-startTime">开始时间：</span>
                        <form class="goods-startTime-content">
                            <input type="radio" id="immediate" name="immediate" value="">
                            <label for="immediate">立刻开始</label>
                            <input type="radio" id="timing" name="timing" value="">
                            <label for="timing">定时上架</label>
                            <input type="radio" id="package" name="package" value="">
                            <label for="package">放入仓库</label>
                        </form><br>
                        <span class="goods-discount">会员打折：</span>
                        <form class="goods-discount-content">
                            <input type="radio" id="nodiscount" name="nodiscount" value="">
                            <label for="nodiscount">立刻开始</label>
                            <input type="radio" id="discount" name="discount" value="">
                            <label for="discount">定时上架</label>
                        </form><br>
                        <span class="goods-billboardRecommendation">橱窗推荐:</span>
                        <form class="goods-billboardRecommendation-content">
                            <input type="radio" id="recommend" name="recommend" value="">
                            <label for="recommend">是</label>
                            <input type="radio" id="norecommend" name="norecommend" value="">
                            <label for="norecommend">否</label>
                        </form>
                    </div>
                </div>
            </div>
            <input type="button" id="release-btn" name="release-btn" onclick="javascrtpt:window.location.href='/ly/seller4train.jsp'" value="确定" >
        </div>
    </div>
</div>
</body>
</html>
