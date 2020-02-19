<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../../static/CSS/header.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <title>我的足迹</title>
</head>
<body>
<%@include file="../../header.jsp"%>
<br>
<div class="w-75  mx-auto">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand col-md-8" href="#">我的足迹</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <button type="button" class="btn btn-light col-md-1">批量管理</button>
        <div class="input-group mb input-group-sm col-md-3">
            <input type="text" class="form-control" placeholder="Search" style="height:30px;width:10px">
            <div class="input-group-append">
                <button class="btn btn-success" type="submit">搜索</button>
            </div>
        </div>
    </nav>
    <h5>07.25 9件宝贝</h5>
    <table class="table table-bordered table table-hover">
        <tbody>
        <tr>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">安耐德热水器</h4>
                    <img class="card-img-top img-fluid " style="height:150px;width:150px" src="1.jpg" alt="Card image">
                    <p class="card-text">速热小型热水器电家用壁挂即热式卫生间淋浴快速热洗澡机恒温</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">宁红减肥茶</h4>
                    <img class="card-img-top img-fluid" style="height:150px;width:150px" src="2.jpg" alt="Card image">
                    <p class="card-text">宁红减肥茶叶瘦身肚子燃脂酵素粉清肠排油冬瓜荷叶瘦腿非神器排毒</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">澳斯蒙德男士休闲鞋</h4>
                    <img class="card-img-top img-fluid" style="height:150px ;width:150px" src="3.jpg" alt="Card image">
                    <p class="card-text">冬季男鞋棉鞋男士休闲鞋男款加绒加厚保暖鞋子潮流板鞋二棉鞋秋季</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
        </tr>
        <tr>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">波尔多AOC级干红葡萄酒</h4>
                    <img class="card-img-top" style="height:150px;width:150px" src="4.jpg" alt="Card image">
                    <p class="card-text">【买1箱送1箱】法国原瓶原装进口红酒波尔多AOC级干红葡萄酒</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">小米 Redmi K20 Pro</h4>
                    <img class="card-img-top" style="height:150px;width:150px" src="5.jpg" alt="Card image">
                    <p class="card-text">【赠无线蓝牙耳机】Xiaomi/小米 Redmi K20 Pro 全面屏骁龙855超广角AI三摄9手机官方旗舰店正品红米k20</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">饰品小蝶</h4>
                    <img class="card-img-top" style="height:150px;width:150px" src="6.jpg" alt="Card image">
                    <p class="card-text">手绘韩式甜美电镀金银首饰碟描金蕾丝收纳饰品小蝶甜品碟拍摄道具</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
        </tr>
        <tr>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">储物箱子</h4>
                    <img class="card-img-top" style="height:150px;width:150px" src="7.jpg" alt="Card image">
                    <p class="card-text">加厚特大号塑料收纳箱衣服整理箱清仓大号家用收纳盒衣物储物箱子</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">网红背包</h4>
                    <img class="card-img-top" style="height:150px;width:150px" src="8.jpg" alt="Card image">
                    <p class="card-text">单双肩包女2019新款时尚三用网红背包休闲百搭夏季旅行牛津布背包</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
            <td width="30%"><div class="card">
                <div class="card-body">
                    <h4 class="card-title">四件套宿舍被子</h4>
                    <img class="card-img-top" style="height:150px;width:150px" src="9.jpg" alt="Card image">
                    <p class="card-text">网红款夏季ins四件套宿舍被子三件套学生被单被套床单人床上用品4</p>
                    <a href="#" class="card-link">立即购买</a>
                    <a href="#" class="card-link">加入购物车</a>
                </div>
            </div></td>
        </tr>
        </tbody>
    </table>
    <ul class="pagination offset-md-9">
        <li class="page-item"><a class="page-link" href="">Previous</a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
</div>

</body>
</html>
