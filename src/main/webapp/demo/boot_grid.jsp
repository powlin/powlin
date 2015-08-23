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
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->

</head>
<body>
	<input type="hidden" id="base_path"
		value="<%=request.getContextPath()%>" />
	<div class="container">
		<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">借贷管理平台</a>
		</div>
		</nav>
		<div class="row">
			<div class="col-md-3" data-spy="affix" data-offset-top="200">
				<div class="list-group">
					<a href="#" class="list-group-item active">会员管理</a> <a href="#"
						class="list-group-item">审批管理</a>
				</div>
			</div>
			<div class="col-md-9">
				<table id="grid-data"
					class="table table-condensed table-hover table-striped">
					<thead>
						<tr>
							<th data-column-id="code">系统编号</th>
							<th data-column-id="name">系统名称</th>
							<th data-column-id="downloadUrl">官网下载地址</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="<%=request.getContextPath()%>/bootstrap/js/jquery-1.11.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var currentPage = 1; //第几页 
			var numPerPage = 10; //每页显示条数
			queryByPage(currentPage, numPerPage);
		});

		//分页查询  
		function queryByPage(start, limit) {
			$("#tby tr").remove();
			var base_path = $("#base_path").val();
			alert(base_path);
			$.ajax({
				type : "get",
				url : base_path + "/trade/system/page?start=" + start
						+ "&limit=" + limit,
				dataType : "json", /*这句可用可不用，没有影响*/
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					var array = data.data.list;
					var tby = $("#tby");
					//var totalPage=data.totalPage;   
					//$("#totalPage_input").val(totalPage);   
					//$("#currentPage").html(currentPage);  
					//$("#totalRows").html(data.totalRows);  
					//$("#totalPage").html(totalPage);
					//循环json中的数据 
					for (var i = 0, len = array.length; i < len; i++) {
						var td1 = $("<td>" + array[i].code + "</td>");
						var td2 = $("<td>" + array[i].name + "</td>");
						var td3 = $("<td>" + array[i].downloadUrl + "</td>");
						var tr = $("<tr></tr>");
						tr.append(td1).append(td2).append(td3);
						tr.appendTo(tby);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert(errorThrown);
				}
			});
		}
	</script>
</body>
</html>