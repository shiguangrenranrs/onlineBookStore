<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="com.example.onlineBookMy.servlet.shoppingCart.Gouwuche" %>
<%@page import="java.util.Collection" %>
<%@page import="com.example.onlineBookMy.servlet.shoppingCart.GouwucheItem" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=1024"/>
    <title>购物车</title>
    <link rel="shortcut icon" href="images/icon-logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="lib/bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/public.css">
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/footer.css">
    <link rel="stylesheet" href="style/gouwuche.css">

    <script src="lib/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function isDelete(bookName) {
            return confirm("您确定要删除商品 " + bookName + " 吗？");
        }

        function updateGwcItemNum(bookId, num) {
            if (isNaN(num)) {
                alert("输入图书的数量必须是数字！");
                return;
            }
            var a = parseInt(num);
            if (a <= 0) {
                alert("输入的图示数量必须大于等于1！");
                return;
            }
            location = "<%=request.getContextPath() %>/UpdateGwcItemNumServlet?id=" + bookId + "&num=" + num;
        }
    </script>
</head>
<body>
<header>
    <div class="top1">
        <h4>欢迎您登录网上书城！</h4>
        <form class="form-inline">
            <%--            <div class="form-group form-group-sm">--%>
            <%--                <label for="name">用户名</label>--%>
            <%--                <input type="text" class="form-control" id="name" name="name"--%>
            <%--                       value="${sessionScope.customerInfo.custName}">--%>
            <%--            </div>--%>
            <%--            <div class="form-group form-group-sm">--%>
            <%--                <label for="password">密码</label>--%>
            <%--                <input type="password" class="form-control" id="password" value="${sessionScope.customerInfo.pwd}">--%>
            <%--            </div>--%>
            <a href="#" class="btn btn-default">忘记密码</a>
            <a href="${pageContext.request.contextPath}/qtLogin.jsp" class="btn btn-default">登录</a>
            <a href="${pageContext.request.contextPath}/qtSign.jsp" class="btn btn-default">注册</a>
            <a href="${pageContext.request.contextPath}/background/index.jsp" class="btn btn-default">后台管理</a>
        </form>
    </div>
    <div class="top2">
        <div class="search">
            <div>
                <h1 class="logo">冬冬网-dongdong.com</h1>
            </div>
            <form class="form-inline">
                <div class="form-group form-group-sm">
                    <label for="exampleInput1">书名</label>
                    <input type="text" class="form-control" id="exampleInput1">
                </div>
                <div class="form-group form-group-sm">
                    <label for="exampleInput1">作者</label>
                    <input type="text" class="form-control" id="exampleInput1">
                </div>
                <button type="button" class="btn btn-warning">搜索</button>
            </form>
        </div>
        <div class="ability">
            <div class="other">
                <div><a href="<%=request.getContextPath() %>/gouwuche.jsp">
                    <i class="glyphicon glyphicon-shopping-cart"></i>
                    购物车</a></div>
                <div><a href="#">
                    <i class="glyphicon glyphicon-align-justify"></i>
                    订单查询</a></div>
                <div><a href="#">
                    <i class="glyphicon glyphicon-user"></i>
                    我的空间</a></div>
                <div><a href="#">
                    <i class="glyphicon glyphicon-th-large"></i>
                    购书服务</a></div>
            </div>
            <div class="menu">
                <div><a class="btn btn-default" href="<%=request.getContextPath() %>/InitIndexServlet">首页</a></div>
                <div><a class="btn btn-default" href="<%=request.getContextPath() %>/InitIndexServlet">畅销</a></div>
                <div><a class="btn btn-default" href="<%=request.getContextPath() %>/InitIndexServlet">文学</a></div>
                <div><a class="btn btn-default" href="#">书系</a></div>
                <div><a class="btn btn-default" href="#">文化</a></div>
                <div><a class="btn btn-default" href="#">经营</a></div>
            </div>
        </div>
    </div>
</header>
<div class="container content">
    <div class="title1"></div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                <i class="glyphicon glyphicon-exclamation-sign"></i>
                我挑选的商品
            </h3>
        </div>
        <div class="panel-body">
            <dl id="myCartTitle">
                <dd>现在 <a href="<%=request.getContextPath() %>/qtLogin.jsp">登录</a>，商品将永久保存到“我的购物袋”</dd>
            </dl>
            <div class="clear"><img src="#" width="1" height="1"/></div>
            <div id="myCartTable">
                <table width="100%" border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <th>商品名称</th>
                        <th>单价（元）</th>
                        <th>数量</th>
                        <th>优惠</th>
                        <th>小计（元）</th>
                        <th>赠送积分</th>
                        <th>操作</th>
                    </tr>
                    <%
                        Gouwuche gwc = (Gouwuche) session.getAttribute("gwc");
                        if (gwc == null) {
                            gwc = new Gouwuche();
                        }
                        Collection<GouwucheItem> gouwucheItems = gwc.getAllItems();
                        for (GouwucheItem gwcItem : gouwucheItems) {
                    %>
                    <tr>
                        <td align="left" width="400">
                            <div class="shpic"><img
                                    src="<%=request.getContextPath() %>/imgsx/<%=gwcItem.getSmallImg() %>"/>
                            </div>
                            <span class="shname">
                        <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=gwcItem.getBookId() %>"><%=gwcItem.getBookName() %></a><br/>
				    <span class="fccc"> 颜色：极乐绿 尺码：170/</span>92A</span>
                        </td>
                        <td align="center" width="130">售 价 ：<%=gwcItem.getHyprice() %><span class="fccc"><del> <br/>
			    	市场价：<%=gwcItem.getPrice() %></del></span>
                        </td>
                        <td align="center" width="120">
                            <a title="减-" style="cursor:pointer" class="btn_minus_s"
                               href="<%=request.getContextPath() %>/UpdateGwcItemNumServlet?id=<%=gwcItem.getBookId() %>&num=<%=gwcItem.getNum()-1 %>">-</a>
                            <input type="text" class="text_num" value="<%=gwcItem.getNum() %>" size="2" maxlength="2"
                                   autocomplete="off"
                                   onchange="updateGwcItemNum(<%=gwcItem.getBookId() %>,this.value)"/>
                            <a title="加+" style="cursor:pointer" class="btn_plus_s"
                               href="<%=request.getContextPath() %>/UpdateGwcItemNumServlet?id=<%=gwcItem.getBookId() %>&num=<%=gwcItem.getNum()+1 %>">+</a>
                        </td>
                        <td align="center" width="50">
                            ¥<%=(gwcItem.getPrice() - gwcItem.getHyprice()) * gwcItem.getNum() %>
                        </td>
                        <td align="center" width="60">¥<%=gwcItem.getHyprice() * gwcItem.getNum() %>
                        </td>
                        <td align="center" width="30"><span class="cols col-6"><span>7</span></span></td>
                        <td align="center" width="100">
					<span class="cols col-7">
					<a style="cursor:pointer"
                       href="<%=request.getContextPath() %>/DeleteGwcItemServlet?id=<%=gwcItem.getBookId() %>"
                       onclick="return isDelete('<%=gwcItem.getBookName() %>')" style="cursor:pointer">删除</a>
					</span>
                        </td>
                    </tr>
                    <%} %>
                    <tr>
                        <td colspan="7" align="right" class="zongj">
                            总价：¥<%=gwc.getOldPrices() %>元 -
                            优惠：¥<%=gwc.getYhPrices() %>元 -
                            商品总计(不含运费)：<span class="fred">¥<%=gwc.getHyPrices() %>元</span> 获得：2积分点
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <div class="left">
                                <a href="<%=request.getContextPath() %>/InitIndexServlet"
                                   class="btn btn-default">继续购物</a>
                                <a href="<%=request.getContextPath() %>/ClearGwcItemServlet" class="btn btn-default"
                                   onclick="return confirm('您确定要清空购物车吗?')">清空购物车</a>
                            </div>
                            <div class="right">
                                <a href="<%=request.getContextPath() %>/InitOrderServlet"
                                   class="btn btn-warning">去结算</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div id="interested">
        <div class="panel panel-default">
            <div class="panel-body">您可能感兴趣的宝贝</div>
        </div>
        <ul class="nav nav-tabs tabs" id="menu3">
            <li role="presentation" class="active"><a href="#">最近收藏的</a></li>
            <li role="presentation"><a href="#">最近浏览过的</a></li>
            <li role="presentation"><a href="#">猜你喜欢的</a></li>
        </ul>
        <div class="content">
            <div class="row">
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic1.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic2.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经滋琅</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic3.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经滋养</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic4.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经滋养</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic5.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic6.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经滋养</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic7.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经滋养恤</span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
                <div class="col-xs-2 ">
                    <a href="#" class="">
                        <img src="images/pic8.jpg"/>
                        <span class="text">琅琅上口的百年老课本曾经滋养 </span>
                        <span class="fred">￥299</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="con">
            <div id="main3">
                <ul class="pannel">
                </ul>
                <ul class="pannel">
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="footer1">
    <ul class="lbox">
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">订单的几种状态</a></li>
        <li><a href="#">会员等级折扣</a></li>
        <li><a href="#">积分奖励计划</a></li>
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">商品退货保证</a></li>
    </ul>
    <ul class="lbox">
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">订单的几种状态</a></li>
        <li><a href="#">会员等级折扣</a></li>
        <li><a href="#">积分奖励计划</a></li>
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">商品退货保证</a></li>
    </ul>
    <ul class="lbox">
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">订单的几种状态</a></li>
        <li><a href="#">会员等级折扣</a></li>
        <li><a href="#">积分奖励计划</a></li>
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">商品退货保证</a></li>
    </ul>
    <ul class="lbox nolbox">
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">订单的几种状态</a></li>
        <li><a href="#">会员等级折扣</a></li>
        <li><a href="#">积分奖励计划</a></li>
        <li><a href="#">顾客必读</a></li>
        <li><a href="#">商品退货保证</a></li>
    </ul>
</div>
<!-- footer1 -->
<div class="footer2">
    <p>品类齐全，轻松购物</p>
    <p>多仓直发，极速配送</p>
    <p>正品行货，精致服务</p>
    <p>天天低价，畅选无忧</p>
</div>
<!-- footer2 -->
<div class="footer3">
    <p>版权所有</p>
</div>
</body>
</html>

