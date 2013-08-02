<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath =
        request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--<![endif]-->
<head>
<title>组件 · Bootstrap中文网</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<!-- Le styles -->
<link href="http://cdnjs.bootcss.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="http://cdnjs.bootcss.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://www.bootcss.com/assets/css/docs.css" rel="stylesheet">

<body>
    <!-- Navbar ================================================== -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="http://www.bootcss.com/">Bootstrap中文网</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="">
                <a href="http://www.bootcss.com/">首页</a>
                <li class=""><a
							href="http://www.bootcss.com/getting-started.html"
							class="bootstro"
							data-bootstro-placement="bottom" data-bootstro-step="1">起步</a></li>
						<li class=""><a
							href="http://www.bootcss.com/scaffolding.html" class="bootstro"
							data-bootstro-title="这里详细介绍了Bootstrap的栅格系统。对于栅格系统的理论知识，最好动手谷歌一下！"
							data-bootstro-placement="bottom" data-bootstro-step="0">脚手架</a></li>
						<li class=""><a href="http://www.bootcss.com/base-css.html"
							class="bootstro"
							data-bootstro-title="这里介绍了Bootstrap对HTML标签所设置的默认样式。任何一个符合HTML5规范的页面只要引入Bootstrap就自然具有了优雅的外观，这就是Bootstrap的功劳！"
							data-bootstro-placement="bottom" data-bootstro-step="2">基本CSS样式</a>
						</li>
						<li class="active"><a
							href="http://www.bootcss.com/components.html" class="bootstro"
							data-bootstro-title="这里介绍了常用的诸如按钮、弹框、导航条、下拉菜单、进度条等等常见的页面组件。按照例子照猫画虎就可以，熟能生巧。这些都不需要刻意去记忆，需要的时候随时回来翻文档，然后复制、粘贴即可！"
							data-bootstro-placement="bottom" data-bootstro-step="3">组件</a></li>
						<li class=""><a href="http://www.bootcss.com/javascript.html"
							class="bootstro"
							data-bootstro-title="这里介绍了Bootstrap自带的具有交互功能的组件。页面要想与用户交互当然离不开Javascript了。Bootstrap的组件都是基于jQuery的，你熟悉jQuery吗？建议谷歌一下。"
							data-bootstro-placement="bottom" data-bootstro-step="4">JavaScript插件</a>
						</li>
						<li class=""><a href="http://www.bootcss.com/customize.html"
							class="bootstro"
							data-bootstro-title="在这里可以通过设置Bootstrap提供的参数改变Bootstrap的样貌。我们不建议过早接触这里，在你熟悉Bootstrap阶段，最好是通过覆盖样式的方式修改Bootstrap默认的外观。等你需要深入了解Bootstrap时，可以先学习Lesscss ---&gt;&gt;&gt;"
							data-bootstro-placement="bottom" data-bootstro-step="5">定制</a></li>
						<li class="lesscss"><a target="_blank"
							href="http://www.bootcss.com/lesscss.html" class="bootstro"
							data-bootstro-title="Lesscss是一种预编译脚本，编译之后就是你所熟悉的CSS了。Bootstrap就是采用Less语法书写的。想要深入Bootstrap底层的同学一定要看这里打好基础！"
							data-bootstro-placement="bottom" data-bootstro-step="6">Lesscss教程</a>
						</li>

						<li class=""><a href="http://www.bootcss.com/about.html">关于</a>
						</li>
					</ul>
				</div>
		</div>
	</div>
</div>

    <!-- Docs nav ================================================== -->
		<div class="row">
			<div class="span3 bs-docs-sidebar">
				<ul class="nav nav-list bs-docs-sidenav affix">
					<li class="active"><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li onclick="this.className='active'"><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li onclick="this.className='active'"><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li onclick="this.className='active'"><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li onclick="this.className='active'"><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
					<li onclick="this.className='active'"><a href=""><i class="icon-chevron-right"></i> 下拉菜单</a></li>
				</ul>
			</div>
</div>
</body>
</html>