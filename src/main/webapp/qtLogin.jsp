<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>冬冬网</title>
    <link rel="shortcut icon" href="images/icon-logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="lib/bootstrap-3.4.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/public.css">
    <link rel="stylesheet" href="style/footer.css">
    <style>
        .main > h1 {
            text-align: center;
            padding-bottom: 10px;
            border-bottom: 4px solid #0092f2;
        }

        .main > p {
            text-align: right;
        }
    </style>

    <script src="lib/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    <script src="js/banner.js" type="text/javascript"></script>

    <link href="css/front/coupon_register.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="js/util.js"></script>
</head>

<body>
<div class="container main">
    <h1>网上图书商城前台登录</h1>
    <p>
        <a href="<%=request.getContextPath()%>/QtLoginServlet" class="color_56">登录</a>|
        <a href="#">易购新手</a>
        <a href="#">网站帮助</a>
    </p>
    <div class="row">
        <div class="col-xs-1"></div>
        <div class="col-xs-4">
            <div class="panel panel-default">
                <div class="panel-heading"><i class="glyphicon glyphicon-ok-sign"></i>&nbsp;会员登录</div>
                <div class="panel-body">
                    <form action="<%=request.getContextPath()%>/QtLoginServlet" method="post" accept-charset="utf-8">
                        <div class="form-group">
                            <label for="username">用户名：</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="用户名"
                                   onblur="checkUserName()">
                            <script type="text/javascript">
                                var msg = '';
                                if ("" !== msg) {
                                    document.getElementById("errorMsg").innerHTML = msg;
                                    document.getElementById("errorMsg").className = 'n_zc_red';
                                }
                            </script>
                        </div>
                        <div class="form-group">
                            <label for="password">密　码：</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="密码"
                                   onblur="checkPassword()">
                            <script type="text/javascript">
                                msg = '';
                                if ("" !== msg) {
                                    document.getElementById("errorMsg").innerHTML = msg;
                                    document.getElementById("errorMsg").className = 'n_zc_red';
                                }
                            </script>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="memorize" value="memorize">
                                记住我
                            </label>
                        </div>
                        <p><a href="#">忘记密码</a></p>
                        <button type="button" class="btn btn-primary" onclick="check(form)">登录</button>
                    </form>
                    <p><a href="#">已注册会员手机验证可免费领取优惠券，GO!</a></p>
                </div>
            </div>
        </div>
        <div class="col-xs-1"></div>
        <div class="col-xs-5">
            <div class="panel panel-default">
                <div class="panel-heading"><i class="glyphicon glyphicon-heart"></i>&nbsp;在冬冬网您可以</div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="glyphicon glyphicon-check"></i>&nbsp;免费注册即刻享受购物返点!</li>
                        <li class="list-group-item"><i class="glyphicon glyphicon-shopping-cart"></i>&nbsp;不购物也能拿现金!
                        </li>
                        <li class="list-group-item"><i class="glyphicon glyphicon-cutlery"></i>&nbsp;推荐会员，奖励现金!</li>
                        <li class="list-group-item"><i class="glyphicon glyphicon-gift"></i>&nbsp;不间断的送优惠券!</li>
                        <li class="list-group-item"><i class="glyphicon glyphicon-thumbs-up"></i>&nbsp;冬冬会员独享优惠活动!</li>
                        <li class="list-group-item"><i class="glyphicon glyphicon-circle-arrow-right"></i>&nbsp;在冬冬网您可以畅读全场，GO!
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-1"></div>
        </div>
    </div>

    <script type="text/javascript">
        let valiateUsrFlag = true;
        let valiatePwdFlag = true;
        const usernameElement = document.querySelector('#username');
        const passwordElement = document.querySelector('#password');

        function checkFormSuccess() {
            if (valiateUsrFlag && valiatePwdFlag) {
                usernameElement.parentElement.classList.remove('has-error');
                passwordElement.parentElement.classList.remove('has-error');
            }
        }

        function checkUserName() {
            let result = true;
            if (usernameElement.value.trim().length === 0) {
                alert('用户名为必填项，请输入您的用户名');
                usernameElement.parentElement.classList.add('has-error');
                result = false;
                valiateUsrFlag = false;
            } else {
                valiateUsrFlag = true;
            }
            checkFormSuccess();
            return result;
        }

        function checkPassword() {
            let result = true;
            if (passwordElement.value.trim().length === 0 && valiateUsrFlag) {
                //如果用户名或密码或验证码三者中有两个或者两个以上的出现了错误的情况则提示信息按照用户名、密码、验证码的优先级显示相应的提示文字
                passwordElement.parentElement.classList.add('has-error');
                alert('密码为必填项，请输入您的密码');
                result = false;
                valiatePwdFlag = false;
            } else if (passwordElement.value.trim().length < 3 && valiateUsrFlag) {
                passwordElement.parentElement.classList.add('has-error');
                alert('您输入的密码有误，请重新输入');
                result = false;
                valiatePwdFlag = false;
            } else if (passwordElement.value.trim().length > 16 && valiateUsrFlag) {
                passwordElement.parentElement.classList.add('has-error');
                alert('您输入的密码有误，请重新输入');
                result = false;
                valiatePwdFlag = false;
            } else {
                valiatePwdFlag = true;
            }
            checkFormSuccess();
            return result;
        }

        //校验全部字段
        function checkAll() {
            let result = true;
            if (!checkUserName())
                result = false;
            if (!checkPassword())
                result = false;
            return result;
        }

        //提交
        function check(form) {
            if (checkAll()) {
                form.submit();
            }
        }
    </script>
</body>
</html>

 

 