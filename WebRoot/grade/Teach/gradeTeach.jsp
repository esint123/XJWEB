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

<title>教育培训项目可研评审要点细则</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="<%=path%>/javascript/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href='<%=basePath%>css/grade/gradeTeach.css'></link>
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
<s:form id="form1" name="form1" action="SaveTeach">

<table border=0 cellpadding=0 cellspacing=0 width=1132 style='border-collapse:
 collapse;table-layout:fixed;width:851pt' align="center">
 <col class=xl65 width=35 style='mso-width-source:userset;mso-width-alt:1120;
 width:26pt'>
 <col class=xl65 width=90 style='mso-width-source:userset;mso-width-alt:2880;
 width:68pt'>
 <col class=xl65 width=116 style='mso-width-source:userset;mso-width-alt:3712;
 width:87pt'>
 <col class=xl65 width=326 style='mso-width-source:userset;mso-width-alt:10432;
 width:245pt'>
 <col class=xl65 width=70 style='mso-width-source:userset;mso-width-alt:2240;
 width:53pt'>
 <col class=xl65 width=88 style='mso-width-source:userset;mso-width-alt:2816;
 width:66pt'>
 <col class=xl65 width=124 style='mso-width-source:userset;mso-width-alt:3968;
 width:93pt'>
 <col class=xl65 width=142 style='mso-width-source:userset;mso-width-alt:4544;
 width:107pt'>
 <col class=xl65 width=141 style='mso-width-source:userset;mso-width-alt:4512;
 width:106pt'>
 <tr class=xl65 height=30 style='height:22.5pt'>
  <td colspan=9 height=30 class=xl85 width=1132 style='height:22.5pt;
  width:851pt'>教育培训项目评审要点细则</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl77 style='height:18.0pt'>项目名称</td>
  <td colspan=6 class=xl86 style='border-right:.5pt solid black;border-left:
  none'>11</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl82 style='border-right:.5pt solid black;
  height:18.0pt'>设计单位</td>
  <td colspan=6 class=xl86 style='border-right:.5pt solid black;border-left:
  none'>11</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl77 style='height:18.0pt'>报告提交时间</td>
  <td class=xl71 width=326 style='border-top:none;border-left:none;width:245pt'>11</td>
  <td colspan=3 class=xl72 width=282 style='border-right:.5pt solid black;
  border-left:none;width:212pt'>是否按时提交或收口评审材料</td>
  <td colspan=2 class=xl75 width=283 style='border-right:.5pt solid black;
  border-left:none;width:213pt'>11</td>
 </tr>
 <tr height=39 style='mso-height-source:userset;height:29.25pt'>
  <td colspan=3 height=39 class=xl77 style='height:29.25pt'>项目类别注解</td>
  <td colspan=6 class=xl78 width=891 style='border-left:none;width:670pt'>教育培训项目包括职工教育培训、培训开发项目及教材（课件）开发两个部分。</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=3 height=24 class=xl82 style='border-right:.5pt solid black;
  height:18.0pt'>评审专家</td>
  <td colspan=6 class=xl79 style='border-right:.5pt solid black;border-left:
  none'>　</td>
 </tr>
 <tr height=62 style='mso-height-source:userset;height:46.9pt'>
  <td height=62 class=xl66 width=35 style='height:46.9pt;border-top:none;
  width:26pt'>序号</td>
  <td class=xl66 width=90 style='border-top:none;border-left:none;width:68pt'>评审要点</td>
  <td class=xl66 width=116 style='border-top:none;border-left:none;width:87pt'>评审内容</td>
  <td class=xl66 width=326 style='border-top:none;border-left:none;width:245pt'>具体要求</td>
  <td class=xl66 width=70 style='border-top:none;border-left:none;width:53pt'>总分/分项分值
  <br>
    </td>
  <td class=xl70 width=88 style='border-left:none;width:66pt'>打分</td>
  <td class=xl66 width=124 style='border-top:none;border-left:none;width:93pt'>原因说明</td>
  <td class=xl66 width=142 style='border-top:none;border-left:none;width:107pt'>评审依据</td>
  <td class=xl66 width=141 style='border-top:none;border-left:none;width:106pt'>备注</td>
 </tr>
 <tr height=69 style='mso-height-source:userset;height:51.75pt'>
  <td height=69 class=xl67 width=35 style='height:51.75pt;border-top:none;
  width:26pt'>1</td>
  <td class=xl67 width=90 style='border-top:none;border-left:none;width:68pt'>基本情况</td>
  <td class=xl67 width=116 style='border-top:none;border-left:none;width:87pt'>项目基本情况</td>
  <td class=xl68 width=326 style='border-top:none;border-left:none;width:245pt'>是否按要求填写项目名称、培训对象、培训人数、培训周期。</td>
  <td class=xl67 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl67 width=88 style='border-top:none;border-left:none;width:66pt'>22</td>
  <td class=xl67 width=124 style='border-top:none;border-left:none;width:93pt'>22</td>
  <td class=xl67 width=142 style='border-top:none;border-left:none;width:107pt'>　</td>
  <td class=xl67 width=141 style='border-top:none;border-left:none;width:106pt'>22</td>
 </tr>
 <tr height=92 style='mso-height-source:userset;height:69.0pt'>
  <td height=92 class=xl67 width=35 style='height:69.0pt;border-top:none;
  width:26pt'>2</td>
  <td class=xl67 width=90 style='border-top:none;border-left:none;width:68pt'>背景及必要性分析</td>
  <td class=xl67 width=116 style='border-top:none;border-left:none;width:87pt'>项目背景及必要性分析</td>
  <td class=xl68 width=326 style='border-top:none;border-left:none;width:245pt'>描述项目产生背景、依据和项目开展的必要性。</td>
  <td class=xl67 width=70 style='border-top:none;border-left:none;width:53pt'>20</td>
  <td class=xl67 width=88 style='border-top:none;border-left:none;width:66pt'>22</td>
  <td class=xl67 width=124 style='border-top:none;border-left:none;width:93pt'>22</td>
  <td class=xl67 width=142 style='border-top:none;border-left:none;width:107pt'>　</td>
  <td class=xl67 width=141 style='border-top:none;border-left:none;width:106pt'>22</td>
 </tr>
 <tr height=70 style='mso-height-source:userset;height:52.5pt'>
  <td height=70 class=xl67 width=35 style='height:52.5pt;border-top:none;
  width:26pt'>3</td>
  <td class=xl67 width=90 style='border-top:none;border-left:none;width:68pt'>目标</td>
  <td class=xl67 width=116 style='border-top:none;border-left:none;width:87pt'>预期目标</td>
  <td class=xl69 width=326 style='border-top:none;border-left:none;width:245pt'>分析培训需求，确定培训目标。</td>
  <td class=xl67 width=70 style='border-top:none;border-left:none;width:53pt'>10</td>
  <td class=xl67 width=88 style='border-top:none;border-left:none;width:66pt'>22</td>
  <td class=xl67 width=124 style='border-top:none;border-left:none;width:93pt'>22</td>
  <td class=xl67 width=142 style='border-top:none;border-left:none;width:107pt'>　</td>
  <td class=xl67 width=141 style='border-top:none;border-left:none;width:106pt'>22</td>
 </tr>
 <tr height=87 style='mso-height-source:userset;height:65.25pt'>
  <td height=87 class=xl67 width=35 style='height:65.25pt;border-top:none;
  width:26pt'>4</td>
  <td class=xl67 width=90 style='border-top:none;border-left:none;width:68pt'>培训（项目）方案</td>
  <td class=xl67 width=116 style='border-top:none;border-left:none;width:87pt'>培训（项目）方案</td>
  <td class=xl68 width=326 style='border-top:none;border-left:none;width:245pt'>描述培训内容、培训形式、场地材料、考核方式、师资配备、组织管理等方面的要求（描述建设团队、技术方案等方面的要求）。</td>
  <td class=xl67 width=70 style='border-top:none;border-left:none;width:53pt'>20</td>
  <td class=xl67 width=88 style='border-top:none;border-left:none;width:66pt'>22</td>
  <td class=xl67 width=124 style='border-top:none;border-left:none;width:93pt'>22</td>
  <td class=xl67 width=142 style='border-top:none;border-left:none;width:107pt'>　</td>
  <td class=xl67 width=141 style='border-top:none;border-left:none;width:106pt'>22</td>
 </tr>
 <tr height=66 style='mso-height-source:userset;height:50.1pt'>
  <td height=66 class=xl67 width=35 style='height:50.1pt;border-top:none;
  width:26pt'>5</td>
  <td class=xl67 width=90 style='border-top:none;border-left:none;width:68pt'>培训（建设）计划</td>
  <td class=xl67 width=116 style='border-top:none;border-left:none;width:87pt'>培训（建设）计划</td>
  <td class=xl69 width=326 style='border-top:none;border-left:none;width:245pt'>培训实施的时间、地点安排等。</td>
  <td class=xl67 width=70 style='border-top:none;border-left:none;width:53pt'>20</td>
  <td class=xl67 width=88 style='border-top:none;border-left:none;width:66pt'>22</td>
  <td class=xl67 width=124 style='border-top:none;border-left:none;width:93pt'>22</td>
  <td class=xl67 width=142 style='border-top:none;border-left:none;width:107pt'>　</td>
  <td class=xl67 width=141 style='border-top:none;border-left:none;width:106pt'>22</td>
 </tr>
 <tr height=89 style='mso-height-source:userset;height:66.75pt'>
  <td height=89 class=xl67 width=35 style='height:66.75pt;border-top:none;
  width:26pt'>6</td>
  <td class=xl67 width=90 style='border-top:none;border-left:none;width:68pt'>经费预算</td>
  <td class=xl67 width=116 style='border-top:none;border-left:none;width:87pt'>经费预算</td>
  <td class=xl69 width=326 style='border-top:none;border-left:none;width:245pt'>描述培训费用，包括：教师酬金、材料费、场租费、教材费、其他费用等，说明经费来源渠道、费用类型等。</td>
  <td class=xl67 width=70 style='border-top:none;border-left:none;width:53pt'>20</td>
  <td class=xl67 width=88 style='border-top:none;border-left:none;width:66pt'>22</td>
  <td class=xl67 width=124 style='border-top:none;border-left:none;width:93pt'>22</td>
  <td class=xl67 width=142 style='border-top:none;border-left:none;width:107pt'>　</td>
  <td class=xl67 width=141 style='border-top:none;border-left:none;width:106pt'>22</td>
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

