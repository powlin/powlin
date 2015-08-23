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
<jsp:include page="/common/jsp/include.jsp"/>
</head>
<body>
	<!--顶部-->
	<div class="layout_top_header">
		<jsp:include page="/page/top.jsp"/>
	</div>
	<!--顶部结束-->
	<!--菜单-->
	<div class="layout_left_menu">
		<jsp:include page="/page/menu.jsp"/>
	</div>
	<!--菜单-->
	<div id="layout_right_content" class="layout_right_content">
		<div class="mian_content">
			<div id="page_content">
				<iframe id="menuFrame" name="menuFrame" src="<%=request.getContextPath()%>/page/trade/system.jsp"
					style="overflow: visible;" scrolling="yes" frameborder="no"
					width="100%" height="100%"></iframe>
			</div>
		</div>
	</div>
	<div class="layout_footer">
		<p>Copyright © 2014 - XXXX科技</p>
	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/tendina.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/index.js"></script>
</html>
