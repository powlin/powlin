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
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/css/add.css" type="text/css" media="screen"/>
</head>
<body>
<div class="div_from_aoto" style="width: 500px;">
    <FORM>
        <DIV class="control-group">
            <label class="laber_from">用户名</label>
            <DIV  class="controls" ><INPUT class="input_from" type=text placeholder=" 请输入用户名"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">密码</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" type=text placeholder=" 请输入密码"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" >确认密码</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" type=text placeholder=" 请输入确认密码"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">角色</LABEL>
            <DIV  class="controls" >
                <SELECT class="input_select">
                    <OPTION selected>董事长</OPTION>
                    <OPTION>总经理</OPTION>
                    <OPTION>经理</OPTION>
                    <OPTION>主管</OPTION>
                </SELECT>
            </DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><button class="btn btn-success" style="width:120px;" >确认</button></DIV>
        </DIV>
    </FORM>
</div>
</body>
</html>