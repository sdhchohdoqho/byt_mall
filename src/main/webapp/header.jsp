<%--
  Created by IntelliJ IDEA.
  User: 朱禹谋
  Date: 2019/7/27
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="nav nav-pills row mynav">
    <li class="mypresentation-first" role="presentation">
        <a class="mya mycore" href="${pageContext.request.contextPath}/index.jsp">
            <img src="static/src/cat.bmp" class="logo">
        </a>

    </li>
    <li class="mypresentation" role="presentation"><a class="mya mybutton" href="hello.jsp">北邮淘首页</a></li>
    <li class="mypresentation" role="presentation"><a class="mya mybutton" href="${pageContext.request.contextPath}/zym/shoppingcar.jsp">购物车</a></li>
    <li class="mypresentation" role="presentation"><a class="mya mybutton" href="${pageContext.request.contextPath}/jyx/pic/Favorites.jsp">收藏夹</a></li>
    <li role="presentation" class="dropdown mypresentation" style="width: 10%">
        <a class="dropdown-toggle mya mybutton" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            商品分类 <span class="caret"></span>
        </a>
        <ul class="dropdown-menu " style="width: 110%">
            <li><a>电子</a></li>
            <li><a>日用</a></li>
            <li><a>服装</a></li>
        </ul>
    </li>
    <li class="mypresentation" role="presentation"><a class="mya mybutton" href="${pageContext.request.contextPath}/jyx/pic/service_center.jsp">联系我们</a></li>
    <li class="mypresentation" role="presentation"><a class="mya mybutton" href="/zrn/personal.jsp">个人中心</a></li>
    <li class="mypresentation" role="presentation"><a class="mya mybutton" href="${pageContext.request.contextPath}/ly/settledin2train.jsp">卖家中心</a></li>
    <li class="mypresentation" role="presentation">
        <div class="mya">
            <div>
                还没有入坑？
            </div>
            <br/>
            <a class="a-join" href="${pageContext.request.contextPath}/zrn/shopLogin.jsp">
                点击这里加入我们
            </a>
        </div>
    </li>
</ul>