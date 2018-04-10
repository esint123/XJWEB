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
    <title>产业技改、大修项目可研评审要点细则</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
    <link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeIndustry.css'></link>
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
    <s:form id="form1" name="form1" action="SaveIndustry">
 
<table border=0 cellpadding=0 cellspacing=0 width=1135 style='border-collapse:
 collapse;table-layout:fixed;width:853pt' align="center">
 <col class=xl107 width=56 style='mso-width-source:userset;mso-width-alt:1792;
 width:42pt'>
 <col class=xl107 width=80 style='mso-width-source:userset;mso-width-alt:2560;
 width:60pt'>
 <col class=xl107 width=122 style='mso-width-source:userset;mso-width-alt:3904;
 width:92pt'>
 <col class=xl107 width=292 style='mso-width-source:userset;mso-width-alt:9344;
 width:219pt'>
 <col class=xl107 width=73 style='mso-width-source:userset;mso-width-alt:2336;
 width:55pt'>
 <col class=xl107 width=100 style='mso-width-source:userset;mso-width-alt:3200;
 width:75pt'>
 <col class=xl107 width=117 style='mso-width-source:userset;mso-width-alt:3744;
 width:88pt'>
 <col class=xl107 width=166 style='mso-width-source:userset;mso-width-alt:5312;
 width:125pt'>
 <col class=xl107 width=129 style='mso-width-source:userset;mso-width-alt:4128;
 width:97pt'>
 <tr height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl115 width=1135 style='height:22.5pt;
  width:853pt'>产业技改、大修项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl122 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl116 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl123 style='border-right:.5pt solid black;
  height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl116 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl122 style='height:18.0pt'>报告提交时间</td>
  <td class=xl113 width=292 style='border-top:none;border-left:none;width:219pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl126 width=290 style='border-right:.5pt solid black;
  border-left:none;width:218pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl129 width=295 style='border-right:.5pt solid black;
  border-left:none;width:222pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=92 style='mso-height-source:userset;height:69.0pt'>
  <td colspan=3 height=92 class=xl122 style='height:69.0pt'>项目类别注解</td>
  <td colspan=6 class=xl131 width=877 style='border-right:.5pt solid black;
  border-left:none;width:659pt'>1.产业技改项目:包括项目单位在现有生产、实验、检测设备无法满足规划产能情况下，提出相关的技术改造工程，以及产业基地和商业地产及附属用房的改造项目等。<br>
   
  2.产业大修项目：包括项目单位针对其所属设备全部或大部分部件解体检查和维修，根据设备磨损和老化规律，有重点的检查、修理，按时间间隔确定的预防性检修，生产安全，维修项目等。</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl123 style='border-right:.5pt solid black;
  height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl116 style='border-right:.5pt solid black;border-left:
  none'><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:46.9pt'>
  <td height=62 class=xl108 width=56 style='height:46.9pt;border-top:none;
  width:42pt'>序号</td>
  <td class=xl108 width=80 style='border-top:none;border-left:none;width:60pt'>评审要点</td>
  <td class=xl108 width=122 style='border-top:none;border-left:none;width:92pt'>评审内容</td>
  <td class=xl108 width=292 style='border-top:none;border-left:none;width:219pt'>具体要求</td>
  <td class=xl108 width=73 style='border-top:none;border-left:none;width:55pt'>总分/分项分值
  <br>
    </td>
  <td class=xl112 width=100 style='border-left:none;width:75pt'>打分</td>
  <td class=xl108 width=117 style='border-top:none;border-left:none;width:88pt'>原因说明</td>
  <td class=xl108 width=166 style='border-top:none;border-left:none;width:125pt'>评审依据</td>
  <td class=xl108 width=129 style='border-top:none;border-left:none;width:97pt'>备注</td>
 </tr>
 <tr height=44 style='mso-height-source:userset;height:33.0pt'>
  <td rowspan=6 height=423 class=xl109 width=56 style='height:317.25pt;
  border-top:none;width:42pt'>1</td>
  <td rowspan=6 class=xl119 width=80 style='border-bottom:.5pt solid black;
  border-top:none;width:60pt'>总论</td>
  <td class=xl114 width=122 style='border-top:none;border-left:none;width:92pt'>1.设计依据</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>需提供相关设计依据。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>2</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=68 style='mso-height-source:userset;height:51.0pt'>
  <td height=68 class=xl114 width=122 style='height:51.0pt;border-top:none;
  border-left:none;width:92pt'>2.主要设计原则</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>建设规模、设备、用水、控制、电气、污染物处理等方面阐述项目建设的技术原则。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>4</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=43 style='mso-height-source:userset;height:32.25pt'>
  <td height=43 class=xl114 width=122 style='height:32.25pt;border-top:none;
  border-left:none;width:92pt'>3.设计水平年</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>明确设计水平年。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=100 style='mso-height-source:userset;height:75.0pt'>
  <td height=100 class=xl114 width=122 style='height:75.0pt;border-top:none;
  border-left:none;width:92pt'>4.设计范围及建设规模</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>简述项目的总体规模与主要内容，如建成后生产规模、项目占地面积、建筑面积、主要建筑物、生产线、设备及材料购置安装情况等。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>5</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade4" theme="simple" onchange="javascript:validateDouble(this,5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=112 style='mso-height-source:userset;height:84.0pt'>
  <td height=112 class=xl114 width=122 style='height:84.0pt;border-top:none;
  border-left:none;width:92pt'>5.主要技术经济指标</td>
  <td class=xl111 width=292 style='border-top:none;border-left:none;width:219pt'>列表或用文字说明项目的主要数据及技术经济指标：生产规模、人员、主要设备、占地面积、利用原有建筑面积和生产设备、主要材料消耗、动力消耗、综合能耗、总投资及财务评价指标等。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>4</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade5" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=56 style='mso-height-source:userset;height:42.0pt'>
  <td height=56 class=xl114 width=122 style='height:42.0pt;border-top:none;
  border-left:none;width:92pt'>6.经济分析</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>项目总投资、投资构成、资金来源及效益情况。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade6" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='height:99.75pt'>
  <td rowspan=4 height=589 class=xl109 width=56 style='height:441.75pt;
  border-top:none;width:42pt'>2</td>
  <td rowspan=4 class=xl119 width=80 style='border-bottom:.5pt solid black;
  border-top:none;width:60pt'>项目必要性</td>
  <td class=xl114 width=122 style='border-top:none;border-left:none;width:92pt'>1.工程概况</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>工程项目的全称、拟建地点、建设规模与目标、主要建设条件，主要建设条件包括：市场条件、资源条件、技术条件、资金条件、环境条件、社会条件、施工条件、法律条件，以及外部协作配套条件等。总投资、资金来源及效益情况。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>6</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade7" theme="simple" onchange="javascript:validateDouble(this,6);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl114 width=122 style='height:42.75pt;border-top:none;
  border-left:none;width:92pt'>2.存在主要问题</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>说明与项目有关的生产技术、工艺、设备等方面存在的主要问题和限制因素，以支撑必要性。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>5</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade8" theme="simple" onchange="javascript:validateDouble(this,5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl114 width=122 style='height:42.75pt;border-top:none;
  border-left:none;width:92pt'>3.原因分析</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>说明造成问题的原因（从运行环境、运行时间、设备质量、行业要求、上级要求、技术发展等方面分析）。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>4</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=342 style='height:256.5pt'>
  <td height=342 class=xl114 width=122 style='height:256.5pt;border-top:none;
  border-left:none;width:92pt'>4.必要性</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>（1）结合国家、地区、行业、公司系统及企业自身的发展规划、技术政策、产业政策、产品结构调整发展方向，阐明项目建设的必要性。<br>
   
  （2）根据项目的具体特点，对获得合法利润或投资回报、满足市场需求、增加产量或品种、推进企业技术进步、调整产品结构、增加出口或替代进口、提高产品性能和质量、形成经济规模、利用原有基础条件、降低成本、节约能源、环境保护治理及提高综合效益等方面，说明项目建设的目的和必要性。<br>
    （3）技术改造或大修对象的生产和运行现状和存在的问题，以及存在问题的原因，包括运行环境、运行时间、设备质量、行业要求、技术发展等方面。<br>
    （4）项目技改或大修实施后的效果，对企业影响。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>6</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade10" theme="simple" onchange="javascript:validateDouble(this,6);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=285 style='height:213.75pt'>
  <td rowspan=3 height=347 class=xl109 width=56 style='height:260.25pt;
  border-top:none;width:42pt'>3</td>
  <td rowspan=3 class=xl119 width=80 style='border-bottom:.5pt solid black;
  border-top:none;width:60pt'>方案介绍</td>
  <td class=xl114 width=122 style='border-top:none;border-left:none;width:92pt'>1.技术方案</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>对技术方案的先进性、适用性、可靠性、安全环保性和经济合理性进行论证描述。一般包括技术特点、工艺流程、关键设备结构及性能、产品能耗、安全和环保、配套条件和设施、建设和运营费用、效益等方面。要突出特点，具有针对性。技术方案应包括：<br>
    （1）生产方法（包含原料路线）。<br>
    （2）工艺流程。<br>
    （3）技术特点。<br>
    （4）工艺技术来源（需引进国外技术的，应说明理由）。<br>
    （5）推荐方案的主要工艺（生产装置）流程图、物料平衡图，物料消耗定额表。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>8</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade11" theme="simple" onchange="javascript:validateDouble(this,8);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark11" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl114 width=122 style='height:28.5pt;border-top:none;
  border-left:none;width:92pt'>2.生产过渡方案</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>方案对生产系统有影响时，要描述生产过渡方案。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade12" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark12" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl114 width=122 style='height:18.0pt;border-top:none;
  border-left:none;width:92pt'>3.结论</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>结论。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>5</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade13" theme="simple" onchange="javascript:validateDouble(this,5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark13" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td rowspan=5 height=328 class=xl109 width=56 style='height:246.0pt;
  border-top:none;width:42pt'>4</td>
  <td rowspan=5 class=xl119 width=80 style='border-bottom:.5pt solid black;
  border-top:none;width:60pt'>主要设备材料清表</td>
  <td rowspan=4 class=xl114 width=122 style='border-top:none;width:92pt'>1.编制说明</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>1.编制依据和原则。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>2</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade14" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark14" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl110 width=292 style='height:42.75pt;border-top:none;
  border-left:none;width:219pt'>2.说明材料清册的组成、内容、范围；说明提请上级机关和有关部门注意和明确的问题。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>2</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade15" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark15" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl110 width=292 style='height:42.75pt;border-top:none;
  border-left:none;width:219pt'>3.按分工不属于本单位设计范围的设备材料应予以说明，并标明应参见的设计或资料。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade16" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark16" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=57 style='height:42.75pt'>
  <td height=57 class=xl110 width=292 style='height:42.75pt;border-top:none;
  border-left:none;width:219pt'>4.说明主要设备或材料的选用与国家电网公司物资标准目录的差异及不能选用标准目录物资的原因。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>2</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade17" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark17" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='height:99.75pt'>
  <td height=133 class=xl114 width=122 style='height:99.75pt;border-top:none;
  border-left:none;width:92pt'>2.主要设备材料表</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>主要设备材料表应包括名称、规格、数量等栏目，并说明是否包括运行维护工器具和备品备件，以及是否计入设备材料损耗等。<br>
    各专业分项开列，个别项目的规格和数量允许“估列”，但应在备注栏内说明。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>4</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade18" theme="simple" onchange="javascript:validateDouble(this,4);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark18" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td rowspan=4 height=228 class=xl109 width=56 style='height:171.0pt;
  border-top:none;width:42pt'>5</td>
  <td rowspan=4 class=xl119 width=80 style='border-bottom:.5pt solid black;
  border-top:none;width:60pt'>估算书</td>
  <td class=xl114 width=122 style='border-top:none;border-left:none;width:92pt'>1.概述</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>说明工程概况、工程资金来源、建设场地情况、施工条件、主要设计特点。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade19" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark19" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=114 style='height:85.5pt'>
  <td height=114 class=xl114 width=122 style='height:85.5pt;border-top:none;
  border-left:none;width:92pt'>2.编制原则和依据</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>说明采用的工程量、指标、定额、人工费调整及材机费调整、设备及装置性材料价格、建筑工程材料价格、设备运杂费、编制年价差、特殊项目、建设场地征用及清理费等各种费用的取用原则和调整方法、计算依据。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>5</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade20" theme="simple" onchange="javascript:validateDouble(this,5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason20" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark20" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl114 width=122 style='height:28.5pt;border-top:none;
  border-left:none;width:92pt'>3.投资分析</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>进行技术经济分析，说明工程投资合理性。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade21" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason21" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark21" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl114 width=122 style='height:28.5pt;border-top:none;
  border-left:none;width:92pt'>4.概算表及附件</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>按照行业规定，参照有关建设预算编制与计算标准执行。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>5</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade22" theme="simple" onchange="javascript:validateDouble(this,5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason22" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark22" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=42 style='mso-height-source:userset;height:31.5pt'>
  <td rowspan=4 height=128 class=xl109 width=56 style='height:96.0pt;
  border-top:none;width:42pt'>6</td>
  <td rowspan=4 class=xl119 width=80 style='border-bottom:.5pt solid black;
  border-top:none;width:60pt'>拆除设备技术鉴定及处置建议</td>
  <td class=xl114 width=122 style='border-top:none;border-left:none;width:92pt'>1.处置原则</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>应符合国家电网公司关于拆除设备的技术鉴定、处置等的统一要求。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade23" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason23" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark23" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=38 style='height:28.5pt'>
  <td height=38 class=xl114 width=122 style='height:28.5pt;border-top:none;
  border-left:none;width:92pt'>2.拆除清单及技术鉴定意见</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>根据设备实际情况填写。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>5</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade24" theme="simple" onchange="javascript:validateDouble(this,5);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason24" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark24" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl114 width=122 style='height:18.0pt;border-top:none;
  border-left:none;width:92pt'>3.处置建议</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>根据设备实际情况填写。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>3</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade25" theme="simple" onchange="javascript:validateDouble(this,3);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason25" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark25" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl114 width=122 style='height:18.0pt;border-top:none;
  border-left:none;width:92pt'>4.附件</td>
  <td class=xl110 width=292 style='border-top:none;border-left:none;width:219pt'>技术鉴定意见。</td>
  <td class=xl109 width=73 style='border-top:none;border-left:none;width:55pt'>2</td>
  <td class=xl109 width=100 style='border-top:none;border-left:none;width:75pt'><s:textfield name ="item.grade26" theme="simple" onchange="javascript:validateDouble(this,2);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl109 width=117 style='border-top:none;border-left:none;width:88pt'><s:textarea name ="item.reason26" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl109 width=166 style='border-top:none;border-left:none;width:125pt'>　</td>
  <td class=xl109 width=129 style='border-top:none;border-left:none;width:97pt'><s:textarea name ="item.remark26" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
<tr>
			<td colspan="9">
			<s:hidden  name ="item.id"></s:hidden>
			<s:hidden  name ="item.reviewclass"></s:hidden>
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
 