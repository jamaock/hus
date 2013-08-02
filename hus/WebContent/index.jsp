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
</head>
    <frameset rows="70px,*" cols="*" frameborder="no" border="0" framespacing="0">
        <frame src="head.jsp" id="topFrame" name="topFrame" scrolling="no" noresize="noresize"/>
        <frameset cols="215px,*" frameborder="no" border="0" framespacing="0">
            <frame src="left.jsp" id="leftFrame" name="leftFrame" scrolling="no" noresize="noresize"/>
            <frame src="center.jsp" id="mainFrame" name="mainFrame" scrolling="no" noresize="noresize"/>
        </frameset>
    </frameset>
</html>
