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

<title>管理咨询项目可研评审要点细则</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeManage.css'></link>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/normal.css'></link>
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
<s:form id="form1" name="form1" action="SaveManage">

<table border=0 cellpadding=0 cellspacing=0 width=1170 style='border-collapse:
 collapse;table-layout:fixed;width:878pt' align="center">
 <col class=xl65 width=41 style='mso-width-source:userset;mso-width-alt:1312;
 width:31pt'>
 <col class=xl65 width=106 style='mso-width-source:userset;mso-width-alt:3392;
 width:80pt'>
 <col class=xl65 width=117 style='mso-width-source:userset;mso-width-alt:3744;
 width:88pt'>
 <col class=xl65 width=292 style='mso-width-source:userset;mso-width-alt:9344;
 width:219pt'>
 <col class=xl65 width=75 style='mso-width-source:userset;mso-width-alt:2400;
 width:56pt'>
 <col class=xl65 width=99 style='mso-width-source:userset;mso-width-alt:3168;
 width:74pt'>
 <col class=xl65 width=155 style='mso-width-source:userset;mso-width-alt:4960;
 width:116pt'>
 <col class=xl65 width=131 style='mso-width-source:userset;mso-width-alt:4192;
 width:98pt'>
 <col class=xl65 width=154 style='mso-width-source:userset;mso-width-alt:4928;
 width:116pt'>
 <tr height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl80 width=1170 style='height:22.5pt;
  width:878pt'>管理咨询项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl74 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl76 style='border-right:.5pt solid black'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl75 style='height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl76 style='border-right:.5pt solid black'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl74 style='height:18.0pt'>报告提交时间</td>
  <td class=xl71 width=292 style='border-top:none;width:219pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl81 width=329 style='border-right:.5pt solid black;
  border-left:none;width:246pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl72 width=285 style='border-right:.5pt solid black;
  border-left:none;width:214pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=116 style='mso-height-source:userset;height:87.0pt'>
  <td colspan=3 height=116 class=xl74 style='height:87.0pt'>项目类别注解</td>
  <td colspan=6 class=xl84 width=906 style='width:679pt'>包括公司发展战略专题研究项目；电力、电网发展的理论、政策、管理等重大问题研究项目；关系公司改革发展的重大理论性、实践性研究项目；与国外能源行业和公用事业企业的对比性研究项目；公司重点关注的其它战略和管理咨询项目。<br>
    <span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;
  </span>不包括电网规划的基础研究项目、工程前期咨询项目、信息系统建设等技术咨询与开发项目，以及法律、税务、审计、会计等常规性的中介机构服务项目。<br>
    <br>
    </td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl75 style='height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl85><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:46.9pt'>
  <td height=62 class=xl66 width=41 style='height:46.9pt;border-top:none;
  width:31pt'>序号</td>
  <td class=xl66 width=106 style='border-top:none;border-left:none;width:80pt'>评审要点</td>
  <td class=xl66 width=117 style='border-top:none;border-left:none;width:88pt'>评审内容</td>
  <td class=xl66 width=292 style='border-top:none;border-left:none;width:219pt'>具体要求</td>
  <td class=xl66 width=75 style='border-top:none;border-left:none;width:56pt'>总分/分项分值</td>
  <td class=xl67 width=99 style='border-left:none;width:74pt'>打分</td>
  <td class=xl67 width=155 style='border-left:none;width:116pt'>原因说明</td>
  <td class=xl67 width=131 style='border-left:none;width:98pt'>评审依据</td>
  <td class=xl67 width=154 style='border-left:none;width:116pt'>备注</td>
 </tr>
 <tr height=68 style='mso-height-source:userset;height:51.0pt'>
  <td height=68 class=xl68 width=41 style='height:51.0pt;border-top:none;
  width:31pt'>1</td>
  <td class=xl68 width=106 style='border-top:none;border-left:none;width:80pt'>简述</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>简述</td>
  <td class=xl69 width=292 style='border-top:none;border-left:none;width:219pt'>项目名称、项目承办单位、项目管理负责人、申请金额（万元）、研究起止年月。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>10</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=105 style='mso-height-source:userset;height:78.95pt'>
  <td height=105 class=xl68 width=41 style='height:78.95pt;border-top:none;
  width:31pt'>2</td>
  <td class=xl68 width=106 style='border-top:none;border-left:none;width:80pt'>项目内容、意义和预期成果摘要</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>项目内容、意义和预期成果摘要</td>
  <td class=xl69 width=292 style='border-top:none;border-left:none;width:219pt'>项目研究内容、项目意义、项目研究预期目标、应用前景。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>10</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=60 style='mso-height-source:userset;height:45.0pt'>
  <td height=60 class=xl68 width=41 style='height:45.0pt;border-top:none;
  width:31pt'>3</td>
  <td class=xl68 width=106 style='border-top:none;border-left:none;width:80pt'>选题依据</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>选题依据</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>项目背景、公司当前有关工作开展情况；国内外研究概况、现状及发展动态。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>10</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=44 style='mso-height-source:userset;height:33.0pt'>
  <td height=44 class=xl68 width=41 style='height:33.0pt;border-top:none;
  width:31pt'>4</td>
  <td class=xl68 width=106 style='border-top:none;border-left:none;width:80pt'>研究内容</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>研究内容</td>
  <td class=xl69 width=292 style='border-top:none;border-left:none;width:219pt'>项目研究内容、基本思路、重点难点、项目的研究特色与创新点。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>10</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade4" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=66 style='mso-height-source:userset;height:50.1pt'>
  <td height=66 class=xl68 width=41 style='height:50.1pt;border-top:none;
  width:31pt'>5</td>
  <td class=xl68 width=106 style='border-top:none;border-left:none;width:80pt'>预期目标和成果形式</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>预期目标和成果形式</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>项目研究预期目标、项目成果形式。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>10</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade5" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:47.1pt'>
  <td height=62 class=xl68 width=41 style='height:47.1pt;border-top:none;
  width:31pt'>6</td>
  <td class=xl68 width=106 style='border-top:none;border-left:none;width:80pt'>项目已有的研究基础</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>项目已有的研究基础</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>项目已有的研究基础。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>10</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade6" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=32 style='mso-height-source:userset;height:24.0pt'>
  <td rowspan=5 height=156 class=xl68 width=41 style='height:117.0pt;
  border-top:none;width:31pt'>7</td>
  <td rowspan=5 class=xl68 width=106 style='border-top:none;width:80pt'>项目应用前景</td>
  <td rowspan=5 class=xl68 width=117 style='border-top:none;width:88pt'>项目应用<br>
    前景</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>项目成果应用主体。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>4</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade7" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl70 width=292 style='height:18.0pt;border-top:none;
  border-left:none;width:219pt'>项目成果应用方式。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>2</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade8" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl70 width=292 style='height:18.0pt;border-top:none;
  border-left:none;width:219pt'>项目成果应用时间。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>2</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl70 width=292 style='height:28.5pt;border-top:none;
  border-left:none;width:219pt'>项目成果应用后的预期直接或间接效益。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>4</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade10" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl70 width=292 style='height:28.5pt;border-top:none;
  border-left:none;width:219pt'>项目成果在公司系统内部推广应用前景。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>2</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade11" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td rowspan=4 height=130 class=xl68 width=41 style='height:97.5pt;border-top:
  none;width:31pt'>8</td>
  <td rowspan=4 class=xl68 width=106 style='border-top:none;width:80pt'>咨询机构及团队要求</td>
  <td rowspan=4 class=xl68 width=117 style='border-top:none;width:88pt'>咨询机构及团队要求</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>承担本项目咨询机构性质及类型。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>3</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade12" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=33 style='mso-height-source:userset;height:24.75pt'>
  <td height=33 class=xl70 width=292 style='height:24.75pt;border-top:none;
  border-left:none;width:219pt'>咨询机构资格与业绩要求。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>3</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade13" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=31 style='mso-height-source:userset;height:23.25pt'>
  <td height=31 class=xl70 width=292 style='height:23.25pt;border-top:none;
  border-left:none;width:219pt'>项目咨询团队形式及最低人数要求。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>3</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade14" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl70 width=292 style='height:28.5pt;border-top:none;
  border-left:none;width:219pt'>项目负责人具备的专业、职级、业绩、能力水平等相关要求。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>3</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade15" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=114 style='height:85.5pt'>
  <td rowspan=4 height=228 class=xl68 width=41 style='height:171.0pt;
  border-top:none;width:31pt'>9</td>
  <td rowspan=4 class=xl68 width=106 style='border-top:none;width:80pt'>项目经费估算</td>
  <td class=xl68 width=117 style='border-top:none;border-left:none;width:88pt'>直接费用</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>人工费（说明测算依据）、设备购置及使用费、业务费、场地使用费（凡是不需要另行集中安排场所办公的原则上不发生此项费用）、其他直接费用（其他直接费用预算总额不超过项目预算总额的3%）。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>4</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade16" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl68 width=117 style='height:28.5pt;border-top:none;
  border-left:none;width:88pt'>间接费用</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>间接费用预算总额不超过项目预算总额的10%。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>4</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade17" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl68 width=117 style='height:28.5pt;border-top:none;
  border-left:none;width:88pt'>直接管理费用</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>一般不超过项目预算总额的10%。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>3</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade18" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl68 width=117 style='height:28.5pt;border-top:none;
  border-left:none;width:88pt'>其他间接费用</td>
  <td class=xl70 width=292 style='border-top:none;border-left:none;width:219pt'>其他间接费用。</td>
  <td class=xl68 width=75 style='border-top:none;border-left:none;width:56pt'>3</td>
  <td class=xl68 width=99 style='border-top:none;border-left:none;width:74pt'><s:textfield name ="item.grade19" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl68 width=155 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.reason19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl68 width=131 style='border-top:none;border-left:none;width:98pt'>　</td>
  <td class=xl68 width=154 style='border-top:none;border-left:none;width:116pt'><s:textarea name ="item.remark19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
  <tr>
			<td colspan="9">
			<s:hidden  name ="item.id"></s:hidden>
			<s:hidden  name ="item.treeid"></s:hidden>
			<s:hidden  name ="item.reviewclass"></s:hidden>
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

