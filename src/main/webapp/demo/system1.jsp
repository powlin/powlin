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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/common/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/common/css/add.css" type="text/css"
	media="screen" />
<script
	src="<%=request.getContextPath()%>/common/js/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath()%>/common/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		var currentPage = 1; //第几页 
		var numPerPage = 10; //每页显示条数
		queryByPage(currentPage, numPerPage);
		
		$('#subBtn').click(function() {
		    var data = {};
		    var t = $('form').serializeArray();
		    $.each(t, function() {
		      data[this.name] = this.value;
		    });
		    var base_path = $("#base_path").val();
		    $.ajax({
				type:"post",
				url : base_path + "/trade/system/add",
				dataType:"json", /*这句可用可不用，没有影响*/
				data:data,
				//contentType : "application/json; charset=utf-8", //post 不支持
				contentType:"application/x-www-form-urlencoded", //get post 都支持
				success : function(data) {
					alert("操作成功");
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert(errorThrown);
				}
			});
		});
	});

	//分页查询  
	function queryByPage(start, limit) {
		$("#tby tr").remove();
		var base_path = $("#base_path").val();
		$.ajax({
			type : "get",
			url : base_path + "/trade/system/page?start=" + start + "&limit="
					+ limit,
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
</head>
<body>
	<input type="hidden" id="base_path"
		value="<%=request.getContextPath()%>" />
	<div>
		<button id="addBtn" class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">新增</button>
		<button id="editBtn" class="btn btn-primary">修改</button>
		<button id="delBtn" class="btn btn-danger">删除</button>
	</div>
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>
					<th>系统编号</th>
					<th>系统名称</th>
					<th>下载地址</th>
				</tr>
			</thead>
			<tbody id="tby">
			</tbody>
		</table>
	</div>

	<!-- Modal -->
	<div class="container">
		<div class="modal hide fade" id="sysModal" tabindex="-1" role="dialog">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal">×</button>
				<h3 id="myModalLabel">交易系统设置</h3>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<a href="#" class="btn">关闭</a> <a href="#" class="btn btn-primary">保存</a>

			</div>
		</div>
	</div>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">系统设置</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="form">
						<div class="form-group">
							<label for="name">系统编号</label> <input type="text"
								class="form-control" name="code" placeholder="请输入系统编号">
						</div>
						<div class="form-group">
							<label for="name">系统名称</label> <input type="text"
								class="form-control" name="name" placeholder="请输入名称">
						</div>
						<div class="form-group">
							<label for="name">所属公司</label> <input type="text"
								class="form-control" name="belong_to" placeholder="请选择所属公司">
						</div>
						<div class="form-group">
							<label for="name">官方地址</label> <input type="text"
								class="form-control" name="official_url" placeholder="请输入官方地址">
						</div>
						<div class="form-group">
							<label for="name">下载地址</label> <input type="text"
								class="form-control" name="download_url" placeholder="请输入下载地址">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button id="subBtn" class="btn btn-primary">保存</button>
					<button class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>