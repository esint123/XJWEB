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
<title>35kV新、扩建工程表(编辑)</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/pagination.css'></link>
<link rel="stylesheet" type="text/css"
	href='<%=basePath%>css/normal.css'></link>
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
	<s:form id="form1" name="form1" action="SaveNew35">
		<div id=mydiv style="display:block; overflow-y: hidden ;">
			<table id="productTable" width="4600px" border="0" cellpadding="0"
				cellspacing="1" align="center" class="PagerTable">
			<tr>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">行政区划</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"><font color="#1D6597">供电区域分类</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">所属企业</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">工程名称</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">电压等级(千伏)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">建设类型</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">变电站站型</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">新建变电站占地面积(平方米)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">新增主变台数(台)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">新增主变容量(兆伏安)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">新建、扩建10千伏间隔(个)</font>
				</a>
				</th>
				<th class="tdDropTitle" colspan="2"><a style="cursor: pointer;">
						<font color="#1D6597">无功补偿</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">变电投资(万元)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">线路条数(条)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">线路总长度(千米)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">电缆长度(千米)</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">电缆型号</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">架空长度(千米)</font>
				</a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">架空线型号</font> </a>
				</th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">线路投资(万元)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">工程总投资(万元)</font>
				</a></th>
				<th class="tdDropTitle" colspan="4" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">资金来源</font> </a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">投运时间(年)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="3" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">输变电工程属性</font>
				</a></th>
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
					style="cursor: pointer;"> <font color="#1D6597">工程目的</font> </a></th>
				<th class="tdDropTitle" colspan="6" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">所属阶段</font> </a></th>
			</tr>
			<tr>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">容性容量(兆乏)</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">感性容量(兆乏)</font>
				</a></th>
				<th class="tdDropTitle" colspan="2" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">国家电网公司投资</font>
				</a></th>
				<th class="tdDropTitle" rowspan="2" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">县级供电企业自筹(%)</font>
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
					style="cursor: pointer;"> <font color="#1D6597">中央计划(%)</font>
				</a></th>
				<th class="tdDropTitle" width="60px"><a
					style="cursor: pointer;"> <font color="#1D6597">公司自筹(%)</font>
				</a></th>
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
				   	<s:textfield name ="item.FD" theme="simple" size="50" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FE" theme="simple" cssClass="BorderTextInput"></s:textfield>
				   </td>
				   <td>
				   	 <s:textfield name ="item.FF" theme="simple" cssClass="BorderTextInput"></s:textfield>
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
				   </tr>
				   <tr>
					<s:hidden  name ="item.id"></s:hidden>
					<s:hidden  name ="item.treeid"></s:hidden>
					<s:hidden  name ="item.FAn"></s:hidden>
					<s:hidden  name ="item.FAo"></s:hidden>
					<s:hidden  name ="item.FAp"></s:hidden>
					<s:hidden  name ="item.FAq"></s:hidden>
					<s:hidden  name ="item.FAr"></s:hidden>
					<s:hidden  name ="item.FAs"></s:hidden>
					<s:hidden  name ="item.FAt"></s:hidden>
					<s:hidden  name ="item.FAu"></s:hidden>
					<s:hidden  name ="item.FAv"></s:hidden>
					<s:hidden  name ="item.FAw"></s:hidden>
					<s:hidden  name ="item.FAx"></s:hidden>
					<s:hidden  name ="item.FAy"></s:hidden>
					<s:hidden  name ="item.FAz"></s:hidden>
					<s:hidden  name ="item.FBa"></s:hidden>
					<s:hidden  name ="item.FBb"></s:hidden>
					<s:hidden  name ="item.FBc"></s:hidden>
					<s:hidden  name ="item.FBd"></s:hidden>
					<s:hidden  name ="item.FBe"></s:hidden>
					<s:hidden  name ="item.Stage"></s:hidden>
										<td colspan="39">
						<div style="text-align: center;">
							<br><input type="submit" id="btnSubmit" value="保存" onclick="javascript:jspSubmit()" class="btn" /> 
							<input type="button" value="关闭" onclick="javascript:jspclose()"
								class="btn" />
						</div></td>
				 </tr>
			</table>
		</div>
	</s:form>
</body>
</html>
