<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
	function abc()
	{ 
		alert("000"); 
	} 
	function abcd()
	{
		setTimeout("abc()",3000);
	}
	</script>
  </head>
  
  <body>
    <a href="/XJWEB/index.jsp" target="_blank">项目储备管理</a>
    <a href="/XJWEB/Review.jsp" target="_blank">项目评审管理</a>
    <input type="button" onclick="abcd();" value="测试"/> 
  </body>
</html>
