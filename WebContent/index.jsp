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
      <img src="bootstrap/images/logo.png" >
    </div>
    <div class="col-md-4">
      <img src="bootstrap/images/header.jpg" >
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
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
  <!--img-->
  <div class="container-fluid">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="bootstrap/images/05.jpg" alt="...">
          <div class="carousel-caption">
            ...
          </div>
        </div>
        <div class="item">
          <img src="bootstrap/images/06.jpg" alt="...">
          <div class="carousel-caption">
            ...
          </div>
        </div>
        <div class="item">
          <img src="bootstrap/images/07.jpg" alt="...">
          <div class="carousel-caption">
            ...
          </div>
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
  <!--new product-->
  <div class="container-fluid">
    <div class="col-md-12">
      <h3>最新商品&nbsp;&nbsp;<img src="bootstrap/images/08.png"></h3>
    </div>
    <div>
      <div class="col-md-2">
        <img src="bootstrap/images/09.jpg" width="190px" height="340px">
      </div>
      <div class="col-md-10">
        <div class="col-md-6">
          <img src="bootstrap/images/10.jpg" class="img10">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
      </div>
    </div>
  </div>
  <!--ad-->
  <div class="container-fluid">
    <img src="bootstrap/images/ad.jpg" class="ad">
  </div>
  <!--hot product-->
  <div class="container-fluid">
    <div class="col-md-12">
      <h3>热门商品&nbsp;&nbsp;<img src="bootstrap/images/08.png"></h3>
    </div>
    <div>
      <div class="col-md-2">
        <img src="bootstrap/images/09.jpg" width="190px" height="340px">
      </div>
      <div class="col-md-10">
        <div class="col-md-6">
          <img src="bootstrap/images/10.jpg" class="img10">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
        <div class="col-md-2">
          <img src="bootstrap/images/12.jpg" class="img11">
        </div>
      </div>
    </div>
  </div>
  <!--footer-->
  <div class="container-fluid">
  <div>
    <img src="bootstrap/images/footer.jpg" class="ad">
  </div>
  <!--copyright-->
  <div style="text-align: center;font: bold">
    关于我们|联系我们|商家入驻|营销中心|手机京东|友情链接|销售联盟|京东社区|京东公益|English Site|Contact Us<br>
    Copyright © 2004 - 2016  京东JD.com 版权所有  |  消费者维权热线：4006067733
  </div>
  </div>
</div>
</body>
</html>