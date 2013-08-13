<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="new date 2013年8月2日">
<base href="<%=basePath%>">
<title>Insert title here</title>
<link rel="stylesheet" href="uiframe/bootstrap/css/bootstrap.css" type="text/css">
<script type="text/javascript">
function tesxt(){
}
</script>
<style type="text/css">
html,body {
    margin: 0 auto;
    height: 100%;
    text-shadow: rgba(255, 255, 255, 0.498039) 0px 1px 1px;
}
.navbar {
    margin-bottom: 0px;
    height: 100%;
}
.form_contatiner {
    background-attachment: scroll;
    background-clip: border-box;
    background-color: transparent;
    background-image: url("css/img/form_sheetbg.png");
    background-origin: padding-box;
    background-size: auto;
    border-bottom: 1px solid #dddddd;
    border-collapse: collapse;
    color: rgb(76, 76, 76);
    padding: 16px 0;
    margin: 0 auto;
    height: 79%;
    width: 100%;
    z-index: 0;
}

.form_contatiner_sheet {
    border: 1px bold #c8c8d3;
    -moz-box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    -webkit-box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    background: white;
    margin: 0 auto;
    height: 90%;
    width: 80%;
    z-index: 0;
}
</style>
</head>
<body>
        <div class="btn-group" style="float: right;">
            <a class="btn btn-info">刷新</a>
            <a class="btn btn-info">关闭</a>
            <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="icon-pencil"></i> 关闭其他</a></li>
                <li><a href="#"><i class="icon-trash"></i> 关闭所有 </a></li>
            </ul>
        </div>
<div class="navbar">
    <div class="navbar-inner">
        <button class="btn btn-danger">保存</button>
        <button class="btn btn-link">废弃</button>
    </div>
    <div class="navbar-inner">
        <button class="btn">以邮件发送</button>
        <button class="btn">打印</button>
        <button class="btn btn-warning" style="margin-left: 20px;">确认订单</button>
        <button class="btn btn-warning">审核</button>
        <button class="btn btn-danger">删除订单</button>
    </div>
    <div class="form_contatiner">
        <div class="form_contatiner_sheet">
        <form>
	        <div class="ord_top" style="height: 100px ;background-color: #F0F0F0;">
	           <div class="row-fluid">
        <div class="span8" style="font-family: Microsoft YaHei;">
	        <h3 class="help-inline">销售订单</h3>
            <!-- <span class=" h1 help-inline">销售订单</span> -->
	        <input type="text" style="margin-top: 15px; border: 0px;" value="SO20130812-010">
        </div>
        <div class="span4"  style="margin-top: 15px;">
	        <span  class="help-inline label label-info" style="margin-top: -1px;">货主</span>
	        <input type="text" style="margin-top: 15px;">
        </div>
	        </div>
	        </div>
	        <div class="ord_button" style="height: 50% ;background-color: red;">
	        </div>
        </form>
        </div>
    </div>
</div>
</body>
</html>