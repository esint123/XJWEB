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
    <title>配网农网项目配出项目可研代初设评审</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
    <link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeRural.css'></link>
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
  <s:form id="form1" name="form1" action="SaveRural">
 
<table border=0 cellpadding=0 cellspacing=0 width=1153 style='border-collapse:
 collapse;table-layout:fixed;width:865pt;' align="center">
 <col class=xl67 width=49 style='mso-width-source:userset;mso-width-alt:1568;
 width:37pt'>
 <col class=xl67 width=83 style='mso-width-source:userset;mso-width-alt:2656;
 width:62pt'>
 <col class=xl67 width=165 style='mso-width-source:userset;mso-width-alt:5280;
 width:124pt'>
 <col class=xl67 width=363 style='mso-width-source:userset;mso-width-alt:11616;
 width:272pt'>
 <col class=xl67 width=64 style='mso-width-source:userset;mso-width-alt:2048;
 width:48pt'>
 <col class=xl67 width=87 style='mso-width-source:userset;mso-width-alt:2784;
 width:65pt'>
 <col class=xl67 width=122 style='mso-width-source:userset;mso-width-alt:3904;
 width:92pt'>
 <col class=xl67 width=96 style='mso-width-source:userset;mso-width-alt:3072;
 width:72pt'>
 <col class=xl67 width=124 style='mso-width-source:userset;mso-width-alt:3968;
 width:93pt'>
 <tr height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl89 width=1153 style='height:22.5pt;
  width:865pt'>配网农网项目配出项目可研代初设评审要点</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl78 width=297 style='border-right:.5pt solid black;
  height:18.0pt;width:223pt'>项目名称</td>
  <td colspan=6 class=xl81 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl78 width=297 style='border-right:.5pt solid black;
  height:18.0pt;width:223pt'>设计单位</td>
  <td colspan=6 class=xl81 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl78 width=297 style='border-right:.5pt solid black;
  height:18.0pt;width:223pt'>报告提交时间</td>
  <td class=xl77 width=363 style='border-top:none;border-left:none;width:272pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl78 width=273 style='border-right:.5pt solid black;
  border-left:none;width:205pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl87 width=220 style='border-right:.5pt solid black;
  border-left:none;width:165pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl78 width=297 style='border-right:.5pt solid black;
  height:18.0pt;width:223pt'>项目类别注解</td>
  <td colspan=6 class=xl81 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewclass" theme="simple" readonly="true" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl78 width=297 style='border-right:.5pt solid black;
  height:18.0pt;width:223pt'>评审专家</td>
  <td colspan=6 class=xl81 style='border-right:.5pt solid black;border-left:
  none'><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl65 width=49 style='height:42.75pt;border-top:none;
  width:37pt'>序号</td>
  <td class=xl65 width=83 style='border-top:none;border-left:none;width:62pt'>评审要点</td>
  <td class=xl70 width=165 style='border-top:none;border-left:none;width:124pt'>评审内容</td>
  <td class=xl70 width=363 style='border-top:none;width:272pt'>具体要求</td>
  <td class=xl75 width=64 style='border-top:none;width:48pt'>总分/分项分值<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl74 width=87 style='border-left:none;width:65pt'>打分</td>
  <td class=xl65 width=122 style='border-top:none;border-left:none;width:92pt'>原因说明</td>
  <td class=xl65 width=96 style='border-top:none;border-left:none;width:72pt'>评审依据</td>
  <td class=xl65 width=124 style='border-top:none;border-left:none;width:93pt'>备注</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td rowspan=6 height=174 class=xl84 width=49 style='border-bottom:.5pt solid black;
  height:130.5pt;border-top:none;width:37pt'>一</td>
  <td class=xl68 width=83 style='border-top:none;border-left:none;width:62pt'>必备条件</td>
  <td class=xl66 width=165 style='border-top:none;border-left:none;width:124pt'>　</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>　</td>
  <td class=xl68 width=64 style='border-top:none;width:48pt'>　</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl68 width=122 style='border-top:none;border-left:none;width:92pt'>　</td>
  <td class=xl68 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl69 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td rowspan=5 height=150 class=xl68 width=83 style='height:112.5pt;
  border-top:none;width:62pt'>项目可研评价条件</td>
  <td class=xl66 width=165 style='border-top:none;border-left:none;width:124pt'>（一）规划主管部门意见</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>取得项目所在地县级及以上规划部门出具的支持性意见。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>　</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'>　</td>
  <td class=xl68 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl69 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl66 width=165 style='height:25.5pt;border-top:none;
  border-left:none;width:124pt'>（二）国土部门意见</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>取得项目所在地县级及以上国土资源部门出具的支持性意见。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>　</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'>　</td>
  <td class=xl68 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl69 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl66 width=165 style='height:25.5pt;border-top:none;
  border-left:none;width:124pt'>（三）专项工作项目资料</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>取得专项工作项目（中心村、井井通、村村通动力电等）相关支持性文件。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>　</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'>　</td>
  <td class=xl68 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl69 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl66 width=165 style='height:18.0pt;border-top:none;
  border-left:none;width:124pt'>（四）公司项目规划库</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>上报项目应来自于公司项目规划库。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>　</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'>　</td>
  <td class=xl68 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl69 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl66 width=165 style='height:25.5pt;border-top:none;
  border-left:none;width:124pt'>（五）公司项目需求库</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>上报项目应来自于公司项目需求库（该项此次可以不做要求）</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>　</td>
  <td class=xl76 width=87 style='border-top:none;border-left:none;width:65pt'>　</td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'>　</td>
  <td class=xl68 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl69 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=51 style='height:38.25pt'>
  <td rowspan=47 height=1686 class=xl73 width=49 style='height:1264.5pt;
  border-top:none;width:37pt'>二</td>
  <td rowspan=20 class=xl73 width=83 style='border-top:none;width:62pt'>项目可研编制文本评价</td>
  <td class=xl66 width=165 style='border-top:none;border-left:none;width:124pt'>（一）文本装订</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>文本按要求装订、按要求盖章、签字、资质复印件。装订不合格、未签字、盖章、不附资质复印件，缺一项扣1分；总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td rowspan=19 height=483 class=xl71 width=165 style='height:362.25pt;
  border-top:none;width:124pt'>（二）章节完整</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>1.目录完整。没有目录或目录不全扣0.5分；目录与文本内容没有对应的扣0.5分，总计1分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>1</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td rowspan=12 height=228 class=xl92 width=363 style='height:171.0pt;
  border-top:none;width:272pt'>2．执行<br>
    《农村电网改造升级项目管理办法》（发改办能源〔2010〕2520号）；<br>
    《农村电网改造升级技术原则》（新发改能源〔2010〕2674号）；<br>
    《农网建设与改造技术导则》（国家电网科〔2010〕857号）；<br>
    《国家电网公司配电网工程典型设计》（2016年版）；<br>
    《国家电网公司关于开展农村“低电压”常态化综合治理工作的通知》（国家电网农〔2014〕450号）；<br>
    《国家电网公司关于印发全面开展配电网标准化建设工作意见的通知》（国家电网运检〔2013〕1323号）；<br>
    《国家电网公司关于加强配电网规划与建设工作的意见》（国家电网发展〔2013〕1012号）；<br>
    《配电网典型供电模式》（发展规二〔2014〕21号）；<br>
    《农网工程制度技术标准汇编》（三册）；<br>
    《国网运检部关于开展2016年10千伏及以下配电网建设改造项目需求编制工作的通知》（运检三〔2016〕25号）；<br>
    《国网新疆电力公司发展策划部关于开展2017年35千伏及以下农网项目可行性研究工作的通知》（电发〔2016〕13号）；<br>
    《国家电网公司小城镇典型供电模式》（国家电网农〔2010〕1591号）；<br>
    未执行扣完；应用不合适一处扣0.2分，扣完为止；无编制依据或不全扣1分，总计2分。</td>
  <td rowspan=12 class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td rowspan=12 class=xl84 width=87 style='border-bottom:.5pt solid black;
  border-top:none;width:65pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td rowspan=12 class=xl84 width=122 style='border-bottom:.5pt solid black;
  border-top:none;width:92pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td rowspan=12 class=xl84 width=96 style='border-bottom:.5pt solid black;
  border-top:none;width:72pt'>　</td>
  <td rowspan=12 class=xl84 width=124 style='border-bottom:.5pt solid black;
  border-top:none;width:93pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=19 style='height:14.25pt'>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>3.主要规程、规范完整。规程、规范没有或不全扣1分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade4" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>4.项目按照乡镇编制。项目没有按照乡镇编制、配变、低压线路没有按照村、队编制，各扣1分；总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade5" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>5.乡镇、村建设规模清楚。乡镇、村建设规模不清楚扣2分；总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade6" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>6.地理位置清楚、气象资料完成、污秽等级执行标准正确。每缺一项或执行标准不正确扣1分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade7" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=51 style='height:38.25pt'>
  <td height=51 class=xl71 width=363 style='height:38.25pt;border-top:none;
  width:272pt'>7.地州公司电力系统现状清楚、各季负荷收资完整，项目涉及县市电力系统现状清楚。现状不清或缺项，每处扣1分，总计3分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>3</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade8" onchange="javascript:validateDouble(this,3);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>8.项目涉及县市配电网现状收资完整准确。收资不全扣1分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=68 style='height:51.0pt'>
  <td rowspan=27 height=1152 class=xl73 width=83 style='height:864.0pt;
  border-top:none;width:62pt'>　</td>
  <td rowspan=11 class=xl71 width=165 style='border-top:none;width:124pt'>（三）可研内容完整</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>1.项目所在乡镇电网现状阐述清晰。变电站主变容量、各电压等级进出线情况、各电压等级线路年最大负荷、项目涉及线路、配变、最大负荷、用电类型、供电半径、设备运行情况，用具体数据说明，一项不清扣1分，总计4分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade10" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=119 style='height:89.25pt'>
  <td height=119 class=xl72 width=363 style='height:89.25pt;border-top:none;
  width:272pt'>2.存在的问题。结合运行问题对网架结构进行分析，针对存在设备健康水平、过负荷、超半径供电、卡脖子、迂回供电、供电能力、供电可靠性、供电质量、自动化等方面问题阐述清楚，并延伸至网架分析（负载率、绝缘化率、供电半径、户均容量等），必须用具体数据说明（附照片，不少于6张）。未对网架结构进行分析，扣2分，存在问题阐述不清扣1分，照片每少1张扣1分，总计4分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade11" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=85 style='height:63.75pt'>
  <td height=85 class=xl71 width=363 style='height:63.75pt;border-top:none;
  width:272pt'>3.建设必要性。针对存在的问题，根据配电网规划最终目标网架提出建设必要性，通过新建、改造、转带负荷、调整运行方式等解决问题。不按照规划最终目标网架建设、改造扣3分，不能针对存在的问题提出解决方案，每处扣1分，总计6分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>6</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade12" theme="simple" onchange="javascript:validateDouble(this,6);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=51 style='height:38.25pt'>
  <td height=51 class=xl71 width=363 style='height:38.25pt;border-top:none;
  width:272pt'>4.负荷预测。负荷数据准确，按照10年进行预测，预测方法需根据具体负荷性质确定，结论正确；数据不正确每处扣1分，采用方法不适当扣1分，总计3分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>3</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade13" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=51 style='height:38.25pt'>
  <td height=51 class=xl71 width=363 style='height:38.25pt;border-top:none;
  width:272pt'>5.电量预测。电量数据准确，按照10年进行预测，结论正确；电量预测前4年为实际电量，后10年按年均增长率预测，每少1年扣1分，数据不正确每处扣1分，总计3分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>3</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade14" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=51 style='height:38.25pt'>
  <td height=51 class=xl71 width=363 style='height:38.25pt;border-top:none;
  width:272pt'>6.根据负荷与电量预测，进行导线选型，并进行校核及压降计算。导线选型错误扣2分，没有导线选型计算及校核、压降计算扣2分，总计4分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade15" onchange="javascript:validateDouble(this,4);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=102 style='height:76.5pt'>
  <td height=102 class=xl71 width=363 style='height:76.5pt;border-top:none;
  width:272pt'>7.改造方案。改造方案正确，改造方案阐述清晰，设备安装位置清楚，进行无功补偿计算；负荷转带合理、运行方式优化；涉及区域网架优化或建设环境复杂的项目要提出比选方案。改造方案不正确扣6分，重新编制可研；阐述不清楚扣1分，没有负荷转带数据扣1分，没有比选方案扣2分，总计6分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>6</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade16" theme="simple" onchange="javascript:validateDouble(this,6);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=51 style='height:38.25pt'>
  <td height=51 class=xl71 width=363 style='height:38.25pt;border-top:none;
  width:272pt'>8.各类杆型、设备、铁件、金具、绝缘子是否按照典设配置。抽查一个台区和一个断路器安装材料，与材料明细和典设核对，材料错误、遗漏每处扣1分，总计4分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade17" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=68 style='height:51.0pt'>
  <td height=68 class=xl71 width=363 style='height:51.0pt;border-top:none;
  width:272pt'>9.差异化设计。对多回路同杆架设、交叉、跨越、具有微气象区域、特殊地质、地貌等进行差异化设计，差异化设计对材料进行选型和校核，有差异化设计但没有说明每处扣1分，没有选型和校核每处扣1分，总计3分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>3</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade18" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl71 width=363 style='height:18.0pt;border-top:none;
  width:272pt'>10.节能分析。没有节能分析扣1分，总计1分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>1</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade19" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=68 style='height:51.0pt'>
  <td height=68 class=xl71 width=363 style='height:51.0pt;border-top:none;
  width:272pt'>11.效益分析。没有社会、经济效益、实施效果，达到目的（供电可靠率、节能、户均容量提高、实现井井通电、村村通动力电等），网架改善效果，最终结论，使用具体数据开展分析，每缺一项扣1分，总计5分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>5</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade20" onchange="javascript:validateDouble(this,5);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason20" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark20" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td rowspan=4 height=96 class=xl71 width=165 style='height:72.0pt;border-top:
  none;width:124pt'>（四）附表</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>1.拆旧清册。拆除主要材料数据准确，</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade21" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason21" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark21" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl71 width=363 style='height:18.0pt;border-top:none;
  width:272pt'>2.材料明细表。分类合理、数量准确</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade22" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason22" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark22" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl71 width=363 style='height:18.0pt;border-top:none;
  width:272pt'>3.杆型一览表。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>1</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade23" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason23" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark23" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl71 width=363 style='height:18.0pt;border-top:none;
  width:272pt'>4.设备安装一览表，</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>1</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade24" onchange="javascript:validateDouble(this,1);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason24" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark24" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td rowspan=6 height=114 class=xl71 width=165 style='height:85.5pt;
  border-top:none;width:124pt'>（五）附图</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>1.项目涉及县（市）电网系统图，没有扣1分。</td>
  <td rowspan=6 class=xl73 width=64 style='border-top:none;width:48pt'>3</td>
  <td rowspan=6 class=xl84 width=87 style='border-bottom:.5pt solid black;
  border-top:none;width:65pt'><s:textfield name ="item.grade25" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td rowspan=6 class=xl84 width=122 style='border-bottom:.5pt solid black;
  border-top:none;width:92pt'><s:textarea name ="item.reason25" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td rowspan=6 class=xl84 width=96 style='border-bottom:.5pt solid black;
  border-top:none;width:72pt'>　</td>
  <td rowspan=6 class=xl84 width=124 style='border-bottom:.5pt solid black;
  border-top:none;width:93pt'><s:textarea name ="item.remark25" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td height=19 class=xl71 width=363 style='height:14.25pt;border-top:none;
  width:272pt'>2.项目涉及10千伏线路地理接线图，</td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td height=19 class=xl71 width=363 style='height:14.25pt;border-top:none;
  width:272pt'>3.项目改造单线图，没有扣1分。</td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td height=19 class=xl71 width=363 style='height:14.25pt;border-top:none;
  width:272pt'>4.项目建设区域内配网供电分区图，没有扣1分。</td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td height=19 class=xl71 width=363 style='height:14.25pt;border-top:none;
  width:272pt'>5.项目建设区域配网过渡和目标网架图，没有扣1分。</td>
 </tr>
 <tr height=19 style='height:14.25pt'>
  <td height=19 class=xl71 width=363 style='height:14.25pt;border-top:none;
  width:272pt'>6.网格图，没有扣1分。</td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td rowspan=6 height=204 class=xl91 width=165 style='height:153.0pt;
  border-top:none;width:124pt'>（六）项目需求的应用</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>1.工程中涉及的线路及台区是否全部进行项目需求提报，缺一条或一个台区扣0.5分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade26" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason26" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark26" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>2.工程中的建设改造必要性描述是否与项目需求建议书吻合，缺少的每处扣0.5分，总计1分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>1</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade27" theme="simple" onchange="javascript:validateDouble(this,1);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason27" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark27" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>3.工程中的建设改造内容是否与项目需求建议书吻合，缺少的每处扣0.5分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade28" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason28" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark28" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>4.工程中的建设改造所需主材料和设备是否与项目需求建议书相同，缺少的每处扣0.5分，总计1分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>1</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade29" onchange="javascript:validateDouble(this,1);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason29" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark29" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>5.工程中的概算是否与线路或项目需求建议书大致相同，浮动不超出+20%~-20%，超出浮动每5%扣0.5分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade30" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield>
  </td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason30" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark30" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl71 width=363 style='height:25.5pt;border-top:none;
  width:272pt'>6.工程中的项目路径图、网架拓扑图纸与项目需求提报图纸大致相同，不同之处没处扣0.5分，总计2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade31" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield>
  </td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason31" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark31" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=102 style='height:76.5pt'>
  <td rowspan=2 height=136 class=xl73 width=49 style='height:102.0pt;
  border-top:none;width:37pt'>三</td>
  <td rowspan=2 class=xl73 width=83 style='border-top:none;width:62pt'>技经部分</td>
  <td class=xl66 width=165 style='border-top:none;border-left:none;width:124pt'>（一）概算编制</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>1.按照可研报告、材料明细及图纸编制概算；工程量计算错误每处扣0.5分；2.套取定额不正确，每处扣0.5分；3.严格按照预规取费，执行预规错误，每处扣0.5分；4.材料与设备价格按照最近招标价执行，上下浮动超过5%，每项扣0.5分；7.其他费用严格按照国网公司文件执行，执行错误扣0.5分；共计14分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>14</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade32" onchange="javascript:validateDouble(this,14);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason32" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark32" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl66 width=165 style='height:25.5pt;border-top:none;
  border-left:none;width:124pt'>（二）造价分析</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>数据准确完整，与典型造价的分析对比，分析不完整扣2分，没有分析扣4分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade33" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason33" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark33" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td rowspan=3 height=136 class=xl73 width=49 style='height:102.0pt;
  border-top:none;width:37pt'>四</td>
  <td rowspan=3 class=xl73 width=83 style='border-top:none;width:62pt'>加分项</td>
  <td class=xl66 width=165 style='border-top:none;border-left:none;width:124pt'>（一）创新设计</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>涉及到创新设计的内容进行专题分析论述，经评审专家一致通过，每项加2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade34" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason34" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark34" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=68 style='height:51.0pt'>
  <td height=68 class=xl66 width=165 style='height:51.0pt;border-top:none;
  border-left:none;width:124pt'>（二）采用新设备、新材料应用</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>在遵循典型设计的同时，科学使用环网柜、电缆分接箱、开闭所、开关站等，并使用具体数据进行详细阐述必要性、解决问题、对网架结构的影响等，附相关图纸，能够满足特殊要求的，经评审专家一致通过，每项加2分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>4</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade35" onchange="javascript:validateDouble(this,4);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason35" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark35" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=34 style='height:25.5pt'>
  <td height=34 class=xl66 width=165 style='height:25.5pt;border-top:none;
  border-left:none;width:124pt'>（三）采用新工艺</td>
  <td class=xl71 width=363 style='border-top:none;width:272pt'>在遵循典型设计的同时，采用新工艺，解决施工中的实际问题，每处加1分。</td>
  <td class=xl73 width=64 style='border-top:none;width:48pt'>2</td>
  <td class=xl73 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade36" onchange="javascript:validateDouble(this,2);" theme="simple" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl73 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason36" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl73 width=96 style='border-top:none;border-left:none;width:72pt'>　</td>
  <td class=xl73 width=124 style='border-top:none;border-left:none;width:93pt'><s:textarea name ="item.remark36" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
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
