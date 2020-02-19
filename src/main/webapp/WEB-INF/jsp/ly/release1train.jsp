<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <link rel="stylesheet" href="release1train.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="release1train.js"></script>
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
        <div class="col-sm-8 col-sm-offset-2" style="background-color:#fff8cf;">
            <div class="release1">
                <form class="release1-form" style="background-color:grey;">
                    <span class="search-title">类目搜索：</span>
                    <input type="text" id="searchbox" name="search-element" value="">
                    <input type="button" id="searchbox" name="search-element" value="搜索">
                </form>
            </div>
            <div class="release2">
                <div class="release2-content">
                    <div class="row">
                        <div class="col-sm-4">
                            <ul id="release2-kind1">
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>6</li>
                                <li>7</li>
                                <li>8</li>
                                <li>9</li>
                            </ul>
                        </div>
                        <div class="col-sm-4">
                            <ul id="release2-kind2">
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>6</li>
                                <li>7</li>
                                <li>8</li>
                                <li>9</li>
                            </ul>
                        </div>
                        <div class="col-sm-4">
                            <ul id="release2-kind3">
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>6</li>
                                <li>7</li>
                                <li>8</li>
                                <li>9</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="release2-content-confirm">
                    <span class="confirm-point">您当前的选择是：</span>
                    <span class="confirm-point-name"></span>
                </div>
            </div>
            <div class="release3">
                <input type="button" id="next" name="next-element" value="我已阅读以下规则，现在发布宝贝" onclick="javascript:window.location.href='release2train.jsp'">
            </div>
        </div>
    </div>
</div>
</body>
</html>
