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

<title>非生产性技改项目可研评审要点细则</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeTechnical.css'></link>
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
  <s:form id="form1" name="form1" action="SaveTechnical">
<table border=0 cellpadding=0 cellspacing=0 width=1099 style='border-collapse:
 collapse;table-layout:fixed;width:825pt' align="center">
 <col class=xl147 width=50 style='mso-width-source:userset;mso-width-alt:1600;
 width:38pt'>
 <col class=xl147 width=75 style='mso-width-source:userset;mso-width-alt:2400;
 width:56pt'>
 <col class=xl147 width=89 style='mso-width-source:userset;mso-width-alt:2848;
 width:67pt'>
 <col class=xl147 width=292 style='mso-width-source:userset;mso-width-alt:9344;
 width:219pt'>
 <col class=xl147 width=83 style='mso-width-source:userset;mso-width-alt:2656;
 width:62pt'>
 <col class=xl147 width=105 style='mso-width-source:userset;mso-width-alt:3360;
 width:79pt'>
 <col class=xl147 width=128 style='mso-width-source:userset;mso-width-alt:4096;
 width:96pt'>
 <col class=xl147 width=152 style='mso-width-source:userset;mso-width-alt:4864;
 width:114pt'>
 <col class=xl147 width=125 style='mso-width-source:userset;mso-width-alt:4000;
 width:94pt'>
 <tr class=xl147 height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl153 width=1099 style='height:22.5pt;
  width:825pt'>非生产性技改项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl159 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl168 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl160 style='border-right:.5pt solid black;
  height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl168 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl159 style='height:18.0pt'>报告提交时间</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl154 width=316 style='border-right:.5pt solid black;
  border-left:none;width:237pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl157 width=277 style='border-right:.5pt solid black;
  border-left:none;width:208pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=81 style='mso-height-source:userset;height:60.75pt'>
  <td colspan=3 height=81 class=xl159 style='height:60.75pt'>项目类别注解</td>
  <td colspan=6 class=xl161 width=885 style='width:664pt'>是指各级单位非生产性房屋（办公用房、会议中心、教育培训、医院、独立车库）及其配套设备设施、教育培训的实训设备设施改造项目。</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl160 style='height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl167><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:46.9pt'>
  <td height=62 class=xl148 width=50 style='height:46.9pt;border-top:none;
  width:38pt'>序号</td>
  <td colspan=2 class=xl164 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>评审内容</td>
  <td class=xl148 width=292 style='border-top:none;border-left:none;width:219pt'>评审要点</td>
  <td class=xl148 width=83 style='border-top:none;border-left:none;width:62pt'>总分/分项分值 </td>
  <td class=xl151 width=105 style='border-left:none;width:79pt'>打分</td>
  <td class=xl148 width=128 style='border-top:none;border-left:none;width:96pt'>原因说明</td>
  <td class=xl148 width=152 style='border-top:none;border-left:none;width:114pt'>评审依据</td>
  <td class=xl148 width=125 style='border-top:none;border-left:none;width:94pt'>备注</td>
 </tr>
 <tr height=66 style='mso-height-source:userset;height:50.1pt'>
  <td height=66 class=xl149 width=50 style='height:50.1pt;border-top:none;
  width:38pt'>1</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>依据性文件</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>《中央国家机关办公用房维修标准》（国管房地[2004]85号）文件；<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=89 style='mso-height-source:userset;height:66.95pt'>
  <td height=89 class=xl149 width=50 style='height:66.95pt;border-top:none;
  width:38pt'>2</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>　</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>《国家电网公司非生产性技改、大修项目管理办法》（国家电网企管〔2014〕1210号）编制。文件进行评审。<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=133 style='mso-height-source:userset;height:99.75pt'>
  <td height=133 class=xl149 width=50 style='height:99.75pt;border-top:none;
  width:38pt'>3</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>评审原则</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>坚持确保安全、勤俭节约的原则，以消除安全隐患、恢复和完善使用功能为重点。主要审核项目的必要性、可行性和估算金额。</td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=113 style='mso-height-source:userset;height:84.75pt'>
  <td height=113 class=xl149 width=50 style='height:84.75pt;border-top:none;
  width:38pt'>4</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>审核项目是否属于非生产性技改范围</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>改造的房屋范围：<br>
    办公用房、会议中心、教育培训、医院、独立车库及其配套设备设施、教育培训的实训设备设施改造。<br>
    <span style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade4" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=148 style='mso-height-source:userset;height:111.0pt'>
  <td height=148 class=xl149 width=50 style='height:111.0pt;border-top:none;
  width:38pt'>5</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>　</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>改造的分系统范围：<br>
    房屋结构分系统和设备设施的给水排水、 供热采暖、 电气、 电梯、 建筑智能化分系统改造。</td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade5" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=99 style='mso-height-source:userset;height:74.25pt'>
  <td height=99 class=xl149 width=50 style='height:74.25pt;border-top:none;
  width:38pt'>6</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>核实项目改造的必要性</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>房屋结构分系统改造：一般应提供有鉴定资质的咨询单位出具的房屋安全性报告，有相应照片等。</td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade6" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=236 style='mso-height-source:userset;height:177.0pt'>
  <td height=236 class=xl149 width=50 style='height:177.0pt;border-top:none;
  width:38pt'>7</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>　</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>给水排水、
  供热采暖、 电气、 电梯、 建筑智能化分系统改造：<br>
   
  应根据《中央国家机关办公用房维修标准》（国管房地[2004]85号）文件规定的相应分系统设备、设施的使用年限及项目实际情况综合确定其必要性。例如：（国管房地[2004]85号）文件规定，当建筑物内仅装设一部电梯，且使用时间已达15年，可申请报废。据此并结合该项目电梯的使用情况及存在的问题，审核更换电梯的必要性．</td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade7" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=99 style='mso-height-source:userset;height:74.25pt'>
  <td height=99 class=xl149 width=50 style='height:74.25pt;border-top:none;
  width:38pt'>8</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>核实项目建设的可行性<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>核实项目的实施对本项目使用的影响，是否具有可行性。<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade8" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=82 style='mso-height-source:userset;height:61.5pt'>
  <td height=82 class=xl149 width=50 style='height:61.5pt;border-top:none;
  width:38pt'>9</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>检查可研报告的完整性<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>评审时应检查文件是否完整，图纸是否齐全。如不满足要求，应按要求进行完善。<span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=84 style='mso-height-source:userset;height:63.0pt'>
  <td height=84 class=xl149 width=50 style='height:63.0pt;border-top:none;
  width:38pt'>10</td>
  <td colspan=2 class=xl162 width=164 style='border-right:.5pt solid black;
  border-left:none;width:123pt'>其他</td>
  <td class=xl152 width=292 style='border-top:none;border-left:none;width:219pt'>　</td>
  <td class=xl149 width=83 style='border-top:none;border-left:none;width:62pt'>10</td>
  <td class=xl149 width=105 style='border-top:none;border-left:none;width:79pt'><s:textfield name ="item.grade10" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=128 style='border-top:none;border-left:none;width:96pt'><s:textarea name ="item.reason10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=152 style='border-top:none;border-left:none;width:114pt'>　</td>
  <td class=xl149 width=125 style='border-top:none;border-left:none;width:94pt'><s:textarea name ="item.remark10" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
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

