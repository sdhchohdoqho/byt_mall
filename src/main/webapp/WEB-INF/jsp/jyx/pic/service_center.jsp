<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../../static/CSS/header.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <title>服务中心</title>
</head>
<body>
<%@include file="../../header.jsp"%>
<div class="container">
    <br>
    <h3 class="font-italic">服务中心</h3>
    <br>
    <!-- Nav pills -->
    <ul class="nav nav-pills" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="pill" href="#home">系统消息</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="pill" href="#menu1">联系商家</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="pill" href="#menu2">好友消息</a>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div id="home" class="container tab-pane active"><br>
            <div class="row">
                <div class="col-md-10 bg-secondary text-white" style="height:450px">
                    <h4>悦市小星</h4>
                    <div style="height:80%">
                        Hi，你好，小星在此等主人很久了，有什么烦恼快和小星说说吧～<br>
                        <br>
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="输入">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit">发送</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <h4 class="text-center">联系我们</h4>
                    <br>
                    <div class="container mx-auto">
                        <img src="weixin.jpg" class="img-fluid rounded">
                        <p class="text-center">关注公众号</p>
                        <p class="text-center">qq</p>
                        <p class="text-center">1785544032</p>
                        <p class="text-center">电话号码</p>
                        <p class="text-center">18810067738</p>
                    </div>

                </div>
            </div>
        </div>
        <div id="menu1" class="container tab-pane fade"><br>
            <div class="row">
                <div class="col-md-10 bg-secondary text-white" style="height:450px">
                    <h4>依乐高旗舰店</h4>
                    <div style="height:80%">
                        欢迎光临！！！<br>
                        <br>
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="输入">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit">发送</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="container">
                        <h4>联系商家</h4>
                        <ul class="list-group">
                            <li class="list-group-item active">依乐高旗舰店</li>
                            <li class="list-group-item">韩宁骏尔汇专卖店</li>
                            <li class="list-group-item">盛蒂旗舰店</li>
                            <li class="list-group-item">恩爱鸟旗舰店</li>
                            <li class="list-group-item">为梦想追求者</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="menu2" class="container tab-pane fade"><br>
            <div class="row">
                <div class="col-md-10 bg-secondary text-white" style="height:450px">
                    <h4>张秋月</h4>
                    <div style="height:80%">
                        我看一个电脑挺好的，推荐给你。<br>
                        <br>
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="输入">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit">发送</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="container">
                        <h4>好友列表</h4>
                        <ul class="list-group">
                            <li class="list-group-item active">张秋月</li>
                            <li class="list-group-item">郭明行</li>
                            <li class="list-group-item">李嘉怡</li>
                            <li class="list-group-item">张天昊</li>
                            <li class="list-group-item">王玉欣</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
