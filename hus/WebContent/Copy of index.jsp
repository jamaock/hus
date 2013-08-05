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
<link href="uiframe/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="uiframe/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="uiframe/ztree/css/zTreeStyle.css" type="text/css">

<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>

<script type="text/javascript" src="uiframe/ztree/js/jquery.ztree.all-3.5.js"></script>
<script type="text/javascript" src="uiframe/bootstrap/js/bootstrap.js"></script>

<link rel="STYLESHEET" type="text/css" href="uiframe/dhtmlx/tabbar/codebase/dhtmlxtabbar.css">
<script type="text/javascript" src="uiframe/dhtmlx/tabbar/codebase/dhtmlxcommon.js"></script>
<script type="text/javascript" src="uiframe/dhtmlx/tabbar/sources/dhtmlxtabbar.js"></script>

<script type="text/javascript">
//左侧菜单栏加载
var tabbar=null;
var zTree_Menu = null;
var setting = {
    view: {
        showLine: false,
        showIcon: false,
        selectedMulti: false,
        dblClickExpand: false,
        addDiyDom: addDiyDom
    },
    data: {
        simpleData: {
            enable: true
        }
    },
    callback: {
        beforeClick: beforeClick
    },
    async: {
        enable: true,
        type:"get",
        dataType:"text",
        url:"task/geneLeftMenu"
    }
};
function addDiyDom(treeId, treeNode) {
    if (treeNode.level == 0) {
        $("#" + treeNode.tId+" > a").attr("class","nav-header menu-first");
    }
        //$("#treeDemo_1_ul").attr("class","nav nav-list menu-second");
}
function beforeClick(treeId, treeNode) {
    if (treeNode.level == 0 ) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        zTree.expandNode(treeNode);
        //设置二级菜单
        $("#" + treeNode.tId+" > ul").attr("class","nav nav-list menu-second");
        //一级菜单选中效果
        $(".menu-first-selected").removeClass("menu-first-selected");
        $("#" + treeNode.tId+" > a").addClass("menu-first-selected");
        return false;
    }else{
        //二级菜单选中效果
        $(".menu-second-selected").removeClass("menu-second-selected");
        $("#" + treeNode.tId+" > a").attr("class","menu-second-selected");
    }
    return true;
}
window.onload=function(){
    var wid=document.body.clientWidth;
    var hei=document.documentElement.clientHeight-50;
    $("#sidebar-menu").css("height",hei+"px");
    $("#centerContainer").css("height",hei+"px");
    $("#centerContainer").css("width", (wid -300) + "px");
    //tree
    var treeObj = $("#treeDemo");
    $.fn.zTree.init(treeObj, setting);
    zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
    //Tab
    tabbar = new dhtmlXTabBar("centerContainer", "top");
    //tabbar.setHrefMode("ajax-html");

    tabbar.setHrefMode("iframes-on-demand");
    tabbar.setSkin('dhx_blue');
    tabbar.setImagePath("uiframe/dhtmlx/tabbar/codebase/imgs/");
    tabbar.enableForceHiding(1);
    tabbar.enableTabCloseButton(true);
    //tabbar.enableAutoSize(false, true);

    tabbar.addTab("a1", "主页", "100px");
    //tabbar.setContentHref("a1", "initMain.jsp");
    tabbar.setContentHref("a1", "jsp/sale/quote/quoteMain.jsp");
    
    tabbar.setTabActive("a1");
};

function addTab(tid,title,url){
    var tabCells = tabbar.getAllTabs();
    if ($.inArray(tid, tabCells) == -1) {
        tabbar.addTab(tid, title, "100px");
        tabbar.setContentHref(tid,url);
	}
    tabbar.setTabActive(tid);
}
</script>
<style type="text/css">
        body{padding-top: 40px;}
        a{cursor: pointer;}
    /*左侧菜单*/
        .sidebar-menu{
            border-right: 1px solid #c4c8cb;float: left;
            width: 217px;overflow-y: auto;
        }
        .sidebar-menu li{
        width: 190px;
        }
        /*一级菜单*/
        .menu-first{
            width: 215px;
            height:45px;
            line-height:45px;
            background-color: #e9e9e9;
            border-top: 1px solid #efefef;
            border-bottom: 1px solid #e1e1e1;
            padding: 0;
            font-size: 14px;
            color:#005AB5;
            font-weight: bold;
            text-align:left;
        }
        .menu-first span{
            margin-left:15px;
        }
        /*一级菜单鼠标划过状态*/
        .menu-first:hover{
            text-decoration: none;
            background-color: #d6d4d5;
            border-top: 1px solid #b7b7b7;
            border-bottom: 1px solid #acacac;
        }
        /*二级菜单*/
        .menu-second li a{
            background-color: #f6f6f6;
            height:31px;
            line-height:31px;
            //border-top: 1px solid #efefef;
            //border-bottom: 1px solid #efefef;
            font-size: 12px;
            text-align:center;
        }
        /*二级菜单鼠标划过样式*/
        .menu-second li a:hover {
            text-decoration: none;
            background-color: #66c3ec;
            border-top: 1px solid #83ceed;
            border-bottom: 1px solid #83ceed;
            border-right: 3px solid #f8881c;
            border-left: 3px solid #66c3ec;
        }
        /*二级菜单选中状态*/
        .menu-first-selected {
            border: 1px solid #f8881c;
        }
        /*二级菜单选中状态*/
        .menu-second-selected {
            background-color: #66c3ec;
            height:31px;
            line-height:31px;
            border-top: 2px solid #83ceed;
            border-bottom: 2px solid #83ceed;
            border-right: 5px solid #f8881c;
            border-left: 5px solid #66c3ec;
            text-align:center;
        }
        /*覆盖bootstrap的样式*/
        .nav-list,.nav-list li a{
            padding: 0px;
            margin: 0px;
        }
</style>
</head>
<body>
    <!-- ========= head banner ================ -->
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active"><a href="http://www.bootcss.com/">首页</a></li>
                        <li><a href="http://www.bootcss.com/">销售</a></li>
                        <li><a href="http://www.bootcss.com/">采购</a></li>
                        <li><a href="http://www.bootcss.com/">库存</a></li>
                        <li><a href="http://www.bootcss.com/">报表</a></li>
                        <li><a href="http://www.bootcss.com/">系统</a></li>
                        <li><a href="http://www.bootcss.com/">设置</a></li>
                    </ul>
                 </div>
                <div class="pull-right ">
                    <ul class="nav">
                        <li><h4>欢迎您：<a>admin</a></h4></li>
                        <li style="margin-left: 20px;"><button type="submit" class="btn">注销</button></li>
                    </ul>
                 </div>
            </div>
        </div>
    </div>
    <!-- ========= left tree menu ============ -->
    <div style="margin-left: 5px;  padding-top:1px;">
        <!--Sidebar-->
        <div class="sidebar-menu">
            <ul class="nav nav-list" id="treeDemo"></ul>
        </div>
        <!--content-->
        <div style="float: left;">
            <div id="centerContainer" style="height: 595px;"></div>
        </div>
    </div>
</body>
</html>