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
<link href="uiframe/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="uiframe/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="uiframe/bootstrap/css/bootstrap-docs.css" rel="stylesheet">
<link rel="stylesheet" href="uiframe/ztree/css/zTreeStyle.css" type="text/css">

<script type="text/javascript" src="js/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="uiframe/ztree/js/jquery.ztree.all-3.5.js"></script>
<script type="text/javascript" src="uiframe/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
//左侧菜单栏加载
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
        var spaceWidth = 5;
        var switchObj = $("#" + treeNode.tId + "_switch");
        if (treeNode.level > 0) {
            var spaceStr = "<span style='display: inline-block;width:" + (spaceWidth * treeNode.level)+ "px'></span>";
            switchObj.before(spaceStr);
        }
    }
    function beforeClick(treeId, treeNode) {
        if (treeNode.level == 0 ) {
        	$(".parent_tree_onclick").removeClass("parent_tree_onclick");
        	$("#" + treeNode.tId + " > a").addClass("parent_tree_onclick");
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
    });
    function addTab(tid,title,url){
        var node = zTree_Menu.getNodeByTId("treeDemo_"+tid);
        if (!node.isParent) {
            parent.frames["mainFrame"].addTab(tid,title,url);
        }
    }
    
</script>
<style type="text/css">
 #treeDemo {margin-top: 10px;border: 1px solid #617775;background: #f0f6e4;width:205px;height:600px;overflow-y:scroll;
        scrollbar-shadow-color: ##E5EFFE; scrollbar-highlight-color: ##E5EFFE;scrollbar-face-color:#d9d9d9;
        scrollbar-3dlight-color:#9ebff8; scrollbar-darkshadow-color:#9ebff8; scrollbar-track-color: #E5EFFE;
} 

#treeDemo li ul{ margin:0; padding:0}
#treeDemo li {line-height:30px;width: 150px;}
#treeDemo li a {width:190px;height:30px;padding-top: 0px;}
#treeDemo li a span.button.switch {visibility:hidden}
#treeDem.showIcon li a span.button.switch {visibility:visible}
/* a.parent_tree_onclick:link,
a.parent_tree_onclick:visited,
a.parent_tree_onclick:hover,
a.parent_tree_onclick:active{
background-color:#0088cc;color: white;} */
#treeDemo > li > .parent_tree_onclick,
#treeDemo > li > .parent_tree_onclick:hover,
#treeDemo > li > .parent_tree_onclick:focus{
  background-color: #0088cc;
  color: white;
}
.ztree li span {line-height:30px;}
.ztree li span.button {margin-top: -7px;}
.ztree li span.button.switch {width: 16px;height: 16px;}
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
    <div class="container">
        <div class="row">
            <!-- <div class="span3 bs-docs-sidebar"> -->
            <div style="float: left;">
                <ul class="nav nav-list bs-docs-sidenav" id="treeDemo"></ul>
            </div>
        <div class="span9" id="centerContainer"></div>
        </div>
    </div>
</body>
</html>