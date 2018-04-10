<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>评审意见</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/pagination.css'></link>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/normal.css'></link>
<script type="text/javascript">
	function jspclose() {
		window.close();
	}
</script>
</head>
<body>
	<s:form id="form1" name="form1" action="SaveManageOpinion">
	<div id=mydiv style="display:block; overflow-y: hidden ;">
		<table id="productTable" width="100%" border="0" cellpadding="0"
			cellspacing="1" align="center" class="PagerTable">
			<tr>
				<th class="tdDropTitle" width="100%"><a
					style="cursor: pointer;"> <font color="#1D6597">评审意见</font> </a></th>
			</tr>
			<tr>
				<td><s:textarea name="opinion" theme="simple"
						cssClass="BorderTextInput" cssStyle="width:598px;height:230px"></s:textarea>
				</td>
			</tr>
			<tr>
				<td>
					<div style="text-align: center;">
						<br>
						<input type="submit" id="btnSubmit" value="保存" class="btn" /> 
						<input type="button" value="关闭" onclick="javascript:jspclose()" class="btn" />
					</div>
				</td>
			</tr>
		</table>
	</div>
	<s:hidden  name ="id"></s:hidden>
	</s:form>
</body>
</html>
