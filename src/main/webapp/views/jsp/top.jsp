﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="../components/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../components/js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(../components/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.jsp" target="_parent"><img src="../components/images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="../views/default.jsp" target="rightFrame" class="selected"><img src="../components/images/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
    <li><a href="../views/imgtable.jsp" target="rightFrame"><img src="../components/images/icon02.png" title="模型管理" /><h2>模型管理</h2></a></li>
    <li><a href="../views/imglist.jsp"  target="rightFrame"><img src="../components/images/icon03.png" title="模块设计" /><h2>模块设计</h2></a></li>
    <li><a href="../views/tools.jsp"  target="rightFrame"><img src="../components/images/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
    <li><a href="../views/computer.jsp" target="rightFrame"><img src="../components/images/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
    <li><a href="../views/tab.jsp"  target="rightFrame"><img src="../components/images/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="../components/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.html" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>

</body>
</html>
