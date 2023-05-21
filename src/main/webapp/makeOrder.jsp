<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XhTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <meta name="viewport" content="width=1024"/>
    <title>我的购物袋</title>
    <link rel="shortcut icon" href="images/icon-logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="lib/bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/public.css">
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/footer.css">

    <script src="lib/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="style/gouwuche.css"/>
    <link rel="stylesheet" type="text/css" href="style/orderInfo.css"/>
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
                    <input type="text" class="form-control" id="exampleInput2">
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

<div class="container">
    <div class="row">
        <div class="title2"></div>
        <div class="panel panel-default">
            <div class="panel-body">
                <i class="glyphicon glyphicon-exclamation-sign"></i>&nbsp;确认订单信息
            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">收货人信息</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-4">
                        <form class="" action="${pageContext.request.contextPath}/MakeOrderServlet">
                            <div class="form-group">
                                <label for="exampleInputEmail1">收货人姓名：</label>
                                <input type="text" class="form-control input-sm" id="exampleInputEmail1"
                                       value="${sessionScope.customerInfo.custName}" name="customerName"
                                       placeholder="收货人姓名">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">地址：</label>
                                <input type="text" class="form-control input-sm"
                                       value="${sessionScope.customerDetailInfo.address}" id="consignee_address"
                                       name="address"
                                       placeholder="地址">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">电话：</label>
                                <input type="text" class="form-control input-sm"
                                       value="${sessionScope.customerDetailInfo.tel}" id="consignee_message" name="tel"
                                       placeholder="电话">
                                <p>用于接收发货通知短信及送货前确认</p>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">备注：</label>
                                <input type="text" class="form-control input-sm" value="" name="context"
                                       id="consignee_message" name="tel" placeholder="备注">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">电子邮件：</label>
                                <input type="text" class="form-control input-sm" id="exampleInputEmail1"
                                       value="${sessionScope.customerInfo.email}" id="consignee_email"
                                       placeholder="电子邮件">
                                <p>用来接收订单提醒邮件，便于您及时了解订单状态</p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    支付及配送方式
                    <a id="linkPayTypeShipType" href="javascript:void(0)" onclick="showForm_payTypeAndShipType(this)">[修改]</a>
                </h3>
            </div>
            <div class="panel-body">
                <div id=part_payTypeAndShipType>
                    <div class=o_show>
                        <div id=updateInfo_payType></div>
                        <div class=middle>
                            <TABLE style="WIDTh: 100%">
                                <TBODY>
                                <TR>
                                    <TD style="TEXT-ALIGN: right; WIDTh: 80px">支付方式：</TD>
                                    <TD>在线支付</TD>
                                </TR>
                                <TR>
                                    <TD style="TEXT-ALIGN: right">配送方式：</TD>
                                    <TD>快递运输</TD>
                                </TR>
                                <TR>
                                    <TD style="TEXT-ALIGN: right">运　　费：</TD>
                                    <TD>0.00元<SPAN style="COLOR: red">(免运费)</SPAN></TD>
                                </TR>
                                <TR style="DISPLAY: none">
                                    <TD style="TEXT-ALIGN: right">送货日期：</TD>
                                    <TD style="COLOR: red">{CodTime}</TD>
                                </TR>
                                <TR style="DISPLAY: none">
                                    <TD style="TEXT-ALIGN: right">自提时间：</TD>
                                    <TD style="COLOR: red">{PickTime}</TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </div>
                        <div class=footsty></div>
                    </div>
                </div>
                <!--支付方式及配送方式结束-->
            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    发票信息
                    <a href="javascript:void(0)" onclick="showForm_invoice(this)">[修改]</a>
                </h3>
            </div>
            <div class="panel-body">
                <!--发票信息开始-->
                <div id=part_invoice>
                    <div class=o_show>
                        <div class=middle>
                            <TABLE style="WIDTh: 100%; DISPLAY: none">
                                <TBODY>
                                <TR>
                                    <TD style="TEXT-ALIGN: left; PADDING-LEFT: 22px">开取类型：&nbsp;默认开取</TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                            <TABLE style="WIDTh: 100%">
                                <TBODY>
                                <TR>
                                    <TD style="TEXT-ALIGN: right; WIDTh: 82px">发票类型：</TD>
                                    <TD>普通发票</TD>
                                </TR>
                                <TR>
                                    <TD style="TEXT-ALIGN: right">发票抬头：</TD>
                                    <TD>个人</TD>
                                </TR>
                                <TR>
                                    <TD style="TEXT-ALIGN: right">发票内容：</TD>
                                    <TD>
                                        <div><SPAN style="DISPLAY: none">非图书商品：</SPAN><SPAN>明细</SPAN></div>
                                        <div><SPAN style="DISPLAY: none">图书商品：</SPAN><SPAN
                                                style="DISPLAY: none">不开发票</SPAN></div>
                                    </TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                            <TABLE style="WIDTh: 100%; DISPLAY: none">
                                <TBODY>
                                <TR>
                                    <TD style="TEXT-ALIGN: left; PADDING-LEFT: 22px">不开发票</TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </div>
                        <div class=footsty></div>
                    </div>
                </div>
                <!--发票信息结束-->
                <!--Cart信息开始-->
                <div id=part_cart></div>
                <!--Cart信息开始-->
                <!--有货先发开始-->
                <div style="COLOR: red; padding: 8px 0px 8px 30px;"
                     id=part_FirstInstockShip>
                    <LABEL for=chk_FirstInstockShip>先发有货商品（如果订单部分商品缺货，优先配送有货商品）</LABEL>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i class="glyphicon glyphicon-exclamation-sign"></i>
                    确认挑选的商品
                </h3>
            </div>
            <div class="panel-body">
                <dl id="myCartTitle">
                    <dt></dt>
                    <dd>”</dd>
                </dl>
                <div class="clear"><img src="#" width="1" height="1"></div>
                <div id="myCartTable">
                    <table width="100%" border="0" cellspacing="" cellpadding="5">
                        <tr>
                            <th>商品图片</th>
                            <th>商品名称</th>
                            <th>单价（元）</th>
                            <th>数量</th>
                            <th>优惠</th>
                            <th>小计（元）</th>
                            <th>赠送积分</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach var="item" items="${sessionScope.gwc.allItems}">
                            <tr>
                                <td align="center" width="60">
                                    <img src="${pageContext.request.contextPath}/imgsx/${item.smallImg}"/>
                                </td>
                                <td align="center" width="60">
                                    <a href="${pageContext.request.contextPath}/ShowBookInfoServlet?id=${item.bookId}">${item.bookName}</a>
                                </td>
                                <td align="center" width="80">
                                    售 价 ：${item.hyprice}
                                    <span class="fccc"><del> <br/>
					市场价：${item.price}
					</del></span>
                                </td>
                                <td align="center" width="70">${item.num}</td>
                                <td align="center" width="50">${(item.price-item.hyprice)*item.num}</td>
                                <td align="center" width="60">${item.hyprice*item.num}</td>
                                <td align="center" width="30"><span>7</span></td>
                                <td align="center" width="100">
                                    <span class="cols col-7"><a href="#" style="cursor:pointer">加入收藏</a></span>
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="8" align="right" class="zongj">
                                总价：${sessionScope.gwc.oldPrices}元 -
                                优惠：${sessionScope.gwc.yhPrices}元
                                = 商品总计(不含运费)：<span class="fred">${sessionScope.gwc.hyPrices}元</span> 获得：0 积分点
                            </td>
                        </tr>

                        <tr>
                            <td colspan="8">
                                <div class="left">
                                    <a href="${pageContext.request.contextPath}/InitIndexServlet"
                                       class="btn btn-default">继续购物</a>
                                    <a href="${pageContext.request.contextPath}/ClearGwcItemServlet"
                                       class="btn btn-default" onclick="return confirm('您确定要清空购物车吗?');">清空购物车</a>
                                </div>
                                <div class="right">
                                    <a href="${pageContext.request.contextPath}/ClearGwcItemServlet"
                                       class="btn btn-warning">提交订单</a>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer2" style="margin-left:130px">
    版权所有：www.xubangyiliao.com<br/>
    电话:029-62966051 87811277 传真：029-62966051 陕ICP备1109231号
</div>
</body>
</html>

