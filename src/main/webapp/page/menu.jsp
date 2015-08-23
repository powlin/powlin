<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>借贷管理平台</title>
<script type="text/javascript">
$(function() {
	doPostAjax("user/menu", null, doSuccessMenu);
});

function doSuccessMenu(res) {
	if (res.success == true) {
		// 一级菜单
		$.each(res.data, function(i, item) {
			if(item.parentCode == undefined || item.parentCode == null || item.parentCode == ""){
            	$("#menu").append("<li class=\"childUlLi\"><a href=\"#\"><i class=\"glyph-icon icon-location-arrow\"></i>"+ item.menuName +"</a><ul id=\""+ item.menuCode +"\" style=\"display: none;\"></ul></li>");
			}
        });
		
		// 二级菜单
		$.each(res.data, function(i, item) {
			if(item.parentCode != null && item.parentCode !="" && item.parentCode != undefined){
            	$("#" + item.parentCode).append("<li><a href=\""+ item.menuUrl +"\" class=\"childMenu\" target=\"menuFrame\"><i class=\"glyph-icon icon-chevron-right\"></i>"+ item.menuName +"</a></li>");
			}
        });
		
		$('#menu').tendina();
		
		//左边所有的超链接，拦截点击事件，发送ajax，结果写入右边的容器里面
		//$(".childMenu").click(function () {
		    //$.get($(this).attr("href"), function (r) {
		       // $("#page_content").html(r);
		    //}, "html");
		    //return false;
		//});
	}else{
		alert("系统异常，请重新登录");
	}
}
</script>
</head>
<body>
	<ul id="menu"></ul>
</body>
</html>
