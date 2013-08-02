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

<script type="text/javascript">
var tabbar=null;
window.onload=function(){
    tabbar = new dhtmlXTabBar("framecenter", "top");
    tabbar.setHrefMode("iframes-on-demand");
    tabbar.setSkin('dhx_skyblue');
    tabbar.setImagePath("uiframe/dhtmlx/tabbar/imgs/");
    tabbar.enableForceHiding(1);
    
    tabbar.addTab("a1", "主页", "100px");
    tabbar.setContentHref("a1", "initMain.jsp");
    
    tabbar.setTabActive("a1");
};
function addTab(tid,title,url){
        tabbar.addTab(tid, title, "100px");
        tabbar.setContentHref(tid,url);
        tabbar.setTabActive(tid);
}
</script>
<style type="text/css">
body{margin-top:0;margin-left:auto;}
/*设置tabbar不变*/
.dhx_tablist_zone{position: fixed;}
</style>
</head>
<body style="background-color: #FFF;">
    <div id="framecenter" style="width:1200px; height:620px;"></div>
</body>
</html>