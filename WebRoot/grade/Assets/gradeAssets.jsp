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

<title>固定资产零星购置项目可研评审要点细则</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeAssets.css'></link>
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
<s:form id="form1" name="form1" action="SaveAssets">

<table border=0 cellpadding=0 cellspacing=0 width=1111 style='border-collapse:
 collapse;table-layout:fixed;width:836pt' align="center">
 <col class=xl147 width=46 style='mso-width-source:userset;mso-width-alt:1472;
 width:35pt'>
 <col class=xl147 width=86 style='mso-width-source:userset;mso-width-alt:2752;
 width:65pt'>
 <col class=xl147 width=105 style='mso-width-source:userset;mso-width-alt:3360;
 width:79pt'>
 <col class=xl147 width=292 style='mso-width-source:userset;mso-width-alt:9344;
 width:219pt'>
 <col class=xl147 width=70 style='mso-width-source:userset;mso-width-alt:2240;
 width:53pt'>
 <col class=xl147 width=87 style='mso-width-source:userset;mso-width-alt:2784;
 width:65pt'>
 <col class=xl147 width=134 style='mso-width-source:userset;mso-width-alt:4288;
 width:101pt'>
 <col class=xl147 width=145 style='mso-width-source:userset;mso-width-alt:4640;
 width:109pt'>
 <col class=xl147 width=146 style='mso-width-source:userset;mso-width-alt:4672;
 width:110pt'>
 <tr height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl166 width=1111 style='height:22.5pt;
  width:836pt'>固定资产零星购置项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl157 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl158 style='border-right:.5pt solid black'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl154 style='height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl158 style='border-right:.5pt solid black'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl157 style='height:18.0pt'>报告提交时间</td>
  <td class=xl153 width=292 style='border-top:none;width:219pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl161 width=291 style='border-right:.5pt solid black;
  border-left:none;width:219pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl164 width=291 style='border-right:.5pt solid black;
  border-left:none;width:219pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=158 style='mso-height-source:userset;height:118.5pt'>
  <td colspan=3 height=158 class=xl157 style='height:118.5pt'>项目类别注解</td>
  <td colspan=6 class=xl167 width=874 style='width:657pt'>交通运输车辆：包括公务车辆、生产服务车辆（含生产管理车辆、生产普通车辆、生产特种车辆、产业类服务车辆）和其他特种运输(含船只等)设备。<br>
    生产管理用工器具：包括制造、检修维护设备和生产、安全与应急工器具等。<br>
    仪器仪表及测试设备：包括发电、输电、变电、配电、营销、自动化控制等专业测试设备、仪器仪表等。<br>
   
  办公及辅助设备：包括个人办公用电子计算机（台式机、笔记本电脑等），打印、复印、扫描、传真等办公设备，印刷机、电动切纸机、电动订书机等印刷设备，摄录及图像编辑设备，通信设备等。<br>
    其他：包括为生产生活服务的其他零购设备等。<br>
    </td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl154 style='height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl156><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:46.9pt'>
  <td height=62 class=xl148 width=46 style='height:46.9pt;border-top:none;
  width:35pt'>序号</td>
  <td class=xl148 width=86 style='border-top:none;border-left:none;width:65pt'>评审要点</td>
  <td class=xl148 width=105 style='border-top:none;border-left:none;width:79pt'>评审内容</td>
  <td class=xl148 width=292 style='border-top:none;border-left:none;width:219pt'>评审要点</td>
  <td class=xl148 width=70 style='border-top:none;border-left:none;width:53pt'>总分/分项分值
  <br>
    </td>
  <td class=xl152 width=87 style='border-left:none;width:65pt'>打分</td>
  <td class=xl148 width=134 style='border-top:none;border-left:none;width:101pt'>原因说明</td>
  <td class=xl148 width=145 style='border-top:none;border-left:none;width:109pt'>评审依据</td>
  <td class=xl148 width=146 style='border-top:none;border-left:none;width:110pt'>备注</td>
 </tr>
 <tr height=61 style='mso-height-source:userset;height:45.95pt'>
  <td rowspan=2 height=102 class=xl149 width=46 style='height:76.9pt;
  border-top:none;width:35pt'>1</td>
  <td rowspan=2 class=xl149 width=86 style='border-top:none;width:65pt'>项目概况</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'>资产性质</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>明确资产属于公司总部/公司分部/省级公司/直属单位/直管/控股/代管</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=41 style='mso-height-source:userset;height:30.95pt'>
  <td height=41 class=xl149 width=105 style='height:30.95pt;border-top:none;
  border-left:none;width:79pt'>购置年度</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>明确项目在何年进行购置。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=65 style='mso-height-source:userset;height:48.95pt'>
  <td rowspan=3 height=137 class=xl149 width=46 style='height:104.15pt;
  border-top:none;width:35pt'>2</td>
  <td rowspan=3 class=xl149 width=86 style='border-top:none;width:65pt'>项目必要性</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'>目前存量情况</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>1.对拟零购项目现有存量数目、状况进行论述。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=42 style='mso-height-source:userset;height:32.1pt'>
  <td height=42 class=xl149 width=105 style='height:32.1pt;border-top:none;
  border-left:none;width:79pt'>存在问题</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>2.论述目前存在的问题，对不利于工作开展的情况。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade4" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=30 style='mso-height-source:userset;height:23.1pt'>
  <td height=30 class=xl149 width=105 style='height:23.1pt;border-top:none;
  border-left:none;width:79pt'>配置必要性</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>3.对项目的配置必要性进行具体论述。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade5" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=56 style='mso-height-source:userset;height:42.0pt'>
  <td rowspan=3 height=186 class=xl149 width=46 style='height:140.1pt;
  border-top:none;width:35pt'>3</td>
  <td rowspan=3 class=xl149 width=86 style='border-top:none;width:65pt'>项目方案</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'>配置方案</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>包含设备选型、实施时间等</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade6" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=88 style='mso-height-source:userset;height:66.0pt'>
  <td height=88 class=xl149 width=105 style='height:66.0pt;border-top:none;
  border-left:none;width:79pt'>配置标准</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>项目应具备的主要功能，依据相关标准及条文。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade7" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=42 style='mso-height-source:userset;height:32.1pt'>
  <td height=42 class=xl149 width=105 style='height:32.1pt;border-top:none;
  border-left:none;width:79pt'>废旧资产处置建议</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>对废旧资产的处置建议进行论述，附技术鉴定意见。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade8" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=61 style='mso-height-source:userset;height:45.95pt'>
  <td height=61 class=xl149 width=46 style='height:45.95pt;border-top:none;
  width:35pt'>4</td>
  <td class=xl149 width=86 style='border-top:none;border-left:none;width:65pt'>项目投资</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'>项目投资（万元）</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>项目投资</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=64 style='mso-height-source:userset;height:48.0pt'>
  <td height=64 class=xl149 width=46 style='height:48.0pt;border-top:none;
  width:35pt'>5</td>
  <td class=xl149 width=86 style='border-top:none;border-left:none;width:65pt'>效益分析</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'>效益分析</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>项目购置后具备的效益，对工作方面有何种提升、优化。</td>
  <td class=xl149 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl149 width=87 style='border-top:none;border-left:none;width:65pt'><s:textfield name ="item.grade10" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=134 style='border-top:none;border-left:none;width:101pt'><s:textarea name ="item.reason10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=145 style='border-top:none;border-left:none;width:109pt'>　</td>
  <td class=xl149 width=146 style='border-top:none;border-left:none;width:110pt'><s:textarea name ="item.remark10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
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

