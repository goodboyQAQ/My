function now14(){
    var now = new Date();    
    var year = now.getFullYear();       //年
    var month = now.getMonth()+1;     //月
    var day = now.getDate();            //日      
    var hh = now.getHours();            //时
    var mm = now.getMinutes();          //分
    var ss = now.getSeconds();     		//秒
    var time=year+""+add0(month)+""+add0(day)+""+add0(hh)+""+add0(mm)+""+add0(ss);
    return time;
}

function  myTime(time){
    var datetime = new Date();
     datetime.setTime(time);
     var year = datetime.getFullYear();
     var month = datetime.getMonth() + 1;
     var date = datetime.getDate();
     var hour = datetime.getHours();
     var minute = datetime.getMinutes();
     var second = datetime.getSeconds();
     return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;
}


var add0=function(a){
	if(a<10){
	  a="0"+a;		
	}
	return a;
}


