<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>角色管理</title>
<jsp:include page="/common/jsp/include.jsp"/>
<script type="text/javascript">
	$(function() {
		// 绑定列表
		$('#tableList').bootstrapTable({
			method : "get",
			url : "/user/role/page",
			height : $(window).height() - 120,
			striped : true,
			singleSelect : true,
			queryParams : function(params) {
				return {
					role_code : $("#role_code_search").val(),
					role_level : $("#role_level_search").val(),
					start : params.offset / params.limit + 1,
					limit : params.limit
				};
			},
			queryParamsType : 'limit',
			responseHandler : function(res) {
				return {
					rows : res.data.list,
					total : res.data.totalCount
				};
			},
			pagination : true,
			sidePagination : 'server', // 服务端请求
			totalRows : 0,
			pageNumber : 1,
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			columns : [{
				field : 'roleCode',
				title : '角色编号',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'roleName',
				title : '角色名称',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'roleLevel',
				title : '角色等级',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'creator',
				title : '创建人',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'createDatetime',
				title : '创建时间',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'remark',
				title : '备注',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'operate',
				title : '操作',
				width : 200,
				align : 'center',
				valign : 'middle',
				formatter : operateFormatter,
				events : operateEvents
			}],
			onLoadSuccess : function() {
			},
			onLoadError : function() {
				mif.showErrorMessageBox("数据加载失败！");
			}
		});

		// 查询
		$('#searchBtn').click(function() {
			$('#tableList').bootstrapTable('refresh');
		});
		
		$("#myModel").on("show.bs.modal", function() {
	         $(this).removeData("bs.modal");
		});

		//新增提交
		$('#subBtn').click(function() {
			var data = {};
			var t = $('form').serializeArray();
			$.each(t, function() {
				data[this.name] = this.value;
			});
			var operator = $("#operate_id").val() != "edit"?"add":"edit";
			var url = $("#base_path").val() + "/user/role/" + operator;
			doPostAjax(url, data, doSuccessBack);
		});
	});
	
	function doSuccessBack(res) {
		if (res.success == true) {
			alert("操作成功");
			$('#myModal').modal('hide');
			$('#tableList').bootstrapTable('refresh');
		}
	}
	
	function operateFormatter(value, row) {
        return ['<button class="btn btn-primary btn-xs edit">修改</button>&nbsp;&nbsp;<button class="btn btn-danger btn-xs del">删除</button>&nbsp;<button class="btn btn-danger btn-xs choice">分配菜单</button>'].join('');
    }
	
    window.operateEvents = {
        'click .edit': function (e, value, row, index) {
        	$("#operate_id").val("edit");
            $('#myModal').modal('show');
            $('input[name="role_code"]').val(row.roleCode);
            $('input[name="role_name"]').val(row.roleName);
            $('input[name="role_level"]').val(row.roleLevel);
            $('input[name="remark"]').val(row.remark);
        },
        'click .del': function (e, value, row, index) {
        	var url = $("#base_path").val() + "/user/role/drop";
        	var data = {role_code:row.roleCode};
			doPostAjax(url, data, doSuccessDel);
        },
        'click .choice': function (e, value, row, index) {
        	window.location.href = $("#base_path").val()+"/page/system/role_menu.jsp?role_code="+row.roleCode+"&role_name="+row.roleName;
        }
    };
    
    function doSuccessDel(res) {
		if (res.success == true) {
			alert("删除成功");
			$('#tableList').bootstrapTable('refresh');
		}
	}
</script>
</head>
<body>
	<input type="hidden" id="base_path"
		value="<%=request.getContextPath()%>" />
	<input type="hidden" id="operate_id"/>
	<div class="panel panel-default">
		<div class="panel-heading">角色管理
			<span class="text-right"><button id="addBtn" class="btn btn-primary btn-sm" data-toggle="modal"
				data-target="#myModal">新增</button></span>
	    </div>
		<div class="panel-body">
			<div>
				<div id="custom-toolbar" style="margin-bottom: 8px">
					<div class="form-inline" role="form" onsubmit="return searchSys();">
						<div class="form-group">
							<label for="menu_code" class="control-label-first">角色编号:</label> <input class="input-sm" type="text"
								class="form-control" id="role_code_search" placeholder="请输入角色编号">
						</div>
						<div class="form-group">
							<label for="parent_code" class="control-label">角色等级:</label> <input class="input-sm" type="text"
								class="form-control" id="role_level_search" placeholder="请选择角色等级">
						</div>&nbsp;
						<button id="searchBtn" class="btn btn-default btn-sm">搜索</button>
					</div>
				</div>
				<table id="tableList"></table>
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
					<h4 class="modal-title" id="myModalLabel">角色设置</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="form">
						<div class="form-group">
							<label for="role_code" class="col-sm-2 control-label">角色编号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="role_code"
									placeholder="请输入角色编号">
							</div>
						</div>
						<div class="form-group">
							<label for="role_name" class="col-sm-2 control-label">角色名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="role_name"
									placeholder="请输入角色名称">
							</div>
						</div>
						<div class="form-group">
							<label for="menu_url" class="col-sm-2 control-label">角色等级</label>
							<div class="col-sm-10">
								<select class="form-control" name="role_level">
									<option value="1">--请选择--</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="remark" class="col-sm-2 control-label">备注</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="remark"
									placeholder="请输入备注">
							</div>
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