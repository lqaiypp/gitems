<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/boot/css/bootstrap.min.css">
    <!--引入jqgrid的bootstrap css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jqgrid/css/ui.jqgrid-bootstrap.css">
    <!--引入jquery核心js-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <!--引入jqgrid核心js-->
    <script src="${pageContext.request.contextPath}/jqgrid/js/trirand/jquery.jqGrid.min.js"></script>
    <!--引入jqgrid国际化js-->
    <script src="${pageContext.request.contextPath}/jqgrid/js/trirand/i18n/grid.locale-cn.js"></script>
    <!--引入bootstrap组件js-->
    <script src="${pageContext.request.contextPath}/boot/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/boot/js/ajaxfileupload.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/boot/css/back.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jqgrid/css/jquery-ui.css">
    <script src="${pageContext.request.contextPath}/jqgrid/js/trirand/src/jquery.jqGrid.js"></script>


    <title>员工后台管理系统</title>

</head>
<body>
<!--导航栏-->
<nav class="navbar navbar-default">
    <div class="container-fluid">

        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/back/home.jsp">员工后台管理系统
                <small>V1.0</small>
            </a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">欢迎:</a></li>
                <li><a href="#">退出 <span class="glyphicon glyphicon-log-out"></span></a></li>
            </ul>
        </div>
    </div>
</nav>

<!--布局系统 中心内容-->
<div class="container-fluid">
    <div class="row">
        <!--菜单-->
        <div class="col-sm-2">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                               aria-expanded="true" aria-controls="collapseOne">
                                用户管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="javascript:$('#content').load('${pageContext.request.contextPath}/jsp/emp.jsp');"
                                   class="list-group-item">
                                    用户列表
                                </a>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--中心内容-->
        <div class="col-sm-10" id="content">
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <li class="col-sm-offset-1"><h5 href="#">欢迎使用持明法洲后台管理系统!~</h5></li>
                    </ol>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="carousel slide" id="carousel-222941">
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#carousel-222941">
                            </li>
                            <li data-slide-to="1" data-target="#carousel-222941">
                            </li>
                            <li data-slide-to="2" data-target="#carousel-222941">
                            </li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img alt="" src="${pageContext.request.contextPath}/img/微信图片_20180716115911.jpg"/>
                                <div class="carousel-caption">


                                </div>
                            </div>
                            <div class="item">
                                <img alt="" src="${pageContext.request.contextPath}/img/微信图片_20190603161551.jpg"/>
                                <div class="carousel-caption">

                                </div>
                            </div>
                            <div class="item">
                                <img alt="" src="${pageContext.request.contextPath}/img/微信图片_20190603161641.jpg"/>
                                <div class="carousel-caption">
                                    <h4>
                                        Third Thumbnail label
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non
                                        mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id
                                        elit.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-222941" data-slide="prev"><span
                                class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                                        href="#carousel-222941"
                                                                                        data-slide="next"><span
                            class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


</body>
</html>
