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
    <title>非生产性大修项目可研评审要点细则</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
    <link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeOverhaul.css'></link>
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
  <s:form id="form1" name="form1" action="SaveOverhaul">
 
<table border=0 cellpadding=0 cellspacing=0 width=1061 style='border-collapse:
 collapse;table-layout:fixed;width:797pt' align="center">
 <col class=xl147 width=49 style='mso-width-source:userset;mso-width-alt:1568;
 width:37pt'>
 <col class=xl147 width=82 style='mso-width-source:userset;mso-width-alt:2624;
 width:62pt'>
 <col class=xl147 width=89 style='mso-width-source:userset;mso-width-alt:2848;
 width:67pt'>
 <col class=xl147 width=292 style='mso-width-source:userset;mso-width-alt:9344;
 width:219pt'>
 <col class=xl147 width=72 style='mso-width-source:userset;mso-width-alt:2304;
 width:54pt'>
 <col class=xl147 width=79 style='mso-width-source:userset;mso-width-alt:2528;
 width:59pt'>
 <col class=xl147 width=122 style='mso-width-source:userset;mso-width-alt:3904;
 width:92pt'>
 <col class=xl147 width=155 style='mso-width-source:userset;mso-width-alt:4960;
 width:116pt'>
 <col class=xl147 width=121 style='mso-width-source:userset;mso-width-alt:3872;
 width:91pt'>
 <tr height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl168 width=1061 style='height:22.5pt;
  width:797pt'>非生产性大修项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl154 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl164 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewname" readonly="true" theme="simple" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl155 style='border-right:.5pt solid black;
  height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl164 style='border-right:.5pt solid black;border-left:
  none'><s:textfield name ="item.reviewunit" theme="simple" readonly="true" cssClass="BorderTextInput" size="60"></s:textfield></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl154 style='height:18.0pt'>报告提交时间</td>
  <td class=xl153 width=292 style='border-top:none;border-left:none;width:219pt'><s:textfield name ="item.reviewtime" readonly="true" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
  <td colspan=3 class=xl159 width=273 style='border-right:.5pt solid black;
  border-left:none;width:205pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl162 width=276 style='border-right:.5pt solid black;
  border-left:none;width:207pt'><s:textfield name ="item.reviewontime" theme="simple" readonly="true" cssClass="BorderTextInput" size="10"></s:textfield></td>
 </tr>
 <tr height=84 style='mso-height-source:userset;height:63.0pt'>
  <td colspan=3 height=84 class=xl154 style='height:63.0pt'>项目类别注解</td>
  <td colspan=6 class=xl156 width=841 style='width:631pt'>非生产性大修项目是指各级单位非生产性房屋（办公用房、会议中心、教育培训、医院、独立车库）及其配套设备设施、教育培训的实训设备设施维修项目。</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl155 style='height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl158><s:textfield id="reviewexpert" name ="item.reviewexpert" theme="simple" cssClass="BorderTextInput" size="30"></s:textfield></td>
 </tr>
 <tr height=71 style='mso-height-source:userset;height:53.25pt'>
  <td height=71 class=xl148 width=49 style='height:53.25pt;border-top:none;
  width:37pt'>序号</td>
  <td colspan=2 class=xl173 width=171 style='border-right:.5pt solid black;
  border-left:none;width:129pt'>评审内容</td>
  <td class=xl148 width=292 style='border-top:none;border-left:none;width:219pt'>评审要点</td>
  <td class=xl148 width=72 style='border-top:none;border-left:none;width:54pt'>总分/分项分值
  <br>
    </td>
  <td class=xl152 width=79 style='border-left:none;width:59pt'>打分</td>
  <td class=xl148 width=122 style='border-top:none;border-left:none;width:92pt'>原因说明</td>
  <td class=xl148 width=155 style='border-top:none;border-left:none;width:116pt'>评审依据</td>
  <td class=xl148 width=121 style='border-top:none;border-left:none;width:91pt'>备注</td>
 </tr>
 <tr height=84 style='mso-height-source:userset;height:63.0pt'>
  <td height=84 class=xl149 width=49 style='height:63.0pt;border-top:none;
  width:37pt'>1</td>
  <td colspan=2 rowspan=2 class=xl169 width=171 style='border-right:.5pt solid black;
  border-bottom:.5pt solid black;width:129pt'>依据性文件</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>《中央国家机关办公用房维修标准》（国管房地[2004]85号）文件；</td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade1" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark1" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=96 style='mso-height-source:userset;height:72.0pt'>
  <td height=96 class=xl149 width=49 style='height:72.0pt;border-top:none;
  width:37pt'>2</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>《国家电网公司非生产性技改、大修项目管理办法》（国家电网企管〔2014〕1210号）编制。文件进行评审。</td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade2" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark2" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=119 style='mso-height-source:userset;height:89.25pt'>
  <td height=119 class=xl149 width=49 style='height:89.25pt;border-top:none;
  width:37pt'>3</td>
  <td colspan=2 class=xl149 width=171 style='border-left:none;width:129pt'>评审原则</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>坚持确保安全、勤俭节约的原则，以消除安全隐患、恢复和完善使用功能为重点，严控装修装饰项目。主要审核项目的必要性、可行性和估算金额。</td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade3" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark3" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=102 style='mso-height-source:userset;height:76.5pt'>
  <td height=102 class=xl149 width=49 style='height:76.5pt;border-top:none;
  width:37pt'>4</td>
  <td colspan=2 rowspan=2 class=xl149 width=171 style='width:129pt'>审核项目是否属于非生产性大修范围</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>大修的房屋范围：　<br>
    办公用房、会议中心、教育培训、医院、独立车库及其配套设备设施、教育培训的实训设备设施维修。</td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade4" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark4" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=152 style='mso-height-source:userset;height:114.0pt'>
  <td height=152 class=xl149 width=49 style='height:114.0pt;border-top:none;
  width:37pt'>5</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>大修的分系统范围<br>
    对非生产性房屋的围护（ 含室外）、 装饰装修分系统和设备设施的给水排水、 供热采暖、 空调通风、 电气、 电梯、
  建筑智能化分系统进行维修。<br>
    </td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade5" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark5" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=213 style='mso-height-source:userset;height:159.95pt'>
  <td height=213 class=xl149 width=49 style='height:159.95pt;border-top:none;
  width:37pt'>6</td>
  <td colspan=2 class=xl149 width=171 style='border-left:none;width:129pt'>核实项目大修的必要性</td>
  <td class=xl150 width=292 style='border-top:none;border-left:none;width:219pt'>根据《中央国家机关办公用房维修标准》（国管房地[2004]85号）文件规定的相应分系统设备、设施的使用年限及项目实际使用情况，综合确定其必要性。<br>
    <span style='mso-spacerun:yes'>&nbsp;
  </span>例如：（国管房地[2004]85号）文件规定，外门窗工程使用年限6年，内门窗工程使用年限12年，可据此并结合实际项目进行核实门窗是否需要维修或更换。<br>
    </td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade6" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark6" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=92 style='mso-height-source:userset;height:69.0pt'>
  <td height=92 class=xl149 width=49 style='height:69.0pt;border-top:none;
  width:37pt'>7</td>
  <td colspan=2 class=xl149 width=171 style='border-left:none;width:129pt'>核实项目建设的可行性</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>核实项目的实施对该房屋或邻近房屋使用的影响，是否具有可行性。</td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade7" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark7" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=99 style='mso-height-source:userset;height:74.25pt'>
  <td height=99 class=xl149 width=49 style='height:74.25pt;border-top:none;
  width:37pt'>8</td>
  <td colspan=2 class=xl149 width=171 style='border-left:none;width:129pt'>检查可研报告的完整性</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>评审时应检查文件是否完整，图纸是否齐全。如不满足要求，应按要求进行完善。<br>
    </td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>10</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade8" theme="simple" onchange="javascript:validateDouble(this,10);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark8" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
 </tr>
 <tr height=26 style='mso-height-source:userset;height:20.1pt'>
  <td height=26 class=xl149 width=49 style='height:50.1pt;border-top:none;
  width:37pt'>9</td>
  <td colspan=2 class=xl149 width=171 style='border-left:none;width:129pt'>其他</td>
  <td class=xl151 width=292 style='border-top:none;border-left:none;width:219pt'>包括投资明细表及附图等。</td>
  <td class=xl149 width=72 style='border-top:none;border-left:none;width:54pt'>20</td>
  <td class=xl149 width=79 style='border-top:none;border-left:none;width:59pt'><s:textfield name ="item.grade9" theme="simple" onchange="javascript:validateDouble(this,20);" cssClass="BorderTextInput" size="7"></s:textfield></td>
  <td class=xl149 width=122 style='border-top:none;border-left:none;width:92pt'><s:textarea name ="item.reason9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
  <td class=xl149 width=155 style='border-top:none;border-left:none;width:116pt'>　</td>
  <td class=xl149 width=121 style='border-top:none;border-left:none;width:91pt'><s:textarea name ="item.remark9" theme="simple" cssClass="BorderTextInput" cssStyle="width:110px;height:45px"></s:textarea></td>
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
