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
    <title>10(20、6)kV电网新建工程表(编辑)</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href='<%=basePath%>css/pagination.css'></link>
    <link rel="stylesheet" type="text/css" href='<%=basePath%>css/normal.css'></link>
    <script type="text/javascript">
    	function jspclose()
    	{
			window.close();
			window.opener.InitData();
		}
	    function jspSubmit()
    	{
    		var submit = document.getElementById('btnSubmit');
			submit.click();
		}
    </script>
  </head>
  
  <body>
  	<s:form id="form1" name="form1" action="SaveNew10">
<div id=mydiv style="display:block; overflow-y: hidden ;">
			<table id="productTable" width="4600px" border="0" cellpadding="0"
				cellspacing="1" align="center" class="PagerTable">
				<tr>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">行政区划</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"><font color="#1D6597">供电区域分类</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">所属企业</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">责任部门</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">项目类别</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">工程名称</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">是否土建</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">电压等级(千伏)</font>
					</a>
					</th>
					<th class="tdDropTitle" colspan="5" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">中压线路</font> </a>
					</th>
					<th class="tdDropTitle" colspan="9"><a style="cursor: pointer;">
							<font color="#1D6597">中压开关</font> </a>
					</th>
					<th class="tdDropTitle" colspan="12"><a
						style="cursor: pointer;"> <font color="#1D6597">中压配电</font> </a>
					</th>
					<th class="tdDropTitle" colspan="6"><a style="cursor: pointer;">
							<font color="#1D6597">低压网配套</font> </a>
					</th>
					<th class="tdDropTitle" colspan="3"><a style="cursor: pointer;">
							<font color="#1D6597">户表</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">总投资(万元)</font>
					</a></th>
					<th class="tdDropTitle" colspan="7"><a style="cursor: pointer;">
							<font color="#1D6597">资金来源</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">投运时间(年)</font>
					</a></th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">工程属性</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">是否农网项目</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">农网建设性质1</font>
					</a></th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">农网建设性质2</font>
					</a></th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">农网建设性质3</font>
					</a></th>
					<th class="tdDropTitle" rowspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">工程目的</font> </a>
					</th>
					<th class="tdDropTitle" colspan="6" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">所属阶段</font> </a>
					</th>
				</tr>
				<tr>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">架空长度(千米)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">电缆长度(千米)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">供电半径(千米)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">无功补偿容量(千乏)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">中压线路投资(万元)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">开闭所(座)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">环网柜</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">环网柜</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">环网柜</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">柱上开关</font> </a>
					</th>
	
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">柱上开关</font> </a>
					</th>
	
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">柱上开关</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">电缆分支箱(座)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">中压开关投资(万元)</font>
					</a>
					</th>
					<th class="tdDropTitle" colspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配电室</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">箱变</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">箱变</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">箱变</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">柱上变</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">柱上变</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">其中：非晶合金配变</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">其中：非晶合金配变</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">无功补偿容量(千乏)</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">中压配变投资(万元)</font>
					</a>
					</th>
					<th class="tdDropTitle" colspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">架空线路</font> </a>
					</th>
					<th class="tdDropTitle" colspan="3" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">电缆</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">户表(户)</font> </a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">接户线(千米)</font>
					</a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">户表投资(万元)</font>
					</a>
					</th>
					<th class="tdDropTitle" colspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">国家电网公司投资</font>
					</a>
					</th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">县级供电企业自筹(%)</font>
					</a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">用户投资(%)</font>
					</a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">小区配套费(%)</font>
					</a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">政府垫资(%)</font>
					</a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">其他(%)</font> </a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">规划</font> </a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">储备</font> </a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">可研</font> </a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">投资计划</font> </a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">初设</font> </a></th>
					<th class="tdDropTitle" rowspan="2" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">施工图</font> </a></th>
				</tr>
				<tr>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">总数(座)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">其中：分段环网柜(座)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">联络环网柜(座)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">总数(台)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">其中：分段开关(台)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">联络开关(台)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">座数(座)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变台数(台)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变容量(千伏安)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">座数(座)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变台数(台)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变容量(千伏安)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">台数(台)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变容量(千伏安)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变台数(台)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">配变容量(千伏安)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">条数(条)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">长度(千米)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">投资(万元)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">条数(条)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">长度(千米)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">投资(万元)</font> </a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">中央计划(%)</font>
					</a>
					</th>
					<th class="tdDropTitle" width="60px"><a
						style="cursor: pointer;"> <font color="#1D6597">公司自筹(%)</font>
					</a>
					</th>
				</tr>
				
				<tr>
				   <td>
				   	<s:textfield name ="item.FA" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FB" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FC" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FD" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FE" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FF" theme="simple" size="50" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FG" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
					   <td>
				   	<s:textfield name ="item.FH" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FI" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FJ" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FK" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FL" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FM" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FN" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>		
				   
				   <td>
				   	<s:textfield name ="item.FO" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FP" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FQ" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FR" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FS" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FT" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FU" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
					   <td>
				   	<s:textfield name ="item.FV" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FW" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FX" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FY" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FZ" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   
				   <td>
				   	<s:textfield name ="item.FAa" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAb" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAc" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FAd" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAe" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAf" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FAg" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
					   <td>
				   	<s:textfield name ="item.FAh" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAi" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAj" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FAk" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAl" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAm" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FAn" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>		
				   
				   <td>
				   	<s:textfield name ="item.FAo" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAp" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAq" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FAr" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAs" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAt" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FAu" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
					   <td>
				   	<s:textfield name ="item.FAv" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAw" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAx" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FAy" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FAz" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>		  
				   
				   				   <td>
				   	<s:textfield name ="item.FBa" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBb" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBc" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FBd" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBe" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBf" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	 <s:textfield name ="item.FBg" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
					   <td>
				   	<s:textfield name ="item.FBh" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBi" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBj" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>	
				   <td>
				   	<s:textfield name ="item.FBk" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FBl" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   
				</tr>
				<tr>
					<s:hidden  name ="item.id"></s:hidden>
					<s:hidden  name ="item.treeid"></s:hidden>
					<s:hidden  name ="item.FBm"></s:hidden>
					<s:hidden  name ="item.FBn"></s:hidden>
					<s:hidden  name ="item.FBo"></s:hidden>
					<s:hidden  name ="item.FBp"></s:hidden>
					<s:hidden  name ="item.FBq"></s:hidden>
					<s:hidden  name ="item.FBr"></s:hidden>
					<s:hidden  name ="item.FBs"></s:hidden>
					<s:hidden  name ="item.FBt"></s:hidden>
					<s:hidden  name ="item.FBu"></s:hidden>
					<s:hidden  name ="item.FBv"></s:hidden>
					<s:hidden  name ="item.FBw"></s:hidden>
					<s:hidden  name ="item.FBx"></s:hidden>
					<s:hidden  name ="item.FBy"></s:hidden>
					<s:hidden  name ="item.FBz"></s:hidden>
					<s:hidden  name ="item.FCa"></s:hidden>
					<s:hidden  name ="item.FCb"></s:hidden>
					<s:hidden  name ="item.FCc"></s:hidden>
					<s:hidden  name ="item.FCd"></s:hidden>
					<s:hidden  name ="item.Stage"></s:hidden>
					<td colspan="64">
						<div style="text-align: center;">
							<br><br><br><br> <input type="submit" id="btnSubmit" value="保存" onclick="javascript:jspSubmit()" class="btn" /> 
							<input type="button" value="关闭" onclick="javascript:jspclose()"
								class="btn" />
						</div></td>
				</tr>
			</table>
	
</div>
	</s:form>
  </body>
</html>
