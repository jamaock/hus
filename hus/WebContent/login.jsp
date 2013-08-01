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
<link rel="stylesheet" type="text/css" href="uiframe/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="uiframe/bootstrap/css/bootstrap-responsive.css">
<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="uiframe/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<title>HUS-ERP欢迎您</title>
</head>

<body>
    <div class="container" style="margin-top: 100px">
        <form action="login/toin" method="post" class="well" style="width: 300px; margin: 0px auto;">
            <h3>系统登录</h3>
            <label>用户名:</label>
            <input type="text" name="lgView.username" value="123" style="height: 30px" class="span3" />
            <label>密码：</label>
            <input type="password" name="lgView.password" value="123" style="height: 30px" class="span3">
            <button type="submit" class="btn btn-primary">登陆系统</button>
        </form>
    </div>
</body>
</html>