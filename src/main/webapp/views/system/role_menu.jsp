<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>分配菜单</title>
<jsp:include page="../../components/jsp/include.jsp" />
</head>
<script type="text/javascript" language="javascript">
	/**ztree的参数配置，setting主要是设置一些tree的属性，是本地数据源，还是远程，动画效果，是否含有复选框等等**/
	var setting = {
		check : {
			enable: true,
			chkStyle: "checkbox",
			chkboxType: {"Y": "ps", "N": "s"}
		},
		view : {
			dblClickExpand: false,
			expandSpeed : 300
		//设置树展开的动画速度，IE6下面没效果，
		},
		data : {
			simpleData : { //简单的数据源，一般开发中都是从数据库里读取，API有介绍，这里只是本地的                         
				enable : true,
				idKey : "id", //id和pid，这里不用多说了吧，树的目录级别
				pIdKey : "pId",
				rootPId : 0
			//根节点
			}
		},
		callback : {
			/**回调函数的设置，随便写了两个**/
			beforeClick : beforeClick,
			onCheck : onCheck
		}
	};
	function beforeClick(treeId, treeNode) {
		//alert("beforeClick");
	}
	function onCheck(e, treeId, treeNode) {
		//alert("onCheck");
	}

	$(document).ready(function() {//初始化ztree对象
		//下拉菜单
		doGetAjax($("#base_path").val() + "/sysAuth/menu/nodelist", null, doMenuNode);
		$('#saveBtn').click(function() {
			doGetCheckedAll();
		});
	});
	
	function doMenuNode(nodes){
		var zTreeDemo = $.fn.zTree.init($("#menuTree"), setting, nodes.data);
	}
	
	//获取所有选中节点的值
    function doGetCheckedAll() {
        var treeObj = $.fn.zTree.getZTreeObj("menuTree");
        var nodes = treeObj.getCheckedNodes(true);
        var menuCodes = new Array();
        var data = {};
        for (var i = 0; i < nodes.length; i++) {
        	menuCodes[" + i + "] = nodes[i].id; 
        }
        var data = {"menu_codes":menuCodes,"role_code":$("#role_code").val()};
       	alert(eval(data.value));
        var url = $("#base_path").val() + "/sysAuth/menurole/add";
		doPostAjax(url, data, doSuccessBack);
    }
	
    function doSuccessBack(res) {
		if (res.success == true) {
			alert("操作成功");
		}
	}
</script>
<body>
	<input type="hidden" id="base_path"
		value="<%=request.getContextPath()%>" />
	<input type="hidden" id="role_code"
		value="<%=request.getParameter("role_code")%>" />
	<input type="hidden" id="operate_id" />
	<div class="panel panel-default">
		<div class="panel-heading">
			分配菜单&nbsp; <span class="text-right"><button id="saveBtn"
					class="btn btn-primary btn-sm">保存</button></span>
		</div>
		<div class="panel-body">
			<ul id="menuTree" class="ztree"></ul>  
		</div>
	</div>
</body>
</html>