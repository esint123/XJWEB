Date.prototype.Format = function (fmt) { 
 var o = {
 "M+": this.getMonth() + 1, //月份 
 "d+": this.getDate(), //日 
 "h+": this.getHours(), //小时 
 "m+": this.getMinutes(), //分 
 "s+": this.getSeconds(), //秒 
 "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
 "S": this.getMilliseconds() //毫秒 
 };
 if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
 for (var k in o)
 if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
 return fmt;
}

function openUrl(url) 
{
    if (url != '') {
        window.open(url, "_blank", "height=" + screen.availHeight + ",width=" + screen.availWidth + ",status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,resizable=1,top=0,left=0");
    }
}    
function ChangeClass(o,classname)
    {
       o.className = classname;
    }

  //获得URL参数
    function getQueryString(queryStringName)
    {
         var returnValue="";
         var URLString=new String(document.location);
         var serachLocation=-1;
         var queryStringLength=queryStringName.length;
         do
         {
            serachLocation=URLString.indexOf(queryStringName+"\=");
            if (serachLocation!=-1)
            {
                if ((URLString.charAt(serachLocation-1)=='?') || (URLString.charAt(serachLocation-1)=='&'))
                {
                    URLString=URLString.substr(serachLocation);
                    break;
                }
                URLString=URLString.substr(serachLocation+queryStringLength+1);
            }
         }
         while (serachLocation!=-1)
         if (serachLocation!=-1)
         {
            var seperatorLocation=URLString.indexOf("&");
            if (seperatorLocation==-1)
            {
                returnValue=URLString.substr(queryStringLength+1);
            }
            else
            {
                returnValue=URLString.substring(queryStringLength+1,seperatorLocation);
            } 
         }
         return returnValue;
    }
    
    function selectChange(obj) 
    {
       if(obj.checked)
    	  selectAll();
       else
    	  unselectAll();
    }
    
  //全选
    function selectAll() 
    {
    	var inputs =document.getElementsByTagName("input");
    	  for(var i=0; i<inputs.length;i++)
    	  {
    	     if(inputs[i].type == "checkbox")
    	     {		     
    	    	 inputs[i].checked = true;
    	     }	         
    	  }
    }
    //全不选
    function unselectAll() 
    {
    	  var inputs =document.getElementsByTagName("input");
    	  for(var i=0; i<inputs.length;i++)
    	  {
    	     if(inputs[i].type == "checkbox")
    	     {		     
    	    	 inputs[i].checked = false;
    	     }	         
    	  }
    }
    //反选
    function ReversSelect() 
    {
    	var inputs =document.getElementsByTagName("input");
    	  for(var i=0; i<inputs.length;i++)
    	  {
    	     if(inputs[i].type == "checkbox")
    	     {		     
    		     if( inputs[i].checked)
    		     {
    		    	 inputs[i].checked = false;
    		     }
    		     else 
    		     {
    		    	 inputs[i].checked = true;
    		   	 }
    	     }	         
    	  }
    }
    
    function tof(val)
    {var t;
	    switch(val) 
	    {   
	    case null: t = "null"; break;   
	    case undefined: t = "undefined";
	    break;   
	    default:  
	    t = val.nodeName || Object.prototype.toString.call(val).match(/object\s(\w+)/)[1];    
	    if(!!val.constructor && t.toLowerCase() === "object")
	    {        
	    	t = val.constructor.toString().match(/^\s*function\s(\w+)/)[1];    
	    }      
	    break;    	
	    }
    return  t.toLowerCase();    	
    }    
    String.prototype.equals=function(b){return   this==b;} 
    function DisPlayToNone(obj)
    {    	
    	if(tof(obj).equals("string")){
    		document.getElementById(obj).disabled="disabled";
    	}
    	else if(tof(obj).equals('input'))  {  	
    	   obj.disabled="disabled";
    	}
    }    
    function DisPlayToNull(obj)
    {   	
    	if(tof(obj).equals("string")){
    		document.getElementById(obj).disabled="";
    	}
    	else if(tof(obj).equals('input'))  {  	
    	   obj.disabled="";
    	}
    }

    //得到所用checkbox 标签的选择value
    function selectedStr()
    {
    	var resultStr = "";	
    	var inputs =document.getElementsByTagName("input");
    	for(var i=0; i<inputs.length;i++)
    	  {
    	     if(inputs[i].type == "checkbox")
    	     {		     
    		     if( inputs[i].checked)
    		     {
    		    	 if(inputs[i].value!='on')
    		    	 {
    		    		 resultStr+= inputs[i].value+",";
    		    	 }
    			 }
    	     }	         
    	  }
    	return resultStr;
    }

    //隐藏链接上的URL
	function hideinfo(){ 
		if(event.srcElement == null) {
			return;
		}
	    if(event.srcElement.tagName=="A"){ 
			window.status=""
		}
	}
	document.onmouseover=hideinfo 
	document.onmousemove=hideinfo 
	document.onmousedown=hideinfo 
