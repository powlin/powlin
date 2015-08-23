<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#main-nav {
	margin-left: 1px;
}

#main-nav.nav-tabs.nav-stacked>li>a {
	padding: 10px 8px;
	font-size: 12px;
	font-weight: 600;
	color: #4A515B;
	background: #E9E9E9;
	background: -moz-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #FAFAFA),
		color-stop(100%, #E9E9E9));
	background: -webkit-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: -o-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: -ms-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	background: linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA',
		endColorstr='#E9E9E9');
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9')";
	border: 1px solid #D5D5D5;
	border-radius: 4px;
}

#main-nav.nav-tabs.nav-stacked>li>a>span {
	color: #4A515B;
}

#main-nav.nav-tabs.nav-stacked>li.active>a, #main-nav.nav-tabs.nav-stacked>li>a:hover
	{
	color: #FFF;
	background: #3C4049;
	background: -moz-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #4A515B),
		color-stop(100%, #3C4049));
	background: -webkit-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: -o-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: -ms-linear-gradient(top, #4A515B 0%, #3C4049 100%);
	background: linear-gradient(top, #4A515B 0%, #3C4049 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#4A515B',
		endColorstr='#3C4049');
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr='#4A515B', endColorstr='#3C4049')";
	border-color: #2B2E33;
}

#main-nav.nav-tabs.nav-stacked>li.active>a, #main-nav.nav-tabs.nav-stacked>li>a:hover>span
	{
	color: #FFF;
}

#main-nav.nav-tabs.nav-stacked>li {
	margin-bottom: 4px;
}

/*定义二级菜单样式*/
.secondmenu a {
	font-size: 10px;
	color: #4A515B;
	text-align: left;
}

.navbar-static-top {
	margin-bottom: 5px;
}

.navbar-brand {
	background: url('') no-repeat 10px 8px;
	display: inline-block;
	vertical-align: middle;
	padding-left: 50px;
	color: #fff;
}
</style>
<header id="header" class="navbar navbar-default  navbar-static-top">
<div class="container-fluid">
	<div class="navbar-header">

		<a class="navbar-brand" data-i18n="title" href="#" id="logo">配置管理系统
		</a> <a class="navbar-brand" class="btn btn-default" onclick="divhide()">
			<span class="glyphicon glyphicon-align-justify"></span>
		</a> <span class="navbar-brand" data-i18n="title">jQuery Bootgrid</span>
	</div>

	<nav id="menu" class="navbar-collapse collapse" role="navigation">
	<ul class="nav navbar-nav navbar-right">
		<li><a href="#">退出</a></li>
	</ul>
	</nav>
</div>
</header>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-2" id="hiddendiv">
			<ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
				<li class="active"><a href="#"> <i
						class="glyphicon glyphicon-th-large"></i> 首页
				</a></li>
				<li><a href="#systemSetting" data-toggle="collapse"
					class="nav-header collapsed" data-parent="hiddendiv"> <i
						class="glyphicon glyphicon-cog"></i> 系统管理 <span
						class="pull-right glyphicon glyphicon-chevron-down"></span>
				</a>
					<ul id="systemSetting" class="nav nav-list collapse secondmenu"
						style="height: 0px;">
						<li><a href="#"
							onclick="createTabs('usercode','用户管理','./bootgrid.html')"><i
								class="glyphicon glyphicon-user"></i>用户管理</a></li>
						<li><a href="#"
							onclick="createTabs('menucode','菜单管理','./bootgrid.html')"><i
								class="glyphicon glyphicon-th-list"></i>菜单管理</a></li>
						<li><a href="#"
							onclick="createTabs('rolecode','角色管理','./bootgrid.html')"><i
								class="glyphicon glyphicon-asterisk"></i>角色管理</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
					</ul></li>
				<li><a href="#" data-toggle="collapse" data-parent="hiddendiv">
						<i class="glyphicon glyphicon-credit-card"></i> 物料管理
				</a></li>

				<li><a href="#" data-toggle="collapse" data-parent="hiddendiv">
						<i class="glyphicon glyphicon-globe"></i> 分发配置 <span
						class="label label-warning pull-right">5</span>
				</a></li>

				<li><a href="#" data-toggle="collapse" data-parent="hiddendiv">
						<i class="glyphicon glyphicon-calendar"></i> 图表统计
				</a></li>
				<li><a href="#" data-toggle="collapse" data-parent="hiddendiv">
						<i class="glyphicon glyphicon-fire"></i> 关于系统
				</a></li>

			</ul>

		</div>
		<div class="col-md-9" id="tabs2">
			<ul class="nav" role="tablist" id="maintab">

			</ul>
			<!-- Tab panes
<div class="tab-content" id="maindiv">
<div class="tab-pane active" id="home"></div>
</div> -->
		</div>
	</div>
</div>
</body>
<script src="jquery-bootgrid-master/lib/jquery-1.11.1.min.js"></script>
<script src="jquery-bootgrid-master/demo/js/bootstrap.js"></script>
<link type="text/css" href="./jquery-ui-1.9.2.custom.css"
	rel="stylesheet" />
<script type="text/javascript" src="./jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript">
function divhide(){
$("#hiddendiv").fadeToggle(250);
}
</script>
<script>


 //createTabs('rolecode','角色管理','./bootgrid.html')"
 function createTabs(functionCode,functionName,url){
	addTab(functionName,functionCode,url);
 }
 //<!-- tabs jquery ui bootstrap 中的案例，有些改变，但总体还是借鉴。-->
 var tabTitle ="new Tab",
      tabTemplate = "<li class='active' ><a href='#{href}'>#{label}</a> <span class='ui-icon ui-icon-close'>Remove Tab</span></li>",
      tabCounter = 0;
      var tabs = $( "#tabs2" ).tabs();
     
      function addTab(functionName,functionCode,url ) {
        var label = functionName || "Tab " + tabCounter,
            id = "tabs-" + functionCode,
            li = $( tabTemplate.replace( /#\{href\}/g, "#" + id ).replace( /#\{label\}/g, label ) );
			if($("#tabs-"+functionCode).length>0) //如果有相同的functionCode ，说明已经有了tab，不用新建，选中就行了。
			{
			tabs.tabs('select', '#' +id); 
			// return ;
			}
        tabs.find( ".ui-tabs-nav" ).append( li );
        //每个div 中都有一个iframe ,这种方式不是太好，可自己优化。
        tabs.append( "<div id='" + id + "'><iframe src=\""+url+"\"  width=\"100%\" height=\"550px;\" frameborder=0 scrolling=\"no\"></iframe></div>" );
        tabs.tabs( "refresh" );
      
        tabs.tabs('select', '#' +id);   //根据id 选中tab
        tabCounter++;
    }
      
      <!--关闭-->
      $( "#tabs2" ).on( "click",'span.ui-icon-close', function() {
          var panelId = $( this ).closest( "li" ).remove().attr( "aria-controls" );
          $( "#" + panelId ).remove();
          tabs.tabs( "refresh" );
      }); 
      
     
</script>
</html>