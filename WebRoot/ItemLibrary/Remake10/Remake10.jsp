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
<title>10(20、6)kV电网改造工程表</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript"
	src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path%>/javascript/Common.js"></script>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/pagination.css'></link>
<script type="text/javascript">
	function uploadFile(attache_id, attache_field, attache_fileid) {
		var url = "ItemLibrary/AttachFile.jsp?tableName=TItemlibraryRemake10&attache_id=" + attache_id
				+ "&attache_field=" + attache_field + "&attache_fileid="
				+ attache_fileid;
		var iLeft = (screen.width - 400) / 2;
		var iTop = (screen.height - 220) / 2;
		open(
				url,
				'_blank',
				'Height= 220; Width= 400; Top='
						+ iTop
						+ 'px; Left='
						+ iLeft
						+ 'px;directories=no,location=no,resizable=no,scrollbars=no,menubar=no;');
	}
	$(document).ready(function() {
		InitData();
	});
	//单个删除
	function delInstance(id) {
		if (confirm("确定要删除该记录吗？")) 
		{
		    var stage=getQueryString("stage");
		    var url='DeleteRemake10?id='+id;
		    if(stage=='')
		    {
		    	url+="&treeid="+getQueryString("treeid");
		    }
		    else
		    {
		    	url+="&treeid="+getQueryString("treeid")+"&stage="+stage;
		    }
			location.href =url;
		}
	}
	//编辑页面
	function editInstance(id) {
		var url = "EditRemake10?id="+id;
		var iLeft = (screen.width - 1200) / 2;
		var iTop = (screen.height - 210) / 2;
		open(
				url,
				'_blank',
				'Height= 210; Width= 1200; Top='
						+ iTop
						+ 'px; Left='
						+ iLeft
						+ 'px;directories=no,location=no,resizable=no,scrollbars=yes,menubar=no;');
	}
	//构建表格
	function InitData() {
	    var stage=getQueryString("stage");
	    var url='';
	    if(stage=='')
	    {
	    	url="Remake10Json.action?treeid="+getQueryString("treeid");
	    }
	    else
	    {
	    	url="Remake10Json.action?treeid="+getQueryString("treeid")+"&stage="+stage;
	    }
		$.getJSON(
						url,
						function(data) {
							$("#productTable tr:gt(2)").remove();
							$
									.each(
											data.TItemlibraryRemake10List,
											function(i, value) {
												var trs = "";
												trs += "<tr>";
												trs += "<td>" + value.FA
														+ "</td>";
												trs += "<td>" + value.FB
														+ "</td>";
												trs += "<td>" + value.FC
														+ "</td>";
												trs += "<td>" + value.FD
														+ "</td>";
												trs += "<td>" + value.FE
														+ "</td>";
												trs += "<td>" + value.FF
														+ "</td>";
												trs += "<td>" + value.FG
														+ "</td>";
												trs += "<td>" + value.FH
														+ "</td>";
												trs += "<td>" + value.FI
														+ "</td>";
												trs += "<td>" + value.FJ
														+ "</td>";
												trs += "<td>" + value.FK
														+ "</td>";
												trs += "<td>" + value.FL
														+ "</td>";
												trs += "<td>" + value.FM
														+ "</td>";
												trs += "<td>" + value.FN
														+ "</td>";
												trs += "<td>" + value.FO
														+ "</td>";
												trs += "<td>" + value.FP
														+ "</td>";
												trs += "<td>" + value.FQ
														+ "</td>";
												trs += "<td>" + value.FR
														+ "</td>";
												trs += "<td>" + value.FS
														+ "</td>";
												trs += "<td>" + value.FT
														+ "</td>";
												trs += "<td>" + value.FU
														+ "</td>";
												trs += "<td>" + value.FV
														+ "</td>";
												trs += "<td>" + value.FW
														+ "</td>";
												trs += "<td>" + value.FX
														+ "</td>";
												trs += "<td>" + value.FY
														+ "</td>";
												trs += "<td>" + value.FZ
														+ "</td>";

												trs += "<td>" + value.FAa
														+ "</td>";
												trs += "<td>" + value.FAb
														+ "</td>";
												trs += "<td>" + value.FAc
														+ "</td>";
												trs += "<td>" + value.FAd
														+ "</td>";
												trs += "<td>" + value.FAe
														+ "</td>";
												trs += "<td>" + value.FAf
														+ "</td>";
												trs += "<td>" + value.FAg
														+ "</td>";
												trs += "<td>" + value.FAh
														+ "</td>";
												trs += "<td>" + value.FAi
														+ "</td>";
												trs += "<td>" + value.FAj
														+ "</td>";
												trs += "<td>" + value.FAk
														+ "</td>";
												trs += "<td>" + value.FAl
														+ "</td>";
												trs += "<td>" + value.FAm
														+ "</td>";
												trs += "<td>" + value.FAn
														+ "</td>";
												trs += "<td>" + value.FAo
														+ "</td>";
												trs += "<td>" + value.FAp
														+ "</td>";
												trs += "<td>" + value.FAq
														+ "</td>";
												trs += "<td>" + value.FAr
														+ "</td>";
												trs += "<td>" + value.FAs
														+ "</td>";
												trs += "<td>" + value.FAt
														+ "</td>";
												trs += "<td>" + value.FAu
														+ "</td>";
												trs += "<td>" + value.FAv
														+ "</td>";
												trs += "<td>" + value.FAw
														+ "</td>";
												trs += "<td>" + value.FAx
														+ "</td>";
												trs += "<td>" + value.FAy
														+ "</td>";
												trs += "<td>" + value.FAz
														+ "</td>";

												trs += "<td>" + value.FAa
														+ "</td>";
												trs += "<td>" + value.FBb
														+ "</td>";
												trs += "<td>" + value.FBc
														+ "</td>";
												trs += "<td>" + value.FBd
														+ "</td>";
												trs += "<td>" + value.FBe
														+ "</td>";
												trs += "<td>" + value.FBf
														+ "</td>";
												trs += "<td>" + value.FBg
														+ "</td>";
												trs += "<td>" + value.FBh
														+ "</td>";
												trs += "<td>" + value.FBi
														+ "</td>";
										        trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBj == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bj','"
														+ ((value.FBj == null) ? 0
																: value.FBj)
														+ "')\">上传</a>]";
												trs += "</td>";
										        trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBk == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bk','"
														+ ((value.FBk == null) ? 0
																: value.FBk)
														+ "')\">上传</a>]";
												trs += "</td>";
										        trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBl == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bl','"
														+ ((value.FBl == null) ? 0
																: value.FBl)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBm == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bm','"
														+ ((value.FBm == null) ? 0
																: value.FBm)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBn == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bn','"
														+ ((value.FBn == null) ? 0
																: value.FBn)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBo == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bo','"
														+ ((value.FBo == null) ? 0
																: value.FBo)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBp == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bp','"
														+ ((value.FBp == null) ? 0
																: value.FBp)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBq == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bq','"
														+ ((value.FBq == null) ? 0
																: value.FBq)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBr == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Br','"
														+ ((value.FBr == null) ? 0
																: value.FBr)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBs == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bs','"
														+ ((value.FBs == null) ? 0
																: value.FBs)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBt == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bt','"
														+ ((value.FBt == null) ? 0
																: value.FBt)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBu == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bu','"
														+ ((value.FBu == null) ? 0
																: value.FBu)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBv == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bv','"
														+ ((value.FBv == null) ? 0
																: value.FBv)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBw == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bw','"
														+ ((value.FBw == null) ? 0
																: value.FBw)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBx == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bx','"
														+ ((value.FBx == null) ? 0
																: value.FBx)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBy == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'By','"
														+ ((value.FBy == null) ? 0
																: value.FBy)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FBz == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bz','"
														+ ((value.FBz == null) ? 0
																: value.FBz)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FCa == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ca','"
														+ ((value.FCa == null) ? 0
																: value.FCa)
														+ "')\">上传</a>]";
												trs += "</td>";

												trs += "<td>";
												trs += "<img src='images/pageFrame/010.gif' width='14' height='14'/>[<a href=\"javascript:delInstance("
														+ value.id
														+ ")\">删除</a>]";
												trs += "</td>";

												trs += "<td>";
												trs += "<img src='images/pageFrame/037.gif' width='14' height='14'/>[<a href=\"javascript:editInstance("
														+ value.id
														+ ")\">编辑</a>]";
												trs += "</td>";
												
												trs += "</tr>";
												trs = trs.replace(/null/g, "");
												$("#productTable").append(trs);
											});
						});
	}
</script>
</head>

<body>
	<div id=mydiv style="display:block;">
		<table id="productTable" width="5600px" border="0" cellpadding="0"
			cellspacing="1" align="center" class="PagerTable">
			<tr>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>行政区划</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"><font>供电区域分类</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>所属企业</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>责任部门</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>工程名称</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>是否土建</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>项目类别</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>电压等级(千伏)</font>
				</a>
				</th>
				<th class="tdDropTitle" colspan="8" width="60px"><a
					style="cursor: pointer;"> <font>配变</font> </a>
				</th>
				<th class="tdDropTitle" colspan="3"><a style="cursor: pointer;">
						<font>无功补偿装置</font> </a>
				</th>
				<th class="tdDropTitle" colspan="5"><a
					style="cursor: pointer;"> <font>开关类</font> </a>
				</th>
				<th class="tdDropTitle" colspan="3"><a style="cursor: pointer;">
						<font>架空线路</font> </a>
				</th>
				<th class="tdDropTitle" colspan="3"><a style="cursor: pointer;">
						<font>电缆线路</font> </a>
				</th>
				<th class="tdDropTitle" colspan="6" width="60px"><a
					style="cursor: pointer;"> <font>低压网配套</font>
				</a></th>
				<th class="tdDropTitle" colspan="3"><a style="cursor: pointer;">
						<font>户表</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>其他投资(万元)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>总投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" colspan="7" width="60px"><a
					style="cursor: pointer;"> <font>资金来源</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>改造时间(年)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>工程属性</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>是否农网</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>农网建设性质1</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>农网建设性质2</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>农网建设性质3</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>工程目的</font> </a>
				</th>
				<th class="tdDropTitle" colspan="6" width="60px"><a
					style="cursor: pointer;"> <font>所属阶段</font> </a>
				</th>
				<th class="tdDropTitle" colspan="13" width="60px"><a
					style="cursor: pointer;"> <font>项目前期支持性文件</font>
				</a>
				</th>
				<th class="tdDropTitle" colspan="5" width="60px"><a
					style="cursor: pointer;"> <font>项目核准手续</font> </a>
				</th>
				<th class="tdDropTitle" colspan="2" width="60px"><a
					style="cursor: pointer;"> <font>操作</font> </a>
				</th>
			</tr>
			<tr>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>改造总台数(台)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>改造前总容量(千伏安)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>改造后总容量(千伏安)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="1" width="60px"><a
					style="cursor: pointer;"> <font>其中：需改造高损配变</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="1" width="60px"><a
					style="cursor: pointer;"> <font>其中：需改造高损配变</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="1" width="60px"><a
					style="cursor: pointer;"> <font>其中：更换为非晶合金配变</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="1" width="60px"><a
					style="cursor: pointer;"> <font>其中：更换为非晶合金配变</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>配变投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>组数(组)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>总容量(千乏)</font> </a>
				</th>

				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>无功补偿装置投资(万元)</font> </a>
				</th>

				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>断路器(台)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>负荷开关(台)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>环网柜(座)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>电缆分支箱(座)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>开关类投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>线路长度(千米)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>其中绝缘导线(千米)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>架空线路投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>长度(千米)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>沟道(千米)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>电缆线路投资(万元)</font>
				</a>
				</th>
				<th class="tdDropTitle" colspan="3" width="60px"><a
					style="cursor: pointer;"> <font>架空线路</font>
				</a>
				</th>
				<th class="tdDropTitle" colspan="3" width="60px"><a
					style="cursor: pointer;"> <font>电缆</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>户表(户)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>接户线(千米)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>户表投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" colspan="2" width="60px"><a
					style="cursor: pointer;"> <font>国家电网公司投资</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>县级供电企业自筹(%)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>用户投资(%)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>小区配套费(%)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>政府垫资(%)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>其他(%)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>规划</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>储备</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>投资计划</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>初设</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>施工图</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>用地单位原则性意见</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>规划意见</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>国土意见</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>林业部门意见</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>文物部门意见</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>交通部门意见</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>消防备案</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得压覆矿证明</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得地灾备案登记表</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得地震局支持性意见</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研报告内容</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研内审意见</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研批复（省公司）</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得环评批复</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得土地预审意见</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得水保批复</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得市发改委意见</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>省发改委核准批复</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>刪除</font> </a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>编辑</font> </a></th>
			</tr>
			<tr>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>台数(台)</font> </a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>总容量(千伏安)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>台数(台)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>总容量(千伏安)</font> </a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>条数(条)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>长度(千米)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>条数(条)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>长度(千米)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>投资(万元)</font> </a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>中央计划(%)</font>
				</a>
				</th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>公司自筹(%)</font>
				</a>
				</th>
			</tr>
		</table>
	</div>
</body>
</html>
