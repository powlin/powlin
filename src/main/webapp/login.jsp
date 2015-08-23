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
<jsp:include page="/common/jsp/include.jsp" />
</head>
<script type="text/javascript">
	$(function() {
		//登录
		$('#loginBtn').click(function() {
			var data = {};
			var t = $('form').serializeArray();
			$.each(t, function() {
				data[this.name] = this.value;
			});
			var url = $("#base_path").val() + "/user/login";
			doPostAjax(url, data, doSuccessBack);
		});
	});
	
	function doSuccessBack(res) {
		if (res.success == true) {
			window.location.href = $("#base_path").val()+"/index.jsp";
		}else{
			$("#warning-block").show();
		}
	}
</script>
<body>
	<div class="alert alert-danger hide" id="warning-block">
    	<button type="button" class="close" data-dismiss="alert">&times;</button>
    	用户名或密码错误!!!
	</div>
	<input type="hidden" id="base_path"
		value="<%=request.getContextPath()%>" />
	<div style="margin-top: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4 well">
					<h3>借贷管理平台</h3>
					<hr>
					<form role='form' class="form-horizontal" onSubmit = "return false;">
						<div class="form-group">
							<div class="col-md-3 text-right">
								<label for="login_name" class="control-label">用户名:</label>
							</div>
							<div class="col-md-9">
								<input type="text" class="form-control" name="login_name"
									id="login_name" placeholder='请输入用户名'>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-3 text-right">
								<label for="login_pwd" class="control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码:</label>
							</div>
							<div class="col-md-9">
								<input type="password" class="form-control" name="login_pwd"
									id="login_pwd" placeholder='请输入密码'>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-9 col-md-offset-3">
								<input type="checkbox" name="Remember_me">&nbsp;记住我
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-3 col-md-offset-3">
								<button class="btn btn-info" id="loginBtn">登录</button>
							</div>
							<div class="col-md-3 col-md-offset-1">
								<button class="btn btn-default" type="reset">重置</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
