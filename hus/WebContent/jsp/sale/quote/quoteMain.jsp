<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
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

<link rel="STYLESHEET" type="text/css" href="uiframe/dhtmlx/grid/codebase/dhtmlxgrid.css">
<link rel="stylesheet" type="text/css" href="uiframe/dhtmlx/grid/codebase/skins/dhtmlxgrid_dhx_skyblue.css">

<script  src="uiframe/dhtmlx/grid/codebase/dhtmlxcommon.js"></script>
<script  src="uiframe/dhtmlx/grid/codebase/dhtmlxgrid.js"></script>
<script  src="uiframe/dhtmlx/grid/codebase/dhtmlxgridcell.js"></script>
<script type="text/javascript">
window.onload= function () {
    var hei=document.documentElement.clientHeight-50;
    document.getElementById("gridbox").style.height = hei*0.8 +"px";

    mygrid = new dhtmlXGridObject('gridbox');
    mygrid.setImagePath("uiframe/dhtmlx/grid/codebase/imgs/");
    mygrid.setHeader("序号,报价单号,日期,客户,销售员,合计,状态");
    mygrid.setInitWidthsP("5,20,15,15,15,15,15");
    mygrid.setColAlign("center,left,left,center,center,left,center");
    mygrid.setColTypes("ch,dyn,ed,txt,price,coro,ro");
    mygrid.setColSorting("int,str,str,int,str,str,na");
    mygrid.setSkin("dhx_terrace");
    //mygrid.enablePaging(true,10,5,"pagingArea",true,"recinfoArea");

    //设置 行 随鼠标变色
    //mygrid.enableLightMouseNavigation(true);
    mygrid.enableRowsHover(true,"grid_hover");
    //自动高度
    //mygrid.enableAutoHeight(true);
    //设置  上下热键 是否有效
    //mygrid.enableKeyboardSupport(true);
    mygrid.init();
    mygrid.loadXML("uiframe/dhtmlx/grid/samples/common/grid_big_18_styles_skins.xml");
}
</script>
<style type="text/css">
.grid_hover {
    background-color:#7FFFD4;
    font-size:20px;
}
</style>
</head>
<body style="margin: 0 auto;">
    <div style="background-color:#F0F0F0;height:100px;">
        <h2><span>报价单</span></h2>
        <button class="btn btn-danger">新增</button>
    </div>
    <div id="gridbox" style="width:98%;background-color:white;"></div>
</body>
</html>