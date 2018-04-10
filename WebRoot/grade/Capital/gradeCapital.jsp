<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>产业基建项目可研评审要点细则</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript"
	src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/grade/gradeCapital.css'></link>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/normal.css'></link>
<script type="text/javascript">
    	function jspclose()
    	{
			window.close();
		}
	    function jspSubmit()
    	{
		    if($.trim($("#reviewexpert").val())=='')
		    {
		    	alert("请填写评审专家！");
		    	return false;
		    }
    		var submit = document.getElementById('btnSubmit');
			submit.click();
			window.opener.Refresh();
			window.close();
		}

		function validateDouble(obj,max)
		{   
			if(obj.value == null || obj.value == '') return;
	        var myRex = /^\d+\.?\d{0,1}$/;
	        var str = obj.value;
	        if(!myRex.test(str))
	        {
	           obj.value = "";
	           alert("打分值输入错误！");
	        }
	        if(parseFloat(obj.value)>parseFloat(max))
	        {
	        	obj.value = "";
	           alert("打分值输入错误！");
	        }
		}
    </script>
</head>

<body>
  <s:form id="form1" name="form1" action="SaveCapital">
<table border=0 cellpadding=0 cellspacing=0 width=1079 style='border-collapse:
 collapse;table-layout:fixed;width:811pt' align="center">
 <col class=xl89 width=46 style='mso-width-source:userset;mso-width-alt:1472;
 width:35pt'>
 <col class=xl89 width=80 style='mso-width-source:userset;mso-width-alt:2560;
 width:60pt'>
 <col class=xl89 width=113 style='mso-width-source:userset;mso-width-alt:3616;
 width:85pt'>
 <col class=xl89 width=292 style='mso-width-source:userset;mso-width-alt:9344;
 width:219pt'>
 <col class=xl89 width=66 style='mso-width-source:userset;mso-width-alt:2112;
 width:50pt'>
 <col class=xl89 width=90 style='mso-width-source:userset;mso-width-alt:2880;
 width:68pt'>
 <col class=xl89 width=120 style='mso-width-source:userset;mso-width-alt:3840;
 width:90pt'>
 <col class=xl89 width=153 style='mso-width-source:userset;mso-width-alt:4896;
 width:115pt'>
 <col class=xl89 width=119 style='mso-width-source:userset;mso-width-alt:3808;
 width:89pt'>
 <tr height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl102 width=1079 style='height:22.5pt;
  width:811pt'><span
  style='mso-spacerun:yes'>
  </span>产业基建项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl96 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl98 style='border-right:.5pt solid black'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl97 style='height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl98 style='border-right:.5pt solid black'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl96 style='height:18.0pt'>报告提交时间</td>
  <td class=xl95 width=292 style='border-top:none;width:219pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl103 width=276 style='border-right:.5pt solid black;
  border-left:none;width:208pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl106 width=272 style='border-right:.5pt solid black;
  border-left:none;width:204pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl96 style='height:18.0pt'>项目类别注解</td>
  <td colspan=6 class=xl98 style='border-right:.5pt solid black'><s:textfield name ="item.reviewclass" theme="simple" readonly="true" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl97 style='height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl98 style='border-right:.5pt solid black'><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:46.9pt'>
  <td height=62 class=xl90 width=46 style='height:46.9pt;border-top:none;
  width:35pt'>序号</td>
  <td class=xl90 width=80 style='border-top:none;border-left:none;width:60pt'>评审要点</td>
  <td class=xl90 width=113 style='border-top:none;border-left:none;width:85pt'>评审内容</td>
  <td class=xl90 width=292 style='border-top:none;border-left:none;width:219pt'>具体要求</td>
  <td class=xl90 width=66 style='border-top:none;border-left:none;width:50pt'>总分/分项分值<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl91 width=90 style='border-left:none;width:68pt'>打分</td>
  <td class=xl91 width=120 style='border-left:none;width:90pt'>原因说明</td>
  <td class=xl91 width=153 style='border-left:none;width:115pt'>评审依据</td>
  <td class=xl91 width=119 style='border-left:none;width:89pt'>备注</td>
 </tr>
 <tr height=44 style='mso-height-source:userset;height:33.0pt'>
  <td rowspan=14 height=865 class=xl92 width=46 style='height:651.15pt;
  border-top:none;width:35pt'>1</td>
  <td rowspan=14 class=xl92 width=80 style='border-top:none;width:60pt'>总论</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>项目概况</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目名称及项目单位（投资单位、实施单位）。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield id="grade1" name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=26 style='mso-height-source:userset;height:20.1pt'>
  <td height=26 class=xl92 width=113 style='height:20.1pt;border-top:none;
  border-left:none;width:85pt'>项目地点</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目地点及地理位置。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=89 style='mso-height-source:userset;height:66.95pt'>
  <td height=89 class=xl92 width=113 style='height:66.95pt;border-top:none;
  border-left:none;width:85pt'>建设规模与建设内容</td>
  <td class=xl94 width=292 style='border-top:none;border-left:none;width:219pt'>项目建设的总体规模与主要内容，如建成后生产规模、项目占地面积、建筑面积、主要建筑物、生产线及设备购置安装情况等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'></td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:47.1pt'>
  <td height=62 class=xl92 width=113 style='height:47.1pt;border-top:none;
  border-left:none;width:85pt'>项目所需外部条件</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目选址，项目是否需要落实外部条件，如上级主管部门审批及政府相关部门审批（核准）等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade4" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:47.1pt'>
  <td height=62 class=xl92 width=113 style='height:47.1pt;border-top:none;
  border-left:none;width:85pt'>项目投资规模与资金筹措</td>
  <td class=xl94 width=292 style='border-top:none;border-left:none;width:219pt'>项目总投资、投资构成、资金来源等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade5" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=85 style='mso-height-source:userset;height:63.95pt'>
  <td height=85 class=xl92 width=113 style='height:63.95pt;border-top:none;
  border-left:none;width:85pt'>项目建设周期及主要技术经济指标表</td>
  <td class=xl94 width=292 style='border-top:none;border-left:none;width:219pt'>包括建设指标与效益指标等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade6" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 class=xl92 width=113 style='height:30.0pt;border-top:none;
  border-left:none;width:85pt'>项目提出的背景</td>
  <td class=xl94 width=292 style='border-top:none;border-left:none;width:219pt'>　</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade7" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=84 style='mso-height-source:userset;height:63.0pt'>
  <td height=84 class=xl92 width=113 style='height:63.0pt;border-top:none;
  border-left:none;width:85pt'>可行性研究范围及分工</td>
  <td class=xl94 width=292 style='border-top:none;border-left:none;width:219pt'>可行性研究的工作范围（含有关专题研究项目）。如有多个单位共同完成时，应说明主体设计单位和参加设计单位及分工。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade8" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=69 style='mso-height-source:userset;height:51.95pt'>
  <td height=69 class=xl92 width=113 style='height:51.95pt;border-top:none;
  border-left:none;width:85pt'>可行性研究报告的编制依据和原则</td>
  <td class=xl94 width=292 style='border-top:none;border-left:none;width:219pt'>项目有关的依据性文件，执行的主要法规和采用的主要标准等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>企业发展历史及基本情况</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>企业发展历史及基本情况。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade10" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>业务范围及产品（服务）情况。</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>主要产品及生产能力，现有产品的技术水平与市场地位等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade11" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>主要工艺及设备</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>主要原材料和零部件市场供应情况。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield name ="item.grade12" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='height:99.75pt'>
  <td height=133 class=xl92 width=113 style='height:99.75pt;border-top:none;
  border-left:none;width:85pt'>近三年主要经营指标</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>如项目单位将依托项目实施新设，本节应主要描述项目单位组建的具体方案，包括项目单位名称、注册地与住所、注册资本、经营范围、发展目标、股东构成、出资比例及方式、组织机构与人员配置、项目单位运营管理方案、股东基本情况等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade13" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>结论及建议</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>可行性研究的主要结论，包括项目实施的必要性、可行性以及相关建议等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade14" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td rowspan=14 height=912 class=xl92 width=46 style='height:684.0pt;
  border-top:none;width:35pt'>2</td>
  <td rowspan=14 class=xl92 width=80 style='border-top:none;width:60pt'>项目建设的必要性及可行性</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>宏观环境分析</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>针对行业和产品类别，进行宏观经济形势分析、政策制度导向分析、社会文化环境等相关分析。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade15" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl92 width=113 style='height:57.0pt;border-top:none;
  border-left:none;width:85pt'>行业发展现状</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>对国内外行业的发展状况、发展特点、主流产品、市场环境、影响行业发展的关键因素、存在的主要问题、发展趋势等进行分析描述。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade16" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>项目的提出</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目提出的目的、理由和依据，项目在国家、地区（省级）和行业规划中的地位与作用等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade17" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>项目前期工作情况</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>简要描述围绕项目已开展的工作情况、具备的基础条件，对扩建、改建工程项目，应说明已有工程的概况。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade18" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>必要性</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>从国家、地区、行业、公司系统以及企业自身等不同层面，多角度阐述项目建设的必要性和意义。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade19" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='height:99.75pt'>
  <td height=133 class=xl92 width=113 style='height:99.75pt;border-top:none;
  border-left:none;width:85pt'>技术与产品方案</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>阐述项目产品的技术路线与体系架构，分析产品的主要创新点与关键技术、产品的主要性能指标、产品的技术水平，与国内外同类技术（产品）进行对比，说明产品发展规划等；对项目产品的市场定位进行描述，分析产品的竞争优势。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade20" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason20" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark20" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>国内需求分析</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>分析近几年国内市场需求情况，说明当前市场容量、市场分布，对未来市场需求进行预测。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade21" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason21" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark21" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl92 width=113 style='height:57.0pt;border-top:none;
  border-left:none;width:85pt'>国内供应情况</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>分析目前国内行业产能、行业前十名（或市场占有率百分之十以上）供应商产能与市场份额、国内市场竞争情况以及供需形势、主要竞争对手等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade22" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason22" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark22" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>国际需求分析</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>分析近几年国际市场需求情况，说明当前国际市场容量、市场分布，对未来市场需求进行预测。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade23" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason23" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark23" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>国际供应情况</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>分析目前国际市场竞争格局、主要供应商情况等。说明国内厂商产品出口情况。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade24" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason24" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark24" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>技术与人才储备</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>阐述项目实施所需的技术来源及技术、人才储备情况。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade25" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason25" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark25" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>组织机构与人力资源配置</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目建成后的组织机构设置及运营管理方式，法人治理结构及产权关系。阐述项目所需人力资源情况及配置方案。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade26" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason26" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'></td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark26" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=95 style='height:71.25pt'>
  <td height=95 class=xl92 width=113 style='height:71.25pt;border-top:none;
  border-left:none;width:85pt'>产能预测</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>概要分析项目实施将创造的生产能力，包括达产时间，达产规模等。产品的市场需求分析是否科学、详尽，产能预测是否合理、客观。<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade27" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason27" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark27" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>效益预测</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>概要描述项目实施将创造的经济社会综合效益，具体经济分析。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade28" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason28" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark28" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td rowspan=2 height=133 class=xl92 width=46 style='height:99.75pt;
  border-top:none;width:35pt'>3</td>
  <td rowspan=2 class=xl92 width=80 style='border-top:none;width:60pt'>项目选址</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>项目选址和用地规划</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目地理位置，用地规划和方案。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield name ="item.grade29" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason29" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark29" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=95 style='height:71.25pt'>
  <td height=95 class=xl92 width=113 style='height:71.25pt;border-top:none;
  border-left:none;width:85pt'>项目厂址自然条件</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目地质条件、水文气象、周边环境、基础设施、环境保护等自然条件。利用企业已有厂房或建筑设施项目的基本利用情况<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade30" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason30" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark30" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=209 style='height:156.75pt'>
  <td rowspan=7 height=485 class=xl92 width=46 style='height:363.75pt;
  border-top:none;width:35pt'>4</td>
  <td rowspan=7 class=xl92 width=80 style='border-top:none;width:60pt'>项目建设方案</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>项目整体规划和建设方案</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目整体规划和建设方案进行描述，如设计原则、建设项目组成、拟建生产及附属设施名称、总建筑面积、设计产能等。提出总平面布置方案、竖向布置及建筑结构方案。工程涉及的交通运输、电气、暖通、给排水、消防、人防绿化等方案。厂区规划、总平面布置及主要建筑物图纸。如有必要，应对消防、人防进行专题设计，编写专篇。如项目利用企业已有厂房或建筑实施，本节部分内容可简化。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade31" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason31" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark31" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>生产线及设备方案</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>生产方案比选，项目工艺流程和设计方案、生产线设计方案、设备方案等。附主要设备材料清册。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade32" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason32" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark32" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>物料供应与生产协作方案</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>产品所需主要原材料、零部件的供应方案，生产协作方案等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade33" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason33" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark33" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td height=76 class=xl92 width=113 style='height:57.0pt;border-top:none;
  border-left:none;width:85pt'>节能设计方案</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>提出节约能源与合理利用能源方案，描述主要用能设备、能源品种和消耗量，对能耗大的设备要进行单位能耗对比。如有必要，编写专篇。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade34" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason34" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark34" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>环境保护</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>提出环境保护方案，描述主要污染源、污染物及防治措施。如有必要，应开展环境保护专题研究，编写专篇。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade35" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason35" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark35" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>职业安全卫生</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>职业安全卫生。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade36" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason36" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark36" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>其他专项设计</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>其他专项设计。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade37" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason37" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark37" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=76 style='height:57.0pt'>
  <td rowspan=3 height=171 class=xl92 width=46 style='height:128.25pt;
  border-top:none;width:35pt'>5</td>
  <td rowspan=3 class=xl92 width=80 style='border-top:none;width:60pt'>项目实施和组织管理</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>项目实施计划和进度</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目前期工作、现场勘测、专项试验、工程设计、工程审查、施工准备、土建施工、设备安装、调试及投产等项目进度安排及相关工期横道图。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade38" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason38" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark38" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>项目管理和施工组织</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目实施过程中的建设管理方式及施工组织设置、人力资源配置方案。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade39" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason39" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark39" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>项目招投标</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目设计、设备采购、建筑施工、监理等招标方案是否符合司招投标要求。<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1.5</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade40" theme="simple" onchange="javascript:validateDouble(this,1.5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason40" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark40" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=147 style='mso-height-source:userset;height:110.25pt'>
  <td rowspan=5 height=380 class=xl92 width=46 style='height:285.0pt;
  border-top:none;width:35pt'>6</td>
  <td rowspan=5 class=xl92 width=80 style='border-top:none;width:60pt'>投资估算和资金筹措</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>投资估算</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>投资估算编制的范围、依据及方法等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade41" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason41" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>本章内容的编制宜参照国家发展改革委员会和建设部联合发布的《建设项目经济评价方法与参数》等国家有关规定执行。</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark41" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='height:99.75pt'>
  <td height=133 class=xl92 width=113 style='height:99.75pt;border-top:none;
  border-left:none;width:85pt'>投资估算（达到概算深度）</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>说明总体投资规模及投资构成，分类说明投资明细。<br>
    投资估算编制是否执行国家发展改革委员会和建设部联合发布的《建设项目经济评价方法与参数》(第三版)等有关规定。<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade42" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason42" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>如土地购置费、建筑安装工程费用、设备购置费用、流动资金、财务费用等。</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark42" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>资金来源及融资方案</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>说明项目资金的来源、筹措方式。多种融资方案的融资成本比较。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade43" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason43" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark43" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>分期投资计划</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>编制分期投资计划表。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade44" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason44" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark44" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>附表</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>投资估算汇总表、流动资金估算表、项目资金使用计划与资金筹措表。　　　　</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade45" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason45" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark45" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td rowspan=6 height=219 class=xl92 width=46 style='height:164.25pt;
  border-top:none;width:35pt'>7</td>
  <td rowspan=6 class=xl92 width=80 style='border-top:none;width:60pt'>风险分析及对策</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>宏观经济环境影响</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>宏观经济环境对项目的影响，国家政策和行业发展对项目可能带来的风险。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade46" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason46" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark46" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>技术风险</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>产品技术的先进性、可靠性和适用性等技术风险分析。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade47" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason47" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark47" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl92 width=113 style='height:28.5pt;border-top:none;
  border-left:none;width:85pt'>市场风险</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>市场环境、产品竞争优势的等风险分析。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade48" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason48" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark48" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>财务风险</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>说明项目的财务风险。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade49" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason49" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark49" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>其他风险</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>说明项目的其他风险。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade50" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason50" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark50" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl92 width=113 style='height:42.75pt;border-top:none;
  border-left:none;width:85pt'>提出防范风险的对策和措施</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目风险点的多方面综合分析，以及切实可行的应对措施。<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade51" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason51" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark51" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td rowspan=6 height=509 class=xl92 width=46 style='height:381.75pt;
  border-top:none;width:35pt'>8</td>
  <td rowspan=6 class=xl92 width=80 style='border-top:none;width:60pt'>经济效益分析</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>基础数据</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>项目的建设及投产时间，效益预测的生产经营数据（如产销量、价格、人力成本等）及其依据等。效益预测计算期应不少于五年（根据产品生命周期等因素而定）。测算过程中，除考虑项目将完成的投资外，如企业已有的土地、厂房或设备等也将用于项目建设，应一并考虑。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade52" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason52" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark52" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=152 style='height:114.0pt'>
  <td height=152 class=xl92 width=113 style='height:114.0pt;border-top:none;
  border-left:none;width:85pt'>财务计算与评价</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>对总成本费用、营业收入和营业税金及附加、利润及分配等进行估算。<br>
   
  项目盈利能力及偿债能力，项目现金流量分析，对项目净现值、内含报酬率、静态投资回收期、总投资收益率等主要指标进行测算和说明。若项目需要借款则需要增加借款还本付息计划表、资产负债表等。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade53" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason53" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark53" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>盈亏平衡分析</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>提出盈亏平衡分析。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade54" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason54" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark54" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>敏感性分析</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>提出敏感性分析。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>2</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade55" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason55" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark55" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl92 width=113 style='height:18.0pt;border-top:none;
  border-left:none;width:85pt'>效益分析结论</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>提出效益分析结论。</td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>1</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade56" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason56" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark56" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='height:99.75pt'>
  <td height=133 class=xl92 width=113 style='height:99.75pt;border-top:none;
  border-left:none;width:85pt'>附表</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>营业收入、营业税金及附加和增值税估算表、总成本费用估算表、利润及利润分配表、项目投资现金流量表。坚持审慎稳健的原则进行投资效益分析。是否参照《建设项目经济评价方法与参数》(第三版)等国家有关规定执行。<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>　</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'></td>
 </tr>
 <tr height=95 style='height:71.25pt'>
  <td height=95 class=xl92 width=46 style='height:71.25pt;border-top:none;
  width:35pt'>9</td>
  <td class=xl92 width=80 style='border-top:none;border-left:none;width:60pt'>结论与建议</td>
  <td class=xl92 width=113 style='border-top:none;border-left:none;width:85pt'>结论与建议</td>
  <td class=xl93 width=292 style='border-top:none;border-left:none;width:219pt'>注重项目存在的主要问题，关注项目是否会引起建设方案中技术、生产方案的变更，是否有针对性提出计划实施的解决方案。<br>
    </td>
  <td class=xl92 width=66 style='border-top:none;border-left:none;width:50pt'>3</td>
  <td class=xl92 width=90 style='border-top:none;border-left:none;width:68pt'><s:textfield  name ="item.grade57" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl92 width=120 style='border-top:none;border-left:none;width:90pt'><s:textarea name ="item.reason57" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl93 width=153 style='border-top:none;border-left:none;width:115pt'>　</td>
  <td class=xl92 width=119 style='border-top:none;border-left:none;width:89pt'><s:textarea name ="item.remark57" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
<tr>
			<td colspan="9">
			<s:hidden  name ="item.id"></s:hidden>
			<s:hidden  name ="item.treeid"></s:hidden>
			<s:hidden  name ="item.opinion"></s:hidden>
				<div style="text-align: center;">
					<br>
					<input type="submit" id="btnSubmit" value="保存"
						onclick="return jspSubmit();" class="btn" /> &nbsp&nbsp<input
						type="button" value="关闭" onclick="javascript:jspclose()"
						class="btn" />
				</div>
			</td>
		</tr>
</table>
  </s:form>
</body>

</html>

