<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/28
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--根据设备宽度来调整缩放比-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <script src="bootstrap/js/jquery-2.2.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-add.css"/>
</head>
<body>
<!--创建整体布局div-->
<div class="container-fluid">
    <!--logo-->
    <div class="container-fluid">
        <div class="col-md-4">
            <img src="bootstrap/images/logo.png" class="logo">
        </div>
        <div class="col-md-4">
            <img src="bootstrap/images/header.jpg">
        </div>
        <div class="col-md-4 header-right">
            <a href="">登录</a>
            <a href="${pageContext.request.contextPath}/regist.jsp">注册</a>
            <a href="">购物车</a>
        </div>
    </div>
    <!--menu-->
    <div class="container-fluid">

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        首页
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">手机数码 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">电脑办公</a></li>

                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>

    <div class="container" style="width:100%;background:url('bootstrap/images/regist_bg.jpg');">
        <div class="row">
            <div class="col-md-2"></div>


            <div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
                <font>会员注册</font>USER REGISTER
                <form action="${pageContext.request.contextPath}/UserServlet" method="post" class="form-horizontal" style="margin-top:5px;">
                    <input type="hidden" name="method" value="regist">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="confirmpwd" name="repassword" placeholder="请输入确认密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-6">
                            <input type="email" class="form-control" id="inputEmail3" name="email" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="usercaption" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="usercaption" name="name" placeholder="请输入姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="telephone" class="col-sm-2 control-label">电话</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="telephone" name="telephone" placeholder="请输入电话">
                        </div>
                    </div>
                    <div class="form-group opt">
                        <label for="inlineRadio1" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-6">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="inlineRadio1" value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="inlineRadio2" value="女"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="date" class="col-sm-2 control-label">出生日期</label>
                        <div class="col-sm-6">
                            <input type="text" name="birthday" class="form-control">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="date" class="col-sm-2 control-label">验证码</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control">

                        </div>
                        <div class="col-sm-2">
                            <img src="bootstrap/images/captcha.jhtml"/>
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" width="100" value="注册" name="submit" border="0"
                                   style="background: url('bootstrap/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-2"></div>
        </div>
    </div>
    <!--footer-->
    <div>
        <img src="bootstrap/images/footer.jpg" class="ad">
    </div>
    <!--copyright-->
    <div style="text-align: center;font: bold">
        关于我们|联系我们|商家入驻|营销中心|手机京东|友情链接|销售联盟|京东社区|京东公益|English Site|Contact Us<br>
        Copyright © 2004 - 2016 京东JD.com 版权所有 | 消费者维权热线：4006067733
    </div>
</div>
</body>
</html>