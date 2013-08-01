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
<title>Insert title here</title>

<link rel="STYLESHEET" type="text/css" href="uiframe/dhtmlx/tabbar/dhtmlxtabbar.css">
<script type="text/javascript" src="uiframe/dhtmlx/tabbar/dhtmlxcommon.js"></script>
<script type="text/javascript" src="uiframe/dhtmlx/tabbar/dhtmlxtabbar.js"></script>

<body>
<div id="a_tabbar" style="width:395px; height:390px;"></div>
<div id='html_1'><img src="uiframe/dhtmlx/tabbar/common/page_a.gif"></div>
<div id='html_2'><img src="uiframe/dhtmlx/tabbar/common/page_a.gif"></div>
<script type="text/javascript">
var tabbar = new dhtmlXTabBar("a_tabbar", "top");
tabbar.setSkin('dhx_skyblue');
tabbar.setImagePath("uiframe/dhtmlx/tabbar/imgs/");
tabbar.addTab("a1", "Tab 1-1", "100px");
tabbar.addTab("a2", "Tab 1-2", "100px");
tabbar.addTab("a3", "Tab 1-3", "100px");
tabbar.setContent("a1", "html_1");
tabbar.setContent("a2", "html_2");
tabbar.setContentHTML("a3", "<br/>The content can be set as <b>HTML</b> node or as <b>HTML</b> text.");
tabbar.setTabActive("a1");

</script>
</body>