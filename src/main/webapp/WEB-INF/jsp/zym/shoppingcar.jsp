<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/7/23
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>购物车</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../static/CSS/header.css">
    <link rel="stylesheet" href="../../../static/CSS/shoppingcar.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        // $(document).ready(function () {
        //     $.ajax({
        //         type:"POST",
        //         url:"/shoppingcar/addtolist",
        //         data:{goodid:2,goodprice:9,goodnumber:9,listinfo:"test"},
        //         success:function () {
        //             alert("加入成功")
        //         }
        //     })
        // });

        function deleteshoppinglist()
        {
            $("input[type='checkbox'][name='CheckBox']:checked").each(
                function()
                {
                    $.ajax({
                        type:"POST",
                        url: "/shoppingcar/delete",
                        data:{shoppinglistid:$(this).val()},
                        success:function(data)
                        {
                            $("div[id="+data+"]").remove();
                            var selectedgood = document.getElementById("selectedgood");
                            selectedgood.innerHTML = "已选商品0件";
                        }
                    })
                }
            );
        }

        function checkboxchanged() {
            var n = 0;
            var totalprice = 0;
            $("input[type='checkbox'][name='CheckBox']:checked").each(
              function () {
                  n = n + 1;
                  $("#botton").prop("disabled",false);
                  $.ajax({
                      type:"POST",
                      url:"/shoppingcar/select",
                      data:{shoppinglistid:$(this).val(),selected:1},
                      async:false,
                      success:function (data)
                      {
                          totalprice = totalprice + data.goodprice*data.goodnumber;
                      }
                  })
              }
            );
            $("input[type='checkbox'][name='CheckBox']:not(:checked)").each(
                function () {
                    $.ajax({
                        type:"POST",
                        url:"/shoppingcar/select",
                        data:{shoppinglistid:$(this).val(),selected:0}
                    })
                }
            );
            var total = document.getElementById("totalprice");
            total.innerHTML = "￥"+totalprice;

            var selectedgood = document.getElementById("selectedgood");
            selectedgood.innerHTML = "已选商品"+n+"件";
            if(n === 0)
            {
                $("#botton").prop("disabled",true);
                $("input[name='select-all']").prop("checked",false);
                total.innerHTML = "￥0";
            }
        }

        function addnumber(obj) {
            var id = Number(obj.id);
            var counter = $("input[name='counter'][id='"+id+"']");
            var goodnumber = Number(counter.val()) + 1;
             var shoppinglistid = Number(counter.attr("id"));
            $.ajax({
                type:"POST",
                url:"/shoppingcar/update",
                data:{shoppinglistid:shoppinglistid,goodnumber:goodnumber},
                async:false,
                success:function (price)
                {
                    $("input[name='counter'][id='"+id+"']").prop("value",goodnumber);
                    var total = document.getElementById("totalprice"+shoppinglistid.toString());
                    total.innerHTML = "￥"+price*goodnumber;
                }
            });
            updatetotalprice();
         }

        function updatenumber(obj) {
             var shoppinglistid = Number(obj.id);
             var goodnumber = Number(obj.value);
             $.ajax({
                 type: "POST",
                 url: "/shoppingcar/update",
                 data: {shoppinglistid: shoppinglistid, goodnumber: goodnumber},
                 async:false,
                 success: function (price) {
                     $("input[name='counter'][id='" + shoppinglistid + "']").prop("value", goodnumber);
                     var total = document.getElementById("totalprice" + shoppinglistid.toString());
                     total.innerHTML = "￥" + price * goodnumber;
                 }
             });
            updatetotalprice()
         }

        function reducenumber(obj) {
             var id = Number(obj.id);
             var counter = $("input[name='counter'][id='"+id+"']");
             var goodnumber = Number(counter.val());
             if(goodnumber>1)
             {
                 goodnumber = goodnumber - 1;
                 var shoppinglistid = Number(counter.attr("id"));
                 $.ajax({
                     type:"POST",
                     url:"/shoppingcar/update",
                     data:{shoppinglistid:shoppinglistid,goodnumber:goodnumber},
                     async:false,
                     success:function (price)
                     {
                         $("input[name='counter'][id='"+id+"']").prop("value",goodnumber);
                         var total = document.getElementById("totalprice"+shoppinglistid.toString());
                         total.innerHTML = "￥"+price*goodnumber;
                     }
                 });
             }
             updatetotalprice();
         }

        function deleteone(obj) {
            $.ajax({
                type:"POST",
                url: "/shoppingcar/delete",
                data:{shoppinglistid:obj.id},
                success:function(data)
                {
                    $("div[id="+data+"]").remove();
                }
            })
        }

        function selectall(checkbox) {
            if(checkbox.checked)
            {
                $("input[type='checkbox'][name='CheckBox']").each(
                    function () {
                        $(this).prop("checked",true);
                    }
                )
            }
            else
            {
                $("input[type='checkbox'][name='CheckBox']").each(
                    function () {
                        $(this).prop("checked",false);
                    }
                )
            }
        }

        function updatetotalprice() {
            var totalprice = 0;
            $("input[type='checkbox'][name='CheckBox']:checked").each(
                function () {
                    $.ajax({
                        type:"POST",
                        url:"/shoppingcar/select",
                        data:{shoppinglistid:$(this).val(),selected:1},
                        async:false,
                        success:function (data)
                        {
                            totalprice = totalprice + data.goodprice*data.goodnumber;
                        }
                    })
                }
            );
            var total = document.getElementById("totalprice");
            total.innerHTML = "￥"+totalprice;
        }
    </script>
</head>
<body>
    <div class="container-fluid">
        <%@include file="../header.jsp"%>
        <div class="row" style="padding-top: 10px;">
            <div class="col-xs-8 col-xs-offset-2">
                <div class="row myattribute">
                    <label class="col-xs-4 mylabel">
                        商品信息
                    </label>
                    <label class="col-xs-2 mylabel">
                        单价
                    </label>
                    <label class="col-xs-2 mylabel">
                        数量
                    </label>
                    <label class="col-xs-2 mylabel">
                        金额
                    </label>
                    <label class="col-xs-2 mylabel-last">
                        操作
                    </label>
                </div>
                <c:forEach var="shoppinglistmodel" items="${shoppinglistmodels}">
                    <div class="list-group row mylist-shoppingcar" id=${shoppinglistmodel.shoppinglistid}>
                        <div class="col-xs-1">
                            <input type="checkbox" name="CheckBox" value="${shoppinglistmodel.shoppinglistid}" onchange="checkboxchanged()">
                        </div>
                        <div class="col-xs-1 img-div">
                            <div class="myimg">
                                <a href="#" class="thumbnail">
                                    <img src="static\src\cat.bmp" alt="...">
                                </a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                            商品信息
                        </div>
                        <div class="col-xs-2">
                            ￥${shoppinglistmodel.goodprice}
                        </div>
                        <div class="col-xs-2">
                                <button class="counter-button" id="${shoppinglistmodel.shoppinglistid}" onclick="reducenumber(this)">
                                    -
                                </button>
                                <input  value="${shoppinglistmodel.goodnumber}" class="counter-amount" name="counter" id="${shoppinglistmodel.shoppinglistid}" oninput="updatenumber(this)">
                                <button class="counter-button" id="${shoppinglistmodel.shoppinglistid}" onclick="addnumber(this)">
                                    +
                                </button>
                        </div>
                        <div class="col-xs-2" id="totalprice${shoppinglistmodel.shoppinglistid}">
                            ￥${shoppinglistmodel.goodprice*shoppinglistmodel.goodnumber}
                        </div>
                        <div class="col-xs-2 operator-div">
                            <div class="operator">
                                <p>
                                    <a class="a-operator" href="\jyx\pic\Favorites.jsp">
                                        加入收藏夹
                                    </a>
                                </p>
                                <br/>
                                <a class="a-operator" href="#" id="${shoppinglistmodel.shoppinglistid}" onclick="deleteone(this)">
                                    删除
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="row">
                    <nav aria-label="Page navigation">
                        <ul class="pagination mypage">
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
                <div class="row mylist-operator">
                    <div class="col-xs-1 mylabel-button">
                        <input type="checkbox" name="select-all" onchange="checkboxchanged()" onclick="selectall(this)">全选
                    </div>
                    <div class="col-xs-1 mylabel-button">
                        <a class="a-operator" href="#" onclick="deleteshoppinglist()">
                            删除
                        </a>
                    </div>
                    <div class="col-xs-2 mylabel-button">
                        <a class="a-operator" href="#">
                            移入收藏夹
                        </a>
                    </div>
                    <div class="col-xs-1 mylabel-button">
                        <a class="a-operator" href="#">
                            分享
                        </a>
                    </div>
                    <div class="col-xs-2 mylabel-button">
                        <h4 class="vertical-middle" id="selectedgood">
                            已选商品0件
                        </h4>
                    </div>
                    <div class="col-xs-1 mylabel-button">
                        <h5 class="vertical-middle">
                           合计：
                        </h5>
                    </div>
                    <div class="col-xs-2 mylabel-button">
                        <h4 class="vertical-middle" style="color: red;" id="totalprice">
                            ￥0
                        </h4>
                    </div>
                    <div class="col-xs-2 mylabel-button" style="padding: unset;">
                        <button type="button" class="btn btn-default button-account" id="botton" disabled="disabled" onclick="javascript:window.location.href='/order-payment'">结算</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
