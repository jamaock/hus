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

<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="uiframe/ztree/js/jquery.ztree.all-3.5.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<link href="uiframe/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="uiframe/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="uiframe/bootstrap/css/bootstrap-docs.css" rel="stylesheet">

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
	    $("#treeDemo_1").toggleClass("active");
	    alert(1);
	});
	function addTab(tid,title,url){
		var node = zTree_Menu.getNodeByTId("treeDemo_"+tid);
		if (!node.isParent) {
			parent.frames["mainFrame"].addTab(tid,title,url);
		}
	}
</SCRIPT>
<style type="text/css">
</style>
 </HEAD>

<BODY>
<div class="row">
            <div class="span3 bs-docs-sidebar">
            <ul class="nav nav-list bs-docs-sidenav affix" id="treeDemo"></ul>
    </div>
</div>
</BODY>
</HTML>
