<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="new date 2013年7月13日">
<base href="<%=basePath%>"> 
<title>HUS-ERP欢迎您</title>
<link href="uiframe/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="uiframe/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="uiframe/bootstrap/css/bootstrap-docs.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="uiframe/bootstrap/js/bootstrap.js"></script>

</head>
<body>
    <!-- ========= head banner ================ -->
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active"><a href="http://www.bootcss.com/">首页</a></li>
                        <li><a href="http://www.bootcss.com/">销售</a></li>
                        <li><a href="http://www.bootcss.com/">采购</a></li>
                        <li><a href="http://www.bootcss.com/">库存</a></li>
                        <li><a href="http://www.bootcss.com/">报表</a></li>
                        <li><a href="http://www.bootcss.com/">系统</a></li>
                        <li><a href="http://www.bootcss.com/">设置</a></li>
                    </ul>
                 </div>
                <div class="pull-right ">
                    <ul class="nav">
                        <li><h4>欢迎您：<a>admin</a></h4></li>
                        <li style="margin-left: 20px;"><button type="submit" class="btn">注销</button></li>
                    </ul>
                 </div>
            </div>
        </div>
    </div>
    <!-- ========= left tree menu ============ -->
    <div>
        <ul id="treeMenu" class="nav nav-list bs-docs-sidenav affix"></ul>
    </div>

</body>
</html>