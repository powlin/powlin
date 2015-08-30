<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单设置</title>
<jsp:include page="../../components/jsp/include.jsp" />
<link href="../../components/css/ligerui-tree.css" rel="stylesheet" type="text/css" />
<script src="../../components/js/ligerTree.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		var manager = null;
        $(function ()
        {
            $(".l-tree").ligerTree({ checkbox: true });
            manager = $(".l-tree").ligerGetTreeManager();
        });
        function addTreeItem()
        {
            var node = manager.getSelected();
            var nodes = [];
            nodes.push({ text: '测试节点'});
            if (node)
                manager.append(node.target, nodes); 
            else
                manager.append(null, nodes);
        }
	});
</script>
</head>
<body>
	<ul id="tree1" class="l-tree">
        <li>
            <span>节点1</span>
            <ul>
                <li>
                    <span>节点1.1</span>
                     <ul>
                        <li><span>节点1.1.1</span></li>
                        <li><span>节点1.1.2</span></li>
                     </ul>
                 </li>
                 <li><span>节点1.2</span></li>
            </ul>
        </li>   
    </ul>
</body>
</html>
