    
var setCookie=function(c_name,value,hours){
	var exdate=new Date()
	if(hours!=null){
		exdate.setTime(exdate.getTime()+hours*60*60*1000);
	}
	document.cookie=c_name+ "=" +escape(value)+
	((hours==null) ? "" : ";expires="+exdate.toGMTString())
}




var getCookie=function(c_name)
{
if (document.cookie.length>0)
  {
  c_start=document.cookie.indexOf(c_name + "=")
  if (c_start!=-1)
    { 
    c_start=c_start + c_name.length+1 
    c_end=document.cookie.indexOf(";",c_start)
    if (c_end==-1) c_end=document.cookie.length
    return unescape(document.cookie.substring(c_start,c_end))
    } 
  }
return 
}



var addId=function(objName,objValue,objHours){
	var oldValue=getCookie(objName);   //取cookie原有的值
	if(oldValue!=undefined && oldValue!=""){		   //cookie存在
		var a=oldValue+" "+objValue;
	}else{								//不存在
		var a=objValue;      
	}
	setCookie(objName,a,objHours);       
}

var deleteId=function(objName,objValue,objHours){
	var oldValue=getCookie(objName);
	var id=oldValue.split(/\s+/);
	var i;
	var value="";

	for(i=0;i<id.length;i++){
		if(id[i]==objValue){
			break;
		}
	}
	for(var j=0;j<id.length;j++){
		if(j==i){
			continue;
		}
		if(j==id.length-1){
			value+=id[j];
		}else{
		value+=(id[j]+" ");
		}
	}
	setCookie(objName,value,objHours);
}

var getId=function(objName){
	var value=getCookie(objName);
	if(value!=null){
		var id=value.split(/\s+/);
		return id;
	}else{
		return;
	}
}

var checkId=function(id){
	var idd=getId("id");
	if(idd==null){
		return false;
	}
	for(var i=0;i<idd.length;i++){
		if(idd[i]==id){
			return true;
		}
	}
	return false;
}

function clearCookie(){ 
var keys=document.cookie.match(/[^ =;]+(?=\=)/g); 
if (keys) { 
for (var i = keys.length; i--;) 
document.cookie=keys[i]+'=0;expires=' + new Date( 0).toUTCString() 
} 
} 
