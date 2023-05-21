<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="java.util.List" %>
<%@page import="com.example.onlineBookMy.bean.BookInfo" %>
<%@page import="com.example.onlineBookMy.bean.News" %>
<%@page import="com.example.onlineBookMy.bean.BookType" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.Set" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>冬冬网</title>
    <meta name="keywords" content="关键字"/>
    <meta name="description" content="页面描述"/>
    <link rel="shortcut icon" href="images/icon-logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="lib/bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/public.css">
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/footer.css">
    <link rel="stylesheet" href="style/index.css">

    <script src="lib/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    <script src="js/banner.js" type="text/javascript"></script>
</head>
<body>
<%
    List<News> newsList = (List<News>) request.getAttribute("news");
    List<BookInfo> sjbooks = (List<BookInfo>) request.getAttribute("sjbooks");
    List<BookInfo> rxbooks = (List<BookInfo>) request.getAttribute("rxbooks");
    List<BookInfo> tjbooks = (List<BookInfo>) request.getAttribute("tjbooks");
%>

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
<!-- middle -->
<div class="container my-middle">
    <div class="row">
        <div class="col-xs-2 middle_left">

            <div class="category">
                <div class="title">所有商品分类</div>
                <div class="content">
                    <%@include file="leftBookType.jsp" %>
                </div>
            </div>

            <div class="ranking">
                <h3>最新排行</h3>
                <ul class="list-group">
                    <%
                        for (int i = 0; i < rxbooks.size(); i++) {
                            BookInfo bookInfo = new BookInfo();
                            bookInfo = rxbooks.get(i);
                    %>
                    <li class="list-group-item">
                        <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                            <%=bookInfo.getBookName() %>
                        </a>
                    </li>
                    <%} %>
                </ul>
            </div>

            <div class="picture1">
                <img src="images/01.jpg"/>
            </div>
            <div class="picture2">
                <img src="images/05.jpg"/>
            </div>
        </div>
        <div class="col-xs-10 middle_right">
            <div class="slider">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="./images/slider/i1.jpg" alt="">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img src="./images/slider/i2.jpg" alt="">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img src="./images/slider/i3.jpg" alt="">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img src="./images/slider/i4.jpg" alt="">
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <img src="./images/slider/i5.jpg" alt="">
                            <div class="carousel-caption"></div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="display-list display-list1">
                <div class="title">
                    <h4>最新商品</h4>
                </div>
                <div class="content">
                    <div class="row">
                        <%
                            for (int i = 0; i < sjbooks.size(); i++) {
                                BookInfo bookInfo = new BookInfo();
                                bookInfo = sjbooks.get(i);
                        %>
                        <div class="col-xs-2 card">
                            <a class="img-box"
                               href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                                <img src="imgsx/<%=bookInfo.getSmallImg() %>"/>
                                <h5><%=bookInfo.getBookName() %>
                                </h5>
                            </a>
                            <p class="old-price">市场价：￥<%=bookInfo.getPrice() %>
                            </p>
                            <p>商城价：￥<%=bookInfo.getHyprice() %>
                            </p>
                            <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>"
                               type="button" class="btn btn-warning btn-detail">
                                查看详情
                            </a>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>

            <div class="display-list display-list2">
                <div class="title">
                    <h4>热销商品</h4>
                </div>
                <div class="content">
                    <div class="row">
                        <%
                            for (int i = 0; i < rxbooks.size(); i++) {
                                BookInfo bookInfo = new BookInfo();
                                bookInfo = rxbooks.get(i);
                        %>
                        <div class="col-xs-2 card">
                            <a class="img-box"
                               href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                                <img src="imgsx/<%=bookInfo.getSmallImg() %>"/>
                                <h5><%=bookInfo.getBookName() %>
                                </h5>
                            </a>
                            <p class="old-price">市场价：￥<%=bookInfo.getPrice() %>
                            </p>
                            <p>商城价：￥<%=bookInfo.getHyprice() %>
                            </p>
                            <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>"
                               type="button" class="btn btn-warning btn-detail">
                                查看详情
                            </a>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>

            <div class="display-list display-list3">
                <div class="content">
                    <div class="row">
                        <%
                            for (int i = 0; i < tjbooks.size(); i++) {
                                BookInfo bookInfo = new BookInfo();
                                bookInfo = tjbooks.get(i);
                        %>
                        <div class="col-xs-2 card">
                            <a class="img-box"
                               href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>">
                                <img src="imgsx/<%=bookInfo.getSmallImg() %>"/>
                                <h5><%=bookInfo.getBookName() %>
                                </h5>
                            </a>
                            <p class="old-price">市场价：￥<%=bookInfo.getPrice() %>
                            </p>
                            <p>商城价：￥<%=bookInfo.getHyprice() %>
                            </p>
                            <a href="<%=request.getContextPath() %>/ShowBookInfoServlet?id=<%=bookInfo.getBookId() %>"
                               type="button" class="btn btn-warning btn-detail">
                                查看详情
                            </a>
                        </div>
                        <%} %>
                    </div>
                </div>
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
