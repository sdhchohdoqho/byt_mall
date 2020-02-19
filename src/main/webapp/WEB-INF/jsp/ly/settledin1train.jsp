<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="settledin1train.css">
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
    </div>
</div>
<br>
<div class="container">
    <div class="row">

        <div class="col-sm-9" style="background-color:#c5bfb6;">
            <div class="show-list">

            </div>
            <div class="sort-list">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2" style="background-color: grey;">
                        <div class="list-title">
                            <span>商品分类</span>
                        </div>
                        <div class="sort-list-content">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="content-element1">
                                        <img src="" class="img-responsive" alt="">
                                        <span class="img-name">二手市场</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="procedure-list">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2" style="background-color: grey;">
                        <div class="list-title">
                            <span>入驻流程</span>
                        </div>
                        <div class="procedure-list-content">
                            <img src="" class="img-responsive" alt="Settle In Procedure"
                        </div>
                    </div>
                </div>
            </div>
            <div class="choice-list">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2" style="background-color: grey;">
                        <div class="list-title">
                            <span>入驻选择</span>
                        </div>
                        <div class="choice-list-content">
                            <button type="submit" class="btn btn-default">
                                <a href="">入驻标准</a>
                            </button><br>
                            <button type="submit" class="btn btn-default">
                                <a href="/ly/personaltrain.jsp">入驻申请</a>
                            </button><br>
                            <button type="submit" class="btn btn-default">
                                <a href="">入驻进展</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
