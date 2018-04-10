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
<title></title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript"
	src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/pagination.css'></link>
<script type="text/javascript" src="<%=path%>/javascript/Common.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		InitData();
	});
	function Refresh()
	{
		setTimeout("InitData()",1000);
	}
	function InitData() {
	    var treeid=getQueryString("treeid");
		$.getJSON("RuralJson?treeid="+treeid,
						function(data) {
							$("#productTable tr:gt(0)").remove();
							$.each(data.gradeRuralList,
											function(i, value) {
												var trs = "";
												trs += "<tr>";
												trs += "<td>" + value.reviewname
												+ "</td>";
												trs += "<td>" + value.reviewunit
												+ "</td>";
												trs += "<td>" + value.reviewtime
												+ "</td>";
												trs += "<td>" + value.reviewexpert
												+ "</td>";
												trs += "<td>" + value.gradesum
												+ "</td>";
												if(value.id!=null)
												{
													trs += "<td>";
													trs += "<img src='images/pageFrame/037.gif' width='14' height='14'/>[<a href=\"javascript:edit("
															+ value.id
															+ ")\">编辑</a>]";
													trs += "</td>";
													trs += "<td>";
													trs += "<img src='images/pageFrame/070.gif' width='14' height='14'/>[<a href=\"javascript:editOpinion("
															+ value.id
															+ ")\">评审意见</a>]";
													trs += "</td>";
													trs += "<td>";
													trs += "<img src='images/pageFrame/010.gif' width='14' height='14'/>[<a href=\"javascript:delInstance("
															+ value.id
															+ ")\">删除</a>]";
													trs += "</td>";
												}
												else
												{
													trs += "<td>";
													trs += "<img src='images/pageFrame/update.gif' width='14' height='15'/>[<a href=\"javascript:InitData("
															+ ")\">刷新</a>]";
													trs += "</td>";
													trs += "<td></td><td></td>";
												}
												trs += "</tr>";
												trs = trs.replace(/null/g, "");
												$("#productTable").append(trs);
											});
						});
	}
	//单个删除
	function delInstance(id) {
		if (confirm("确定要删除该记录吗？")) 
		{
		    var url='DeleteRural?id='+id+"&treeid="+getQueryString("treeid");
			location.href =url;
		}
	}
	function down()
	{
		location.href ="downRuralOpinion?treeid="+getQueryString("treeid");
	}
	function editOpinion(id)
	{
		var url = "EditRuralOpinion.action?id="+id;
		var iLeft = (screen.width - 600) / 2;
		var iTop = (screen.height - 300) / 2;
		open(
				url,
				'_blank',
				'Height= 300; Width= 600; Top='
						+ iTop
						+ 'px; Left='
						+ iLeft
						+ 'px;directories=no,location=no,resizable=no,scrollbars=yes,menubar=no;');
	}
	function edit(id)
	{
		var url = "EditRural.action?treeid="+getQueryString("treeid")+"&id="+id;
		var iLeft = (screen.width - 1200) / 2;
		var iTop = (screen.height - 700) / 2;
		open(
				url,
				'_blank',
				'Height= 700; Width= 1200; Top='
						+ iTop
						+ 'px; Left='
						+ iLeft
						+ 'px;directories=no,location=no,resizable=no,scrollbars=yes,menubar=no;');
	}
	function add() {
		var url = "AddRural.action?treeid="+getQueryString("treeid");
		var iLeft = (screen.width - 1200) / 2;
		var iTop = (screen.height - 700) / 2;
		open(
				url,
				'_blank',
				'Height= 700; Width= 1200; Top='
						+ iTop
						+ 'px; Left='
						+ iLeft
						+ 'px;directories=no,location=no,resizable=no,scrollbars=yes,menubar=no;');
	}
</script>
</head>
<body>
	<div id=mydiv style="display:block;">
		<table id="productTable" width="100%" border="0" cellpadding="0"
			cellspacing="1" align="center" class="PagerTable">
			<tr>
				<th class="tdDropTitle" width="18%"><a
					style="cursor: pointer;"> <font color="#1D6597">项目名称</font> </a></th>
				<th class="tdDropTitle"  width="18%"><a
					style="cursor: pointer;"> <font color="#1D6597">设计单位</font> </a></th>
				<th class="tdDropTitle"  width="10%"><a
					style="cursor: pointer;"> <font color="#1D6597">报告提交时间</font> </a></th>
				<th class="tdDropTitle"  width="8%"><a
					style="cursor: pointer;"> <font color="#1D6597">评审专家</font> </a></th>
				<th class="tdDropTitle"  width="10%"><a
					style="cursor: pointer;"> <font color="#1D6597">分值合计</font> </a>
				</th>
				<th class="tdDropTitle"  width="14%"><a
					style="cursor: pointer;"> <font color="#1D6597">
					<img src='images/pageFrame/040.gif' width='17' height='17' />
					[<a onclick="add();" style="cursor: pointer;color: red;">专家评审打分</a>]</font> </a>
				</th>
				<th class="tdDropTitle"  width="15%"><a
					style="cursor: pointer;"> <font color="#1D6597">评审意见</font>
					[<a onclick="down();" style="cursor: pointer;color: red;">导出评审意见</a>]
					 </a>
				</th>
				<th class="tdDropTitle"  width="7%"><a
					style="cursor: pointer;"> <font color="#1D6597">删除</font> </a>
				</th>
			</tr>
		</table>
	</div>
</body>
</html>
