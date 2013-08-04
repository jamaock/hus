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
</div>
</body>
</html>