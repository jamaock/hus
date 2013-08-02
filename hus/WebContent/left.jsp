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

<link rel="stylesheet" href="uiframe/ztree/css/demo.css" type="text/css">
<link rel="stylesheet" href="uiframe/ztree/css/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="uiframe/ztree/js/jquery.ztree.all-3.5.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<SCRIPT type="text/javascript">
	var curMenu = null, zTree_Menu = null;
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
	    var spaceWidth = 5;
	    var switchObj = $("#" + treeNode.tId + "_switch"),
	    icoObj = $("#" + treeNode.tId + "_ico");
	    switchObj.remove();
	    icoObj.before(switchObj);
	
	    if (treeNode.level > 1) {
	        var spaceStr = "<span style='display: inline-block;width:" + (spaceWidth * treeNode.level)+ "px'></span>";
	        switchObj.before(spaceStr);
	    }
	}
	function beforeClick(treeId, treeNode) {
	    if (treeNode.level == 0 ) {
	        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
	        zTree.expandNode(treeNode);
	        return false;
	    }
	    return true;
	}
	
	$(document).ready(function(){
	    var treeObj = $("#treeDemo");
	    $.fn.zTree.init(treeObj, setting);
	    zTree_Menu = $.fn.zTree.getZTreeObj("treeDemo");
	    //curMenu = zTree_Menu.getNodes()[0].children[0].children[0];
	    //zTree_Menu.selectNode(curMenu);
	
	    treeObj.hover(function () {
	        if (!treeObj.hasClass("showIcon")) {
	            treeObj.addClass("showIcon");
	        }
	    }, function() {
	        treeObj.removeClass("showIcon");
	    });
	});
	function addTab(tid,title,url){
		var node = zTree_Menu.getNodeByTId("treeDemo_"+tid);
		if (!node.isParent) {
			parent.frames["mainFrame"].addTab(tid,title,url);
		}
	}
</SCRIPT>
    <style type="text/css">
.ztree * {font-size: 10pt;font-family:"Microsoft Yahei",Verdana,Simsun,"Segoe UI Web Light","Segoe UI Light","Segoe UI Web Regular","Segoe UI","Segoe UI Symbol","Helvetica Neue",Arial}
.ztree li ul{ margin:0; padding:0}
.ztree li {line-height:30px;}
.ztree li a {width:190px;height:30px;padding-top: 0px;}
.ztree li a:hover {text-decoration:none; background-color: #E7E7E7;}
.ztree li a span.button.switch {visibility:hidden}
.ztree.showIcon li a span.button.switch {visibility:visible}
.ztree li a.curSelectedNode {background-color:#D4D4D4;border:0;height:30px;}
.ztree li span {line-height:30px;}
.ztree li span.button {margin-top: -7px;}
.ztree li span.button.switch {width: 16px;height: 16px;}

.ztree li a.level0 span {font-size: 150%;font-weight: bold;}
.ztree li span.button {background-image:url("uiframe/ztree/img/left_menuForOutLook.png"); *background-image:url("uiframe/ztree/img/left_menuForOutLook.gif")}
.ztree li span.button.switch.level0 {width: 20px; height:20px}
.ztree li span.button.switch.level1 {width: 20px; height:20px}
.ztree li span.button.noline_open {background-position: 0 0;}
.ztree li span.button.noline_close {background-position: -18px 0;}
.ztree li span.button.noline_open.level0 {background-position: 0 -18px;}
.ztree li span.button.noline_close.level0 {background-position: -18px -18px;}
    </style>
 </HEAD>

<BODY>
<div class="content_wrap">
    <div class="zTreeDemoBackground left">
        <ul id="treeDemo" class="ztree"></ul>
    </div>
</div>
</BODY>
</HTML>
