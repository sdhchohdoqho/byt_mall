<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:04
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
        <div class="col-sm-8" style="height:500px;background-color:#ffdc6e">
        </div>
    </div>
</div>
</body>
</head>
</html>
