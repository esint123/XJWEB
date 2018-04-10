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
<title>35kV线路改造工程表</title>
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
		var url = "ItemLibrary/AttachFile.jsp?tableName=TItemlibraryRemake35&attache_id=" + attache_id
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
		    var url='DeleteRemake35?id='+id;
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
		var url = "EditRemake35?id="+id;
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
	    	url="Remake35Json.action?treeid="+getQueryString("treeid");
	    }
	    else
	    {
	    	url="Remake35Json.action?treeid="+getQueryString("treeid")+"&stage="+stage;
	    }
		$.getJSON(url,
						function(data) {
							$("#productTable tr:gt(2)").remove();
							$
									.each(
											data.itemlibraryremake35List,
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
												trs += "<img src='images/pageFrame/"
														+ ((value.FAe == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ae','"
														+ ((value.FAe == null) ? 0
																: value.FAe)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAf == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Af','"
														+ ((value.FAf == null) ? 0
																: value.FAf)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAg == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ag','"
														+ ((value.FAg == null) ? 0
																: value.FAg)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAh == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ah','"
														+ ((value.FAh == null) ? 0
																: value.FAh)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAi == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ai','"
														+ ((value.FAi == null) ? 0
																: value.FAi)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAj == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Aj','"
														+ ((value.FAj == null) ? 0
																: value.FAj)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAk == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ak','"
														+ ((value.FAk == null) ? 0
																: value.FAk)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAl == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Al','"
														+ ((value.FAl == null) ? 0
																: value.FAl)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAm == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Am','"
														+ ((value.FAm == null) ? 0
																: value.FAm)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAn == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'An','"
														+ ((value.FAn == null) ? 0
																: value.FAn)
														+ "')\">上传</a>]";
												trs += "</td>";
												
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAn == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'An','"
														+ ((value.FAn == null) ? 0
																: value.FAn)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAo == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Bo','"
														+ ((value.FAo == null) ? 0
																: value.FAo)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAp == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ap','"
														+ ((value.FAp == null) ? 0
																: value.FAp)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAq == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Aq','"
														+ ((value.FAq == null) ? 0
																: value.FAq)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAr == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Ar','"
														+ ((value.FAr == null) ? 0
																: value.FAr)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAs == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'As','"
														+ ((value.FAs == null) ? 0
																: value.FAs)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAt == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'At','"
														+ ((value.FAt == null) ? 0
																: value.FAt)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAu == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Au','"
														+ ((value.FAu == null) ? 0
																: value.FAu)
														+ "')\">上传</a>]";
												trs += "</td>";
												trs += "<td>";
												trs += "<img src='images/pageFrame/"
														+ ((value.FAv == null) ? '040'
																: '030')
														+ ".gif' width='14' height='14'/>[<a href=\"javascript:uploadFile("
														+ value.id
														+ ","
														+ "'Av','"
														+ ((value.FAv == null) ? 0
																: value.FAv)
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
		<table id="productTable" width="3700px" border="0" cellpadding="0"
			cellspacing="1" align="center" class="PagerTable">
			<tr>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>行政区划</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"><font>供电区域分类</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>所属企业</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>工程名称</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>电压等级(千伏)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>架空线长度(千米)</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>其中:耐热导线(千米)</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>架空线路投资(万元)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>电缆长度(千米)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>沟道长度(千米)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>电缆投资(万元)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>其它项</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>其它项投资(万元)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>总投资(万元)</font>
				</a></th>
				<th class="tdDropTitle" colspan="4" width="60px"><a
					style="cursor: pointer;"> <font>资金来源</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>改造时间(年)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>是否农网</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>农网建设性质1</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>农网建设性质2</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>农网建设性质3</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font>工程目的</font> </a></th>
				<th class="tdDropTitle" colspan="6" width="60px"><a
					style="cursor: pointer;"> <font>所属阶段</font> </a></th>
				<th class="tdDropTitle" colspan="13" width="60px"><a
					style="cursor: pointer;"> <font>项目前期支持性文件</font>
				</a></th>
				<th class="tdDropTitle" colspan="5" width="60px"><a
					style="cursor: pointer;"> <font>项目核准手续</font> </a>
				</th>
				<th class="tdDropTitle" colspan="2" width="60px"><a
					style="cursor: pointer;"> <font>操作</font> </a></th>
			</tr>
			<tr>
				<th class="tdDropTitle" colspan="2" width="60px"><a
					style="cursor: pointer;"> <font>国家电网公司投资</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>县级供电企业自筹(%)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>其他(%)</font> </a></th>
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
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>规划意见</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>国土意见</font> </a>
				</th>
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
					style="cursor: pointer;"> <font>消防备案</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得压覆矿证明</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得地灾备案登记表</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得地震局支持性意见</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研报告内容</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研内审意见</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>可研批复（省公司）</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得环评批复</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得土地预审意见</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得水保批复</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>取得市发改委意见</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>省发改委核准批复</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>刪除</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font>编辑</font> </a>
				</th>
			</tr>
			<tr>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>中央计划(%)</font>
				</a></th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font>公司自筹(%)</font>
				</a></th>
			</tr>
		</table>
	</div>
</body>
</html>
