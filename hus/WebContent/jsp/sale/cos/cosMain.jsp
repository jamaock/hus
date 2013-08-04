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
<link href="uiframe/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="uiframe/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="uiframe/bootstrap/js/bootstrap.js"></script>

<link rel="STYLESHEET" type="text/css" href="uiframe/dhtmlx/grid/codebase/dhtmlxgrid.css">
<link rel="stylesheet" type="text/css" href="uiframe/dhtmlx/grid/codebase/skins/dhtmlxgrid_dhx_skyblue.css">
<script src="uiframe/dhtmlx/grid/codebase/dhtmlxcommon.js"></script>
<script src="uiframe/dhtmlx/grid/codebase/dhtmlxgrid.js"></script>
<script src="uiframe/dhtmlx/grid/codebase/dhtmlxgridcell.js"></script>

<script type="text/javascript">
window.onload= function () {
    var hei=document.documentElement.clientHeight-50;
    document.getElementById("gridbox").style.height = hei*0.8 +"px";

    mygrid = new dhtmlXGridObject('gridbox');
    mygrid.setImagePath("uiframe/dhtmlx/grid/codebase/imgs/");
    mygrid.setHeader("序号,销售订单号,日期,客户,销售员,合计,状态");
    mygrid.setInitWidthsP("5,20,15,15,15,15,15");
    mygrid.setColAlign("center,left,left,center,center,left,center");
    mygrid.setColTypes("ch,dyn,ed,txt,price,coro,ro");
    mygrid.setColSorting("int,str,str,int,str,str,na");
    mygrid.setSkin("modern");
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
.bs-example {
  position: relative;
  background-color: #F0F0F0;
  padding-top:39px;
  height:45px;
  width:50%;
  float:left;
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}

/* Echo out a label for the example */
.bs-example:after {
  content: "销售订单";
  position: absolute;
  top: -1px;
  left: -1px;
  padding: 3px 7px;
  font-size: 25px;
  font-weight: bold;
  background-color: #f5f5f5;
  border: 2px solid #ddd;
  color: #FF8000;
  -webkit-border-radius: 4px 0 4px 0;
     -moz-border-radius: 4px 0 4px 0;
          border-radius: 4px 0 4px 0;
}
.bs-search{
  position: relative;
  background-color: #F0F0F0;
  padding-top:39px;
  height:45px;
  width:50%;
  float:left;
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}


</style>
</head>
<body style="margin: 0">
    <div class="bs-example">
        <div class="span1">
            <button class="btn btn-primary" onclick="window.location='<%=basePath%>jsp/sale/cos/addCos.jsp';">新增</button>
        </div>
        <div class="btn-group offset2" data-toggle="buttons-radio">  
			<button type="button" class="btn">导出EXCEL</button>  
			<button type="button" class="btn">导出PDF</button>  
        </div>
        <div class="btn-group">
			<button type="button" class="btn btn-danger">删除</button>  
        </div>
    </div>
    <div class="bs-search">
    </div>
    <div id="gridbox" style="width:98%;background-color:white;"></div>
</body>
</html>