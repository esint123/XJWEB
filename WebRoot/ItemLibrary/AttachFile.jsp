<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>上传附件</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path%>/javascript/ajaxfileupload.js"></script>
<script type="text/javascript" src="<%=path%>/javascript/Common.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/pagination.css'></link>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/normal.css'></link>
<script type="text/javascript">
	$(document).ready(function() 
 	{
 		if(getQueryString("attache_fileid")!='undefined' && getQueryString("attache_fileid")!='' && getQueryString("attache_fileid")!='0')
 		{
 			$("#attache_fileid").val(getQueryString("attache_fileid"));
			$.getJSON("AttacheFile.action?attache_fileid="+$("#attache_fileid").val(), function(data) {
				$.each(data.itemlibraryList, function(i, value) {
					document.getElementById("cc").innerHTML+="<a href=downloadToAttach?id="+value.id+">"+value.filename+"</a>&nbsp;&nbsp;<img src='images/pageFrame/083.gif' width=14 height=14 />[<a href=\"javascript:delAttache("+value.id+")\">删除</a>]<br/>"; 
							});
			});
		}
	});
	function delAttache(id)
	{
		if (confirm("确定要删除该文件吗？")) 
		{
		 	var array_id=$("#attache_fileid").val().split('@');
		 	var news='';
		 	for(var i = 0; i < array_id.length; i++)
		 	{	
		 		var m = array_id[i];
		 		if(m!='' && m!=id)
		        {
		        	news+=m+'@';
		        }
		 	}
		    $("#attache_fileid").val(news);
			document.getElementById("cc").innerHTML="";
			$.getJSON("AttacheFile.action?tableName="+getQueryString("tableName")+"&attache_id="+getQueryString("attache_id")+"&attache_field="+getQueryString("attache_field")+"&attache_fileid="+news+"&id="+id, function(data) {
				$.each(data.itemlibraryList, function(i, value) {
					document.getElementById("cc").innerHTML+="<a href=downloadToAttach?id="+value.id+">"+value.filename+"</a>&nbsp;&nbsp;<img src='images/pageFrame/083.gif' width=14 height=14 />[<a href=\"javascript:delAttache("+value.id+")\">删除</a>]<br/>"; 
							});
			});
		}
	}
	function jspclose(){
		window.close();
		window.opener.InitData();
	}
	function filetest(){
		    var file=$("#file");
		    if($.trim(file.val())=='')
		    {
		    	alert("请选择文件！");
		    	return false;
		    }
			$.ajaxFileUpload({
			url : 'toAttachUpload.action?tableName='+getQueryString("tableName")+'&attache_id='+getQueryString("attache_id")+'&attache_field='+getQueryString("attache_field")+'&attache_fileid='+$("#attache_fileid").val(),//用于文件上传的服务器端请求地址
			type: 'post',//请求方式  当要提交自定义参数时，这个参数要设置成post
			secureuri : false,//一般设置为false  
			fileElementId : 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />  
			dataType : 'json',//返回值类型 一般设置为json  
			success : function(data, status) //服务器成功响应处理函数  
			{
			    alert(data.message.split('@')[0]);//从服务器返回的json中取出message中的数据,其中message为在struts2中action中定义的成员变量  
				document.getElementById("cc").innerHTML="";
				var news=$("#attache_fileid").val()+'@'+data.message.split('@')[1];
				$("#attache_fileid").val(news);
				$.getJSON("AttacheFile.action?tableName="+getQueryString("tableName")+"&attache_id="+getQueryString("attache_id")+"&attache_field="+getQueryString("attache_field")+"&attache_fileid="+news, function(data) {
					$.each(data.itemlibraryList, function(i, value) {
						document.getElementById("cc").innerHTML+="<a href=downloadToAttach?id="+value.id+">"+value.filename+"</a>&nbsp;&nbsp;<img src='images/pageFrame/083.gif' width=14 height=14 />[<a href=\"javascript:delAttache("+value.id+")\">删除</a>]<br/>"; 
								});
				});
				if (typeof (data.error) != 'undefined') {
					if (data.error != '') {
						alert(data.error);
					}
					else
					{
					 	alert(data.message); 
					}
				}
			},
			error : function(data, status, e)//服务器响应失败处理函数  
			{
				alert(e);
			}
		});
		return false;
	}
</script>
</head>
<body>
	<table id="productTable" width="100%" height="100%" border="0" cellpadding="0" cellspacing="1" align="center" class="PagerTable">
		<tr>
			<td>
				<span id="cc" ></span>
				<br><br>
			<input type="file" id="file" name="file"
				style="width: 300px;" /> <input type="button" value="上传文件"
				onclick="return filetest();"></td>
		</tr>
		<tr>
			<td align="center" valign="bottom"><br><input type="button" value="关闭" onclick="jspclose();" class="btn">
			<br><br><br>
			</td>
		</tr>
	</table>
	<input type="hidden" id="attache_fileid">
</body>
</html>
