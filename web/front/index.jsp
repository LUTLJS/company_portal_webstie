<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/16
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <title>我的首页</title>
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all">
</head>
<body>
<%@ include file="common_header.jsp" %>
<!--轮播 -->
<div id="fwslider" style="height: 554px;">
    <div class="slider_container">
        <div class="slide" style=" opacity: 1; z-index: 0; display: none;">
            <img id="img1" src="img/img1.jpg">
        </div>
        <div class="slide" style="opacity: 1; z-index: 1; display: block;">
            <img id="img2" src="img/img2.jpg">
        </div>
        <div class="slide" style="opacity: 1; z-index: 1; display: block;">
            <img id="img3" src="img/img3.jpg">
        </div>
        <div class="slide" style=" opacity: 1;z-index: 0; display: none;">
            <img id="img4" src="img/img4.jpg">
        </div>
        <div class="slide" style=" opacity: 1;z-index: 0; display: none;">
            <img id="img5" src="img/img5.jpg">
        </div>
    </div>
    <div class="timers" style="width: 180px;">
    </div>
    <div class="slidePrev" style="left: 0px; top: 252px;">
        <span></span>
    </div>
    <div class="slideNext" style="right: 0px; top: 252px; opacity: 0.5;">
        <span></span>
    </div>

</div>
<!--轮播 -->
<!-- start main-->
<%--底部功能栏代码开始--%>
<div class="main_bg">
    <div class="business">
        业务领域 BUSINESS
    </div>
    <div class="wrap w_72">
        <div class="grids_1_of_3">
            <div class="grid_1_of_3  images_1_of_3">
                <img src="img/pic1.png">

            </div>
            <div class="grid_1_of_3  images_1_of_3">
                <img src="img/pic2.png">

            </div>
            <div class="grid_1_of_3  images_1_of_3">
                <img src="img/pic3.png">

            </div>
            <div class="grid_1_of_3  images_1_of_3">
                <img src="img/pic4.png">

            </div>
            <div class="grid_1_of_3  images_1_of_3" style="background: none">
                <img src="img/pic5.png">

            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<%--底部功能栏代码结束--%>
<!-- start  main-->
<div class="address">
    <p>
        Copyright 2016 阿根廷帝国公司 All Rights.
    </p>
    <p>
        <a href="http://www.bcra.gov.ar/">阿根廷帝国公司</a> 技术支持
        <a href="<%= basePath%>/admin/login.jsp">后台</a>
    </p>
    <p>
        布宜诺斯艾利斯ICP备  10002740号-2  阿根廷公网安备22010202000132号
    </p>
</div>
<div class="clear"></div>
</div>
</body>
<script src="js/jquery.min.js">
</script>
<script src="js/jquery-ui.min.js">
</script>
<script src="js/fwslider.js">
</script>

</html>
