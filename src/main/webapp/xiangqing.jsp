<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

    <script type="text/javascript" src="bootstrap.min.js"></script>
    <!--使用bootstarp是偷懒的最好方法-->
    <meta name="viewport"  content="width=device-width;minimum-scale=1.0;initial-scale=1.0; maximum-scale=2.0; charset=UTF-8">
    <!--上一行是对移动端设备友好-->
</head>
<body onload="getgoodinfo()">
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="">MIUI</a></li>
                <li>|</li>
                <li><a href="">米聊</a></li>
                <li>|</li>
                <li><a href="">游戏</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">小米商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="">购物车</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./login.html" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="./register.html" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li><a href="">消息通知</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
    <a href="./index.html" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="">小米手机</a></li>
            <li><a href="">红米</a></li>
            <li><a href="">平板·笔记本</a></li>
            <li><a href="">电视</a></li>
            <li><a href="">盒子·影音</a></li>
            <li><a href="">路由器</a></li>
            <li><a href="">智能硬件</a></li>
            <li><a href="">服务</a></li>
            <li><a href="">社区</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
            </div>
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<!-- end banner_x -->


<!-- xiangqing -->
<form action="post" method="">
    <!--<div class="xiangqing">
        <div class="neirong w">
            <div class="xiaomi6 fl">小米6</div>
            <nav class="fr">
                <li><a href="">概述</a></li>
                <li>|</li>
                <li><a href="">变焦双摄</a></li>
                <li>|</li>
                <li><a href="">设计</a></li>
                <li>|</li>
                <li><a href="">参数</a></li>
                <li>|</li>
                <li><a href="">F码通道</a></li>
                <li>|</li>
                <li><a href="">用户评价</a></li>
                <div class="clear"></div>
            </nav>
            <div class="clear"></div>
        </div>
    </div>-->

    <div class="jieshao mt20 w">
        <div class="left fl" id="imgurl"><img src="./image/liebiao_xiaomi6.jpg"></div>
        <div class="right fr">
            <div class="h3 ml20 mt20" id="name"></div>
            <div class="jianjie mr40 ml20 mt10" id="subtitle"></div>
            <!--<div class="jiage ml20 mt10" id="spuprice"></div>-->
            <!--<div id="attribute">
            &lt;!&ndash;<div class="ft20 ml20 mt20">选择版本</div>
            <div class="xzbb ml20 mt10">
                <div class="banben fl">
                    <a>
                        <span>全网通版 6GB+64GB </span>
                        <span>2499元</span>
                    </a>
                </div>
                <div class="banben fr">
                    <a>
                        <span>全网通版 6GB+128GB</span>
                        <span>2899元</span>
                    </a>
                </div>
                <div class="clear"></div>
            </div>
            <div class="ft20 ml20 mt20">选择颜色</div>
            <div class="xzbb ml20 mt10">
                <div class="banben">
                    <a>
                        <span class="yuandian"></span>
                        <span class="yanse">亮黑色</span>
                    </a>
                </div>

            </div>&ndash;&gt;
            </div>-->
            <div id="panel">


                <div id="panel_sku_list"><pre></pre></div>


                <div id="panel_sel">



                </div>

            </div>
            <div class="xqxq mt20 ml20">
                <div class="top1 mt10">
                    <div class="left1 fl"></div>
                    <div class="right1 fr"></div>
                    <div class="clear"></div>
                </div>
                <div class="bot mt20 ft20 ftbc" id="skuprice"></div>
            </div>
            <div class="xiadan ml20 mt20">
                <input class="jrgwc" onclick="showsku()" type="button" name="jrgwc" value="立即选购" />
                <input class="jrgwc" onclick="skuinfo()" type="button" name="jrgwc" value="加入购物车" />
            </div>
            <div class="xiadan ml20 mt20" >
                <input class="jrgwc" style="margin-left: 20%;" onclick="addtofavorite()" type="button" name="jrgwc" value="加入收藏夹" />
            </div>
        </div>
        <div class="clear"></div>
    </div>
</form>
<!-- footer -->
<footer class="mt20 center">

    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>

</footer>

</body>
<script>
    var id = getQueryVariable("id");
    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i=0;i<vars.length;i++) {
            var pair = vars[i].split("=");
            if(pair[0] == variable){return pair[1];}
        }
        return(false);
    }
    function getgoodinfo() {
        getbasicinfobyid(id);
        //getspuinfobyid(id);
        sku = getskuinfobyid(id);
    }
    function getbasicinfobyid(id) {
        var xmlhttp;
        xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                good=JSON.parse(xmlhttp.responseText);
                document.getElementById('name').innerText = good.name;
                document.getElementById('subtitle').innerText = good.subtitle;
                document.getElementById('imgurl').innerHTML = `<img src="${good.imgurl}" alt="">`
            }
        }
        xmlhttp.open("GET","http://localhost:8091/good/get?id="+id,true);
        xmlhttp.send();
    }
    function getspuinfobyid(id) {
        var xmlhttp;
        xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                var spu=JSON.parse(xmlhttp.responseText);
                document.getElementById('description').value = spu.description;
                document.getElementById('photolist').value = spu.photolist;
                document.getElementById('videolist').value = spu.videolist;
                document.getElementById('reservelist').value = spu.reservelist;
            }
        }
        xmlhttp.open("GET","http://localhost:8091/spu/get?spu_id="+id,true);
        xmlhttp.send();
    }
    function getskuinfobyid(id) {
        var xmlhttp;
        xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                sku=JSON.parse(xmlhttp.responseText);
                skulist = new Array();
                keysarray = new Array()
                attributes1 = new Set();
                attributes2 = new Set();
                attributes3 = new Set();
                attributes4 = new Set();
                sku_list=[
                ];
                for(var i = 0;i < sku.length; i++){
                    skulist[i] = new Array();
                    skulist[i]['skuid'] = sku[i].id;
                    skulist[i]['skuprice'] = sku[i].price;
                    skulist[i]['stock']= sku[i].stock;
                    skulist[i]['sales']= sku[i].sales;
                    skulist[i]['attributes1'] = sku[i].attributes1.split(":")[1];
                    skulist[i]['attributes2'] = sku[i].attributes2.split(":")[1];
                    skulist[i]['attributes3'] = sku[i].attributes3.split(":")[1];
                    skulist[i]['attributes4'] = sku[i].attributes4.split(":")[1];
                    var s={'attrs':'','skuid':0,'skuprice':0,'stock':0,'sales':0}
                    s['attrs']=`${skulist[i]['attributes1']}|${skulist[i]['attributes2']}|${skulist[i]['attributes3']}|${skulist[i]['attributes4']}`
                    s['skuid'] = skulist[i]['skuid']
                    s['skuprice']=skulist[i]['skuprice']
                    s['stock']=skulist[i]['stock']
                    s['sales']=skulist[i]['sales']
                    sku_list.push(s);
                    attributes1.add(skulist[i]['attributes1'])
                    attributes2.add(skulist[i]['attributes2'])
                    attributes3.add(skulist[i]['attributes3'])
                    attributes4.add(skulist[i]['attributes4'])
                }
                var testkey = {
                }
                // if(k1=sku[0].attributes1.split(":")[0]){
                testkey[k1=sku[0].attributes1.split(":")[0]]=Array.from(attributes1)
                // }
                // if(k1=sku[0].attributes2.split(":")[0]){
                testkey[k1=sku[0].attributes2.split(":")[0]]=Array.from(attributes2)
                // }
                // if(k1=sku[0].attributes3.split(":")[0]){
                testkey[k1=sku[0].attributes3.split(":")[0]]=Array.from(attributes3)
                // }
                // if(k1=sku[0].attributes4.split(":")[0]){
                testkey[k1=sku[0].attributes4.split(":")[0]]=Array.from(attributes4)
                // }
                keys = testkey
                end()
            }
        }
        xmlhttp.open("GET","http://localhost:8091/sku/list?spu_id="+id,true);
        xmlhttp.send();
    }

    function showsku() {
        if(getsku.length===1)
            window.alert(JSON.stringify(getsku))
    }
</script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js"></script>
<script>
    /*var keys = {
        'attr1':['10','11','12'],
        'attr2':['20','21','22','23'],
        'attr3':['30','31','32'],
        'attr4':['40','41']
    };

    var sku_list=[

        {'attrs':'10|20|30|40','num':120},
        {'attrs':'10|21|30|40','num':10},
        {'attrs':'10|22|30|40','num':28},
        {'attrs':'10|22|31|41','num':220},
        {'attrs':'10|22|32|40','num':130},
        {'attrs':'11|23|32|41','num':120},
        {'attrs':'11|22|32|41','num':120},
        {'attrs':'11|22|31|41','num':120},
        {'attrs':'11|22|31|40','num':120},
        {'attrs':'12|22|31|40','num':120},
    ];*/
    function end() {
        //show_data(sku_list);
        show_attr_item()
        //注册点击事件
        $('.goods_attr li').click(function(){
            if($(this).hasClass('b')){
                return ;//被锁定了
            }
            if($(this).hasClass('sel')){
                $(this).removeClass('sel');
            }else{
                $(this).siblings().removeClass('sel');
                $(this).addClass('sel');
            }
            var select_ids=_getSelAttrId();
//        console.log(select_ids);
////已经选择了的规格
            var ids=filterAttrs(select_ids);
//如果id不在已选id所在行组成的数组中，则然他禁止点击
            $('#panel_sel').find('li').each(function(k2,li2){
                if($.inArray($(li2).attr('val'),ids)==-1){
                    $(li2).addClass('b');
                }else{
                    $(li2).removeClass('b');
                }
            });
        });
    }
    //显示html结构
    function show_attr_item(){


        var html='';

//k是下标，跟php不同
        for(k in keys){
            if(k==="")
                continue

            html+='<div class="goods_attr" > <span class="label">'+k+'</span>';


            html+='<ul>'


            for(k2 in keys[k]){


                _attr_id=keys[k][k2];


                html+='<li class="text" val="'+_attr_id+'" >';


                html+='<span>'+_attr_id+'</span>';


                html+='<s></s>';


                html+='</li>'


            }


            html+='</ul>';


            html+='</div>';


        }


        $('#panel_sel').html(html);


    }
    //显示数据
    function show_data(sku_list){


        var str="";


        for( k in sku_list){


            str+=sku_list[k]['attrs']+"\t"+sku_list[k]['num']+"\n";


        }


        $('#panel_sku_list pre').html(str);


    }

    //返回对象中的一个数组，有attr属性
    function filterProduct(ids){


        var result=[];


        $(sku_list).each(function(k,v){


            _attr='|'+v['attrs']+'|';


            _all_ids_in=true;


            for( k in ids){


                if(_attr.indexOf('|'+ids[k]+'|')==-1){


                    _all_ids_in=false;


                    break;


                }


            }

            //把数组中的id所在那行的所有元素都压入result。最后返回
            if(_all_ids_in){


                result.push(v);


            }



        });
        getsku = (result)
        if(getsku.length==1)
            document.getElementById("skuprice").innerText=result[0].skuprice+"元"
        return result;


    }

    function filterAttrs(ids){


        var products=filterProduct(ids);


//console.log(products);


        var result=[];


        $(products).each(function(k,v){

            //括号内的还是返回一个数组，concat函数是拼接一个或多个函数。
            result=result.concat(v['attrs'].split('|'));



        });

        return result;


    }

    //已选择的节点数组


    function _getSelAttrId(){



        var list=[];


        $('.goods_attr li.sel').each(function(){


            list.push($(this).attr('val'));


        });


        return list;


    }
    function skuinfo(){
        if(getsku.length===1&&getsku[0].stock>0){
            $.ajax({
                type:"POST",
                url:"http://localhost:8091/shoppingcar/addtolist",
                data:{goodid:getsku[0].skuid,goodname:good.name,goodprice:getsku[0].skuprice,goodnumber:1,listinfo:good.name+" "+good.subtitle+" "+getsku[0].attrs},
                success:function () {
                    alert("加入成功！！！")
                }
            })
        }
        return false;
    }
    function addtofavorite() {
        if(getsku.length===1&&getsku[0].stock>0){
            $.ajax({
                type:"POST",
                url:"http://localhost:8091/shoppingcar/addtofavorite",
                data:{goodid:getsku[0].skuid,goodname:good.name},
                success:function () {
                    alert("加入成功！！！")
                }
            })
        }
        return false;
    }
</script>
<style type="text/css">


    ul,li{ padding:0px; margin:0px;}


    #panel{ width:500px; margin:30px auto;}




    .goods_attr{ overflow:hidden;}


    .goods_attr .label {font: 12px/30px '宋体';color: #777;width: 50px;;padding-right: 10px;float: left; display:block;}


    .goods_attr ul {float:left;width:300px;}



    .goods_attr li{color:#333;overflow:hidden;position:relative;float:left;text-align:center; vertical-align:middle; border:1px solid #999;text-indent:0; cursor:pointer}


    .goods_attr li.b{border:1px dotted #CCC;color:#DDD; pointer:none;}


    .goods_attr li.b img {opacity:0.4;}


    .goods_attr li.sel{ border:1px solid #c80a28;color:#333;}



    .goods_attr li.text{margin:5px 10px 5px 0; height:23px;line-height:23px;text-indent:0;padding:0 23px;font-style:normal;}


    .goods_attr li.img{ margin-right:10px;width:35px;height:35px; line-height:35px;text-align:center;}




</style>
</html>