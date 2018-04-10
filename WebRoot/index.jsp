<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>乌鲁木齐项目储备管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="X-UA-Compatible" content="IE=11">
<script type="text/javascript"
	src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<script type="text/javascript"
	src="<%=path%>/javascript/ajaxfileupload.js"></script>
<script type="text/javascript"
	src="<%=basePath%>javascript/treeCssAndImg/js/jquery.tree.js"></script>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>javascript/treeCssAndImg/jquery.tree.css'></link>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/pagination.css'></link>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/normal.css'></link>
<script type="text/javascript">
		//构建模板树
		function initTree2(){
			var o = {
			showcheck : false,
			url : "getTemplateTree.action",
			cbiconpath:"<%=basePath%>javascript/treeCssAndImg/images/icons/",
			emptyiconpath:"<%=basePath%>javascript/treeCssAndImg/images/s.gif",
			cascadecheck: true,//是否启用级联，默认启用
			upstate: true,
			theme : "bbit-tree-lines", //bbit-tree-lines ,bbit-tree-no-lines,bbit-tree-arrows
			onnodeclick : function(item) 
			{
				if(item.value!='a' && item.value!='kV')
				{
					location.href ='downloadTo?id='+item.id;
				}
			}
			};
			$("#TemplateTree").treeview(o);		
		}
		//构建功能树
		function initTree(treeids,name){
			var o = {
			showcheck : true,
			url : "getTree.action?treeids="+treeids+"&name="+name,
			cbiconpath:"<%=basePath%>javascript/treeCssAndImg/images/icons/",
			emptyiconpath:"<%=basePath%>javascript/treeCssAndImg/images/s.gif",
			cascadecheck: true,//是否启用级联，默认启用
			//upstate: true,
			theme : "bbit-tree-lines", //bbit-tree-lines ,bbit-tree-no-lines,bbit-tree-arrows
			onnodeclick : function(item) 
			{
				if(item.value!='' && item.value.indexOf('.jsp')>-1)
				{
				    var url=item.value.substring(0,item.value.indexOf(";"));
				    if(item.value.indexOf('stage')<=-1)
				    {
						document.getElementById("FrmWorkSpace").src="ItemLibrary/" + url+"?treeid="+item.id;
					}
					else
					{
						document.getElementById("FrmWorkSpace").src="ItemLibrary/" + url+"&treeid="+item.id;
					}
				}
			}
			};
			$("#typeTree").treeview(o);		
		}
	$(document).ready(function() {
	    initTree('','');
	    initTree2();
	    document.getElementById("FrmWorkSpace").style.height = document.documentElement.clientHeight-89 + "px";
	    document.getElementById("typeTree").style.height = document.documentElement.clientHeight-319 + "px";
	});
	function deleteTreeids()
	{
		if (confirm("确定要删除文件吗？")) {
			var s = $("#typeTree").getTSNs();
			if (s != null && s.length!=0)
			{
				var ids="";
				for(var i=0;i<s.length;i++)
				{
					var se=s[i];
					ids+=se.id+','+se.value.substring(se.value.indexOf(";")+1)+";";
				}
				initTree(ids,'');
				//alert(ids);
			}
			else
			{
				alert("请选择要删除的文件！");
			}
		}
	}
	function addName()
	{
	    var s=$("#name");
	    if($.trim(s.val())=='')
	    {
	    	alert("请填写名称！");
	    	return false;
	    }
	    initTree('',encodeURIComponent(encodeURIComponent(s.val())));
	    s.val('');
	    return false;
	}
	//文件上传验证
	function ajaxFileUpload() 
	{
	    var item = $("#typeTree").getTCT();
	    if(item==null)
	    {
	    	alert("请选择对应电压等级再上传文件！");
	    	return false;
	    }
	    var s=item.value;
	    if(s.indexOf('kV')<=-1)
	    {
	    	alert("请选择对应电压等级再上传文件！");
	    	return false;
	    }
	    var file=$("#file");
	    if($.trim(file.val())=='')
	    {
	    	alert("请选择文件！");
	    	return false;
	    }
	    filetest(item.id);
	    initTree('','');
		return false;
	}
	//上传文件
	function filetest(id){
			$.ajaxFileUpload({
			url : 'toUpload.action?noteparentid='+id,//用于文件上传的服务器端请求地址
			secureuri : false,//一般设置为false  
			fileElementId : 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />  
			dataType : 'json',//返回值类型 一般设置为json  
			success : function(data, status) //服务器成功响应处理函数  
			{
			    alert(data.message);//从服务器返回的json中取出message中的数据,其中message为在struts2中action中定义的成员变量  
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
	}
</script>
<style type="text/css">
.file {
    position: relative;
    display: inline-block;
    background: #D0EEFF;
    border: 1px solid #99D3F5;
    border-radius: 4px;
    padding: 1px 20px;
    overflow: hidden;
    color: #1E88C7;
    text-decoration: none;
    text-indent: 0;
    line-height: 20px;
}
.file input {
    position: absolute;
    font-size: 100px;
    right: 0;
    top: 0;
    opacity: 0;
}
.file:hover {
    background: #AADFFD;
    border-color: #78C3F3;
    color: #004974;
    text-decoration: none;
}
</style>
</head>

<body>
	<table style="width: 100%; height: 100%;" align="center"
		style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse" cellpadding="1"
		bordercolor="#b3b3b3" border="1">
		<tr>
			<td colspan="2" style="text-align:left; height: 10px;">
				<img src="<%=basePath %>images/01.jpg" width="100%"/>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top; text-align: left; width: 300px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
					   <td width="10" height="35"><img src="<%=basePath %>images/tab_bg_bg-02.gif" width="10" height="35" /></td>
        			   <td width="1101" background="<%=basePath %>images/tab_bg_bg-03.gif"><img src="<%=basePath %>images/pageFrame/b.gif"/>
        			   		<span style="color:#295280; font-weight:bold;x">新建项目库</span>
        			   </td> 
        				<td width="281" background="<%=basePath %>images/tab_bg_bg-03.gif">
        				<td width="10"><img src="<%=basePath %>images/tab_bg_bg.png" width="10" height="35" /></td>
					</tr>
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				      <tr>
					      <td width="10" background="<%=basePath %>images/tab_bg_bg-05.png">&nbsp;</td>
					      <td align="center" >
				        	<table cellpadding="1" cellspacing="1"  width="100%" align=center height="100%" >
				        		<tr>
				        			<td>
										<font color="#1C69B1">项目库名称:</font>
										<input class="BorderTextInput" id="name" style="width: 100px"/>
											<img src="images/pageFrame/1070.png" width='17' height='17'/>[<a onclick="return addName();" style="cursor: pointer;color: red;">新增</a>]
											<img src="images/pageFrame/1083.png" width='17' height='17'/>[<a onclick="deleteTreeids();" style="cursor: pointer;color: red;">删除</a>]
									</td>
				        		</tr>
				        		<tr>
				        			<td colspan="2">
										<a href="javascript:;" class="file">请选择项目库Excel文件
											<input type="file" id="file" name="file" style="width: 150px;" /> 
										</a>
									    <img src="images/pageFrame/1060.png" width='17' height='17'/>[<a onclick="return ajaxFileUpload();" style="cursor: pointer;color: red;">上传</a>]
				        			</td>
				        		</tr>
				        	</table>
					      </td>
					      <td width="10" background="<%=basePath %>images/tab_bg_bg-06.png">&nbsp;</td>
				      </tr>
				</table>
				    <table width="100%" border="0" cellspacing="0" cellpadding="0">
				      <tr>
				        <td width="10" height="10"><img src="<%=basePath %>images/tab_bg_bg-07.gif" width="10" height="10" /></td>
				        <td width=100% style="background-image: url(<%=basePath %>images/tab_bg_bg-08.png)"></td>
				        <td width="10"><img src="<%=basePath %>images/tab_bg_bg-09.gif" width="10" height="10" /></td>
				      </tr>
				    </table>
				<div style="width:300px;overflow:auto;" id="typeTree"></div>
				<hr/>
				<div style="height:115px; width:300px;overflow:auto;" id="TemplateTree"></div>
			</td>
			<td style="vertical-align:top;"><iframe id="FrmWorkSpace"
					name="FrmWorkSpace" width="100%" marginwidth="0"
					marginheight="0" frameborder="0" border="0" framespacing="0"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>
