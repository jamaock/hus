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
<link rel="STYLESHEET" type="text/css" href="uiframe/dhtmlx/grid/codebase/dhtmlxgrid.css">
<link rel="stylesheet" type="text/css" href="uiframe/dhtmlx/grid/codebase/skins/dhtmlxgrid_dhx_skyblue.css">
<script  src="uiframe/dhtmlx/grid/codebase/dhtmlxcommon.js"></script>
<script  src="uiframe/dhtmlx/grid/codebase/dhtmlxgrid.js"></script>
<script  src="uiframe/dhtmlx/grid/codebase/dhtmlxgridcell.js"></script>
<script type="text/javascript">
window.onload= function () {
    mygrid = new dhtmlXGridObject('gridbox');
    mygrid.setImagePath("uiframe/dhtmlx/grid/codebase/imgs/");
    mygrid.setHeader("Sales Dynamic,Title,Description,Price,In Store,Shipping,Date of Publication");
    mygrid.setInitWidths("120,150,*,50,80,80,150");
    mygrid.setColAlign("right,left,left,right,center,right,center");
    mygrid.setColTypes("dyn,ed,txt,price,ch,coro,ro");
    mygrid.setColSorting("int,str,str,int,str,str,na");
    mygrid.getCombo(5).put(1, "1 hour");
    mygrid.getCombo(5).put(12, "12 hours");
    mygrid.getCombo(5).put(24, "24 hours");
    mygrid.getCombo(5).put(48, "2 Days"); 
    mygrid.setSkin("modern");
    mygrid.init();
    mygrid.loadXML("uiframe/dhtmlx/grid/samples/common/grid_big_18_styles_skins.xml");
}
</script>

</head>
<body style="margin: 0 auto;">
    <div style="background-color:#F0F0F0;height:120px;">
        <h2><span>报价单</span></h2>
        <button class="btn btn-danger">新增</button>
    </div>
    <div id="gridbox" style="width:100%;height:800px;background-color:white;"></div>
</body>
</html>