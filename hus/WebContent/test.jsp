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
    margin-bottom:0px;
    height: 100%;
    background-color: red;
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
    /*padding: 16px 0;*/
    margin: 0 auto;
    height: 80%;
    width: 100%;
    z-index: 0;
}

.form_contatiner_sheet {
    border: 1px bold #c8c8d3;
    -moz-box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    -webkit-box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    background: white;
    padding: 16px;
    margin: 0 auto;
    height: 90%;
    width: 80%;
    z-index: 0;
}
</style>
</head>
<body>
<div class="navbar">
    <div class="navbar-inner">
        <button class="btn btn-danger">保存</button>
        <button class="btn btn-link">废弃</button>
    </div>
    <div class="navbar-inner">
        <button class="btn">以邮件发送</button>
        <button class="btn">打印</button>
        <button class="btn">确认订单</button>
        <button class="btn">审核</button>
        <button class="btn">取消报价</button>
    </div>
    <div class="form_contatiner">
        <div class="form_contatiner_sheet">
        </div>
    </div>
</div>
</body>
</html>