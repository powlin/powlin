<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>交易子账号管理</title>
<script type="text/javascript">
	$(function() {
		// 绑定列表
		$('#tableList').bootstrapTable({
			method : "get",
			url : "/trade/accountchild/page",
			height : $(window).height() - 240,
			striped : true,
			singleSelect : true,
			queryParams : function(params) {
				return {
					parent_account : $("#parent_account").val(),
					child_account : $("#child_account").val(),
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
				field : 'childAccount',
				title : '交易子账户',
				align : 'left',
				valign : 'middle',
				sortable : false
			}, {
				field : 'parentAccount',
				title : '所属主账户',
				align : 'left',
				valign : 'middle',
				sortable : false
			},{
				field : 'originalPsd',
				title : '初始资金',
				align : 'left',
				valign : 'middle',
				sortable : false, 
				visible : false
			}, {
				field : 'originalAmount',
				title : '初始资金',
				align : 'left',
				valign : 'middle',
				sortable : false
			},{
				field : 'warningLine',
				title : '预警线',
				align : 'left',
				valign : 'middle',
				sortable : false
			},{
				field : 'unwindingLine',
				title : '平仓线',
				align : 'left',
				valign : 'middle',
				sortable : false
			},{
				field : 'status',
				title : '状态',
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
			var url = $("#base_path").val() + "/trade/accountchild/" + operator;
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
        return ['<button class="btn btn-primary btn-xs edit">修改</button>&nbsp&nbsp<button class="btn btn-danger btn-xs del">删除</button>'].join('');
    }
	
    window.operateEvents = {
        'click .edit': function (e, value, row, index) {
        	$("#operate_id").val("edit");
            $('#myModal').modal('show');
            $('input[name="child_account"]').val(row.childAccount);
            $('input[name="parent_account"]').val(row.parentAccount);
            $('input[name="original_psd"]').val(row.originalPsd);
            $('input[name="original_amount"]').val(row.originalAmount);
            $('input[name="warning_line"]').val(row.warningLine);
            $('input[name="unwinding_line"]').val(row.unwindingLine);
        },
        'click .del': function (e, value, row, index) {
        	var url = $("#base_path").val() + "/trade/accountchild/drop";
        	var data = {child_account:row.childAccount,parent_account:row.parentAccount};
			doPostAjax(url, data, doSuccessDel);
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
		<div class="panel-heading">交易子账号管理
			<span class="text-right"><button id="addBtn" class="btn btn-primary btn-sm" data-toggle="modal"
				data-target="#myModal">新增</button></span>
	    </div>
		<div class="panel-body">
			<div>
				<div id="custom-toolbar" style="margin-bottom: 8px">
					<div class="form-inline" role="form" onsubmit="return searchSys();">
						<div class="form-group">
							<label for="code" class="control-label-first">交易子账户:</label> <input class="input-sm" type="text"
								class="form-control" id="child_account" placeholder="请输入交易子账户">
						</div>
						<div class="form-group">
							<label for="belong_to" class="control-label">所属主账户:</label> <input class="input-sm" type="text"
								class="form-control" id="parent_account" placeholder="请输入所属主账号">
						</div>&nbsp
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
					<h4 class="modal-title" id="myModalLabel">交易子账号</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="form">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">交易子账号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="child_account"
									placeholder="请输入交易子账号">
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">初始密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="original_psd"
									placeholder="请输入初始密码">
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">初始资金</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="original_amount"
									placeholder="请输入初始资金">
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">所属主账号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="parent_account"
									placeholder="请输入所属主账号">
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">预警线</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="warning_line"
									placeholder="请输入预警线">
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">平仓线</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="unwinding_line"
									placeholder="请输入平仓线">
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