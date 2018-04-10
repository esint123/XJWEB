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
<title>乌鲁木齐项目评审管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="X-UA-Compatible" content="IE=11">
<script type="text/javascript" src="<%=path%>/javascript/Common.js"></script>
<script type="text/javascript" src="<%=path%>/javascript/WebCalendar.js"></script>
<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=basePath%>javascript/treeCssAndImg/js/jquery.tree.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>javascript/treeCssAndImg/jquery.tree.css'></link>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/pagination.css'></link>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/normal.css'></link>
<script type="text/javascript">
	   //构建功能树
		function initTree(name,unit,time,ontime,id,treeids){
			var o = {
			showcheck : true,
			url : "getReviewTree.action?name="+name+"&unit="+unit+"&time="+time+"&ontime="+ontime+"&id="+id+"&treeids="+treeids,
			cbiconpath:"<%=basePath%>javascript/treeCssAndImg/images/icons/",
			emptyiconpath:"<%=basePath%>javascript/treeCssAndImg/images/s.gif",
			cascadecheck: true,//是否启用级联，默认启用
			//upstate: true,
			theme : "bbit-tree-lines", //bbit-tree-lines ,bbit-tree-no-lines,bbit-tree-arrows
				onnodeclick : function(item) 
				{
					if(item.value!='')
				    {
						document.getElementById("FrmWorkSpace").src=item.value+"?treeid="+item.id;
					}
				}
			};
			$("#typeTree").treeview(o);		
		}
		function deleteTreeids()
		{
			if (confirm("确定要删除评审项目吗？")) {
				var s = $("#typeTree").getTSNs();
				if (s != null && s.length!=0)
				{
					var ids="";
					for(var i=0;i<s.length;i++)
					{
						var se=s[i];
						ids+=se.id+','+se.value+";";
					}
					initTree('','','','','',encodeURIComponent(encodeURIComponent(ids)));
					//alert(ids);
				}
				else
				{
					alert("请选择要删除的评审项目！");
				}
			}
		}
		function addReview()
		{	
		    if($.trim($("#name").val())=='')
		    {
		    	alert("请填写项目名称！");
		    	return false;
		    }
		    if($.trim($("#unit").val())=='')
		    {
		    	alert("请填写设计单位！");
		    	return false;
		    }
		    if($.trim($("#time").val())=='')
		    {
		    	alert("请填写提交时间！");
		    	return false;
		    }
		    if($.trim($("#ontime").val())=='')
		    {
		    	alert("请填写是否按时提交！");
		    	return false;
		    }
		    var item = $("#typeTree").getTCT();
		    if(item==null)
		    {
		    	alert("请选择项目评审类别！");
		    	return false;
		    }
		    initTree(encodeURIComponent(encodeURIComponent($("#name").val())),encodeURIComponent(encodeURIComponent($("#unit").val())),encodeURIComponent(encodeURIComponent($("#time").val())),encodeURIComponent(encodeURIComponent($("#ontime").val())),item.id,'');
		    $("#name").val('');
			$("#unit").val('');
		}
	$(document).ready(function() {
	    $("#time").val(new Date().Format("yyyy-MM-dd"));
	    $("#ontime").val('是');
	    document.getElementById("FrmWorkSpace").style.height = document.documentElement.clientHeight-89 + "px";
	    document.getElementById("typeTree").style.height = document.documentElement.clientHeight-249 + "px";
	    initTree('','','','','','');
	});
</script>
</head>

<body>
	<table style="width: 100%; height: 100%;" align="center"
		style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse" cellpadding="1"
		bordercolor="#b3b3b3" border="1">
		<tr>
			<td colspan="2" style="text-align:left; height: 10px;">
				<img src="<%=basePath %>images/02.jpg" width="100%"/>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top; text-align: left; width: 250px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
					   <td width="10" height="35"><img src="<%=basePath %>images/tab_bg_bg-02.gif" width="10" height="35" /></td>
        			   <td width="1101" background="<%=basePath %>images/tab_bg_bg-03.gif"><img src="<%=basePath %>images/pageFrame/b.gif"/>
        			   		<span style="color:#295280; font-weight:bold;x">新建项目评审</span>
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
										<font color="#1C69B1">项目名称:</font>
									</td>
									<td align="left">
										<input class="BorderTextInput" id="name" style="width: 170px" />
									</td>
				        		</tr>
				        		<tr>
				        			<td>
										<font color="#1C69B1">设计单位:</font>
									</td>
									<td align="left">
										<input class="BorderTextInput" id="unit" style="width: 170px" />
									</td>
				        		</tr>
				        		<tr>
				        			<td>
										<font color="#1C69B1">提交时间:</font>
									</td>
									<td align="left">
										<input class="BorderTextInput" id="time" style="width: 170px;cursor:pointer" readonly="readonly" onclick="SelectDate(this,'yyyy-MM-dd')" />
									</td>
				        		</tr>
				        		<tr>
				        			<td colspan="2">
										<font color="#1C69B1">是否按时提交或收口评审材料:</font>
										<input class="BorderTextInput" id="ontime" style="width: 70px" />
									</td>
				        		</tr>
				        		<tr>
				        			<td colspan="2">
										<center>
										<img src="images/pageFrame/1070.png" width='17' height='17' />[<a onclick="return addReview();" style="cursor: pointer;color: red;">新增</a>]&nbsp&nbsp&nbsp
										<img src="images/pageFrame/1083.png" width='17' height='17' />[<a onclick="deleteTreeids();" style="cursor: pointer;color: red;">删除</a>]
						               </center>
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
				<div style="height:380px; width:280px;overflow:auto;" id="typeTree"></div>
			</td>
			<td style="vertical-align:top;"><iframe id="FrmWorkSpace"
					name="FrmWorkSpace" width="100%" marginwidth="0" marginheight="0"
					frameborder="0" border="0" framespacing="0"></iframe></td>
	</table>
</body>
</html>
