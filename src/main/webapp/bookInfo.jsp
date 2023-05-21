<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="com.example.onlineBookMy.bean.BookInfo" %>
<%@page import="com.example.onlineBookMy.bean.BookDiscuss" %>
<%@page import="java.util.List" %>
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
    <link rel="stylesheet" href="style/bookInfo.css">

    <script src="lib/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    <script src="js/banner.js" type="text/javascript"></script>

    <SCRIPT src="js/base.js" type="text/javascript"></SCRIPT>

</head>
<body>
<%
    BookInfo bookInfos = (BookInfo) request.getAttribute("bookInfo");
    List<BookInfo> rxbooks = (List<BookInfo>) request.getAttribute("rxbooks");
    List<BookDiscuss> discuss = (List<BookDiscuss>) request.getAttribute("discuss");
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
            <div>
                <ol class="breadcrumb">
                    <li><a href="#">网站首页</a></li>
                    <li class="active">产品类别</li>
                </ol>
            </div>
            <div class="row detail">
                <div class="col-xs-6" id="preview">
                    <div class="jqzoom" id="spec-n1">
                        <img src="imgsd/<%=bookInfos.getBigImg()%>" alt="">
                    </div>
                    <div id="spec-n5" class="pic_list">
                        <div class="control" id="spec-left">
                            <i class="glyphicon glyphicon-chevron-left"></i>
                        </div>
                        <div id="spec-list" class="list-content">
                            <div class="list-h">
                                <div><img src="imgsd/<%=bookInfos.getBigImg() %>"/></div>
                            </div>
                        </div>
                        <div class="control" id="spec-right">
                            <i class="glyphicon glyphicon-chevron-right"></i>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 information">
                    <table width="100%" border="0">
                        <tr>
                            <td>市场价:<%=bookInfos.getPrice() %>元</td>
                            <td>商品货:<%=bookInfos.getBookName() %>
                            </td>
                        </tr>
                        <tr>
                            <td>会员价：<%=bookInfos.getHyprice() %>元</td>
                            <td>库存情况：<%=bookInfos.getNum() %>件</td>
                        </tr>
                        <tr>
                            <td>作者:<%=bookInfos.getAuthor() %>
                            </td>
                            <td>累计销量:<%=bookInfos.getSaleCount() %>
                            </td>
                        </tr>
                        <tr>
                            <td>出版社:<%=bookInfos.getPbName() %>
                            </td>
                        </tr>
                        <tr>
                            <td>出版日期:<%=bookInfos.getPbdate() %>
                            </td>
                        </tr>
                        <tr>
                            <td>上架日期:<%=bookInfos.getSjdate() %>
                            </td>
                        </tr>
                        <tr>
                            <td>所属品牌：文学</td>
                            <td>点击次数：123456</td>
                        </tr>
                        <tr>
                            <td colspan="2">商品评论： <img src="images/icon3.jpg"/> (已有<%=discuss.size() %>人评论)</td>
                        </tr>
                    </table>
                    <div class="middle_rightRC">
                        <form class="form-inline">
                            <div class="form-group form-group-sm">
                                <label for="count">我要买</label>
                                <input type="text" class="form-control kwid" id="count" name="input" value="1">
                            </div>
                            <p>已选择：1件 总价:<span class="STYLE1"><%=bookInfos.getHyprice() %></span> 元</p>
                            <p>
                                <a class="btn btn-success"
                                   href="<%=request.getContextPath() %>/AddGwcItemServlet?id=<%=bookInfos.getBookId() %>">加入购物车</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>

            <div class="middle8">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a href="#">产品信息</a></li>
                    <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                </ul>

                <div class="panel panel-default">
                    <div class="panel-body">
                        <%=bookInfos.getContext() %>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">书评:</div>
                    <div class="panel-body">
                        <c:forEach var="bookDiscuss" items="${requestScope.discuss}">
                            书评编号为${bookDiscuss.custId}的说：${bookDiscuss.context}
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="middle9">
                <div class="panel panel-default">
                    <div class="panel-heading">用户评论</div>
                    <div class="panel-body">
                        <div>用户名：匿名用户</div>
                        <div class="row">
                            <div class="col-xs-8">
                                <form>
                                    <div class="form-group form-group-sm">
                                        <label for="commentEmail">E-mail:</label>
                                        <input type="text" class="form-control" id="commentEmail" name="text" size="25"
                                               value="${sessionScope.customerInfo.custName}">
                                    </div>
                                    <div>
                                        <span>评论等级：</span>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios1"
                                                       value="option1">
                                                <img src="images/pl1.gif"/>
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios2"
                                                       value="option2">
                                                <img src="images/pl2.gif"/>
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios2"
                                                       value="option2">
                                                <img src="images/pl3.gif"/>
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios2"
                                                       value="option2">
                                                <img src="images/pl4.gif"/>
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optionsRadios" id="optionsRadios2"
                                                       value="option2" checked>
                                                <img src="images/pl5.gif"/>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-group-sm">
                                        <label for="commentContent">评论内容：</label>
                                        <textarea id="commentContent" class="form-control" rows="3" cols=""></textarea>
                                    </div>
                                    <div class="form-group form-group-sm validateBox">
                                        <label for="commentvalidate">验证码：</label>
                                        <input type="text" class="form-control" id="commentvalidate" name="text"
                                               size="15">
                                        <img src="images/yz.gif"/>
                                    </div>
                                    <button class="btn btn-primary btn4">提交评论</button>
                                </form>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
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

