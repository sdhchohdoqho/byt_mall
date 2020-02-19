<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/8/4
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="settledin3train.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="settledin3train.js"></script>
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
            <span>卖家入驻</span>
        </div>
    </div>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2" style="background-color: blueviolet">
            <div class="settle1">

            </div>
            <div class="settle2">
                <div class="settle2-title" style="background-color:grey;border:1px solid black;">
                    <h4>阶段一：提交入驻资料</h4>
                </div>
                <div class="settle2-picture">

                </div>
            </div>
            <div class="settle3">
                <div class="settle3-title">
                    <span>选择品牌、类目</span>
                </div>
                <div class="settle3-content">
                    <div class="row">
                        <div class="col-sm-4" style="background-color: red;">
                            <div class="settle3-content1">
                                <span>填写品牌商标注册号</span>
                                <form class="labelConfirm" style="background-color: green;">
                                    <input type="text" name="pid" placeholder="请输入商标号">
                                    <input type="button" value="确定" onclick="appendText()">
                                    <div class="slip-box1">
                                        <div class="slip-box1-header">
                                            <span>选择类目</span>
                                        </div>
                                        <div class="slip-box1-content">
                                            <span>一个品牌只可选择一个主要经营大类，切换大类则会覆盖之前的操作</span><br>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <ul class="slip-box1-ul1">
                                                        <li>二手市场</li>
                                                        <li>服饰</li>
                                                        <li>化妆品</li>
                                                        <li>食品</li>
                                                        <li>图书音像</li>
                                                        <li>运动户外</li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6">
                                                    <ul class="slip-box1-ul2">

                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slip-box1-record">
                                                <span>已选：</span>
                                                <span class="record-content"></span>
                                            </div>
                                        </div>
                                        <div class="slip-box1-footer">
                                            <input type="button" id="footer-next" value="下一步">
                                            <input type="button" id="footer-cancel" value="取消">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="settle3-content2">
                                <span>选择你需要经营的类目</span>
                                <input type="button" id="choose-kind" value="选择类目">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="settle4">
                <div class="settle4-title">
                    <span>特别注意事项</span>
                </div>
                <div class="settle4-content1">
                    <div class="radio">
                        <label>
                            <input type="radio" name="optionConfirm" id="qualificationConfirm" value="option1">
                            请再次确认是否已具备所要求的资质
                        </label>
                    </div>
                    <div class="qualification">

                    </div>
                    <button type="button" class="btn btn-default">下一步</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
