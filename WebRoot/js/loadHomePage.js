function loadTop(type,time,dom){
	$.ajax({
		  url:"http://localhost:8888/Bilibili/opus/loadtop.do",
		  type:"post",
		  data:{"opusType":type,"time":time},
		  dataType:"json",
		  success:function(result){
			  var opus=result.data;
			  dom.find(".va3").empty();
			  var i;
			  for(i=0;i<7;i++){					  
				  var opus_id=opus[i].opusId;
				  var opus_img=opus[i].opusImg;
				  var opus_title=opus[i].opusTitle;
				  var click=opus[i].click;
				  var coin=opus[i].coin;
				  var collect=opus[i].collect;
				  var score=click+coin*10+collect*5;
				  if(score>=10000){ 
					 score=(score/10000).toFixed(1)+"万";
				  }
				  if(i==0){
					  var li='<a href="../video.jsp?opus_id='
						  	+opus_id+
						  	'"><div class="ph_first blue_f"><div class="three_red">'
					  		+(i+1)+
					  		'</div><div class="three_red_img" style="margin:0 0 0 10px"><img src="/'
					  		+opus_img+
					  		'" style="width:80px;height:50px;"/></div>'+
					  		'<div class="three_red_msg"><p class="one_p blue">'
					  		+opus_title+
					  		'</p><span>综合评分:'
					  		+score+
					  		'</span></div></div></a>';
					  dom.find(".va3").append(li);
				  }else if(i==1||i==2){
					  var li='<a href="../video.jsp?opus_id='
						  	+opus_id+
						  	'"><div class="ph blue_f"><div  class="three_red">'
						  	+(i+1)+
						  	'</div><p class="six_p blue">&nbsp;'
						  	+opus_title+
						  	'</p></div></a>';
					  dom.find(".va3").append(li);
				  }else{
					  var li='<a href="../video.jsp?opus_id='
						  	+opus_id+
						  	'"><div class="ph blue_f"><div  class="four_gray">'
						  	+(i+1)+
						  	'</div><p class="six_p blue">&nbsp;'
						  	+opus_title+
						  	'</p></div></a>';
					  dom.find(".va3").append(li); 
				  }
				  
			  }
			  var li='<a href="../other.html"><div class="ph_more">查看更多</div></a>';
			  dom.find(".va3").append(li);
		  },
		  error:function(){
			alert("错误");
		  }
		});
}
function loadTop0(type,time,original,dom){
	$.ajax({
		  url:"http://localhost:8888/Bilibili/opus/loadtop.do",
		  type:"post",
		  data:{"opusType":type,"time":time,"original":original},
		  dataType:"json",
		  success:function(result){
			  var opus=result.data;
			  dom.find(".va4").empty();
			  var i;
			  for(i=0;i<7;i++){					  
				  var opus_id=opus[i].opusId;
				  var opus_img=opus[i].opusImg;
				  var opus_title=opus[i].opusTitle;
				  var click=opus[i].click;
				  var coin=opus[i].coin;
				  var collect=opus[i].collect;
				  var score=click+coin*10+collect*5;
				  if(score>=10000){ 
					 score=(score/10000).toFixed(1)+"万";
				  }
				  if(i==0){
					  var li='<a href="../video.jsp?opus_id='
						  	+opus_id+
						  	'"><div class="ph_first blue_f"><div class="three_red">'
					  		+(i+1)+
					  		'</div><div class="three_red_img" style="margin:0 0 0 10px"><img src="/'
					  		+opus_img+
					  		'" style="width:80px;height:50px;"/></div>'+
					  		'<div class="three_red_msg"><p class="one_p blue">'
					  		+opus_title+
					  		'</p><span>综合评分:'
					  		+score+
					  		'</span></div></div></a>';
					  dom.find(".va4").append(li);
				  }else if(i==1||i==2){
					  var li='<a href="../video.jsp?opus_id='
						  	+opus_id+
						  	'"><div class="ph blue_f"><div  class="three_red">'
						  	+(i+1)+
						  	'</div><p class="six_p blue">&nbsp;'
						  	+opus_title+
						  	'</p></div></a>';
					  dom.find(".va4").append(li);
				  }else{
					  var li='<a href="../video.jsp?opus_id='
						  	+opus_id+
						  	'"><div class="ph blue_f"><div  class="four_gray">'
						  	+(i+1)+
						  	'</div><p class="six_p blue">&nbsp;'
						  	+opus_title+
						  	'</p></div></a>';
					  dom.find(".va4").append(li); 
				  }
				  
			  }
			  var li='<a href="../other.html"><div class="ph_more">查看更多</div></a>';
			  dom.find(".va4").append(li);
		  },
		  error:function(){
			alert("错误");
		  }
		});
}



function loadHome(type,dom){
	$.ajax({
		  url:"http://localhost:8888/Bilibili/opus/loadopus.do",
		  type:"post",
		  data:{"opusType":type},
		  dataType:"json",
		  success:function(result){
			  dom.find(".va1").empty();
			  var opus=result.data;
			  for(var i=0;i<10;i++){
				  var opus_id=opus[i].opusId;
				  var opus_img=opus[i].opusImg;
				  var opus_time=opus[i].opusTime;
				  var opus_title=opus[i].opusTitle;
				  var click=opus[i].click;
				  var danmu=click/1.7-3456;
				  if(click>=10000){
					  click=(click/10000).toFixed(1)+"万";
				  }
				  if(danmu>=10000){
					  danmu=(danmu/10000).toFixed(1)+"万";
				  }else{
					  danmu=danmu.toFixed(0);
				  }			  
				  var li='<div class="video_all"><div class="waitId" style="display:none">'
					  		+opus_id+
					  		'</div><a href="../video.jsp?opus_id='+opus_id+'">'+
							'<div class="video_top" style="background:url(/'
				  			+opus_img+
				  			')"><div class="video_top_mb"></div><span>'
				  			+opus_time+
				  			'</span></div><p style="height:20px;overflow:hidden;line-height:20px;">' 
				  			+opus_title+
							'</p><p style="line-height:20px;"><span><i>'+
							'<img src="/img/23.png" style="vertical-align:-2px;"></i>'
				  			+click+
							'</span><span class="float_r"><i style="vertical-align:-2px;"><img src="/img/24.png"></i>' 
							+danmu+
							'</span></p></a>';
				  var exist=checkId(opus_id);
				  if(exist){
					 var li2='<div class="wait_ico"><img src="/img/15.png" style="display:none" title="稍后再看" class="wi1"/>'+
							'<img src="/img/25.png" title="已加稍后再看" class="wi2"/></div></div>';
				  }else{
					 var li2='<div class="wait_ico"><img src="/img/15.png" title="稍后再看" class="wi1"/>'+
						     '<img src="/img/25.png" style="display:none" title="已加稍后再看" class="wi2"/></div></div>'
				  }
				  li+=li2;
				  dom.find(".va1").append(li);				  
			  }
			  var select_time=now14();
			  dom.find(".time").text(select_time);
		  },
		  error:function(){
			alert("错误");
		  }
	}); 
	
	
	$.ajax({
		  url:"http://localhost:8888/Bilibili/opus/loadnewopus.do",
		  type:"post",
		  data:{"opusType":type},
		  dataType:"json",
		  success:function(result){
			  dom.find(".va2").empty();
			  var opus=result.data;
			  for(var i=0;i<10;i++){
				  var opus_id=opus[i].opusId;
				  var opus_img=opus[i].opusImg;
				  var opus_time=opus[i].opusTime;
				  var opus_title=opus[i].opusTitle;
				  var click=opus[i].click;
				  var danmu=click/1.7-3456;
				  if(click>=10000){
					  click=(click/10000).toFixed(1)+"万";
				  }
				  if(danmu>=10000){
					  danmu=(danmu/10000).toFixed(1)+"万";
				  }else{
					  danmu=danmu.toFixed(0);
				  }
				  
				  var li='<div class="video_all"><div class="waitId" style="display:none">'
				  			+opus_id+
				  			'</div><a href="../video.jsp?opus_id='
					  		+opus_id+
					  		'"><div class="video_top" style="background:url(/'
				  			+opus_img+
				  			')"><div class="video_top_mb"></div><span>'
				  			+opus_time+
				  			'</span></div><p style="height:20px;overflow:hidden;line-height:20px;">' 
				  			+opus_title+
							'</p><p style="line-height:20px;"><span><i>' +
							'<img src="/img/23.png" style="vertical-align:-2px;"></i>'
				  			+click+
							'</span><span class="float_r"><i style="vertical-align:-2px;"><img src="/img/24.png"></i>' 
							+danmu+
							'</span></p></a>';
				  var exist=checkId(opus_id);
				  if(exist){
					 var li2='<div class="wait_ico"><img src="/img/15.png" style="display:none" title="稍后再看" class="wi1"/>'+
							'<img src="/img/25.png" title="已加稍后再看" class="wi2"/></div></div>';
				  }else{
					 var li2='<div class="wait_ico"><img src="/img/15.png" title="稍后再看" class="wi1"/>'+
						     '<img src="/img/25.png" style="display:none" title="已加稍后再看" class="wi2"/></div></div>'
				  }
				  li+=li2;
				  dom.find(".va2").append(li);
				  
			  }
		  },
		  error:function(){
			alert("错误");
		  }
		});
		
	loadTop(type,"3",dom);
	loadTop0(type,"3","0",dom);
}



var newMsg=function(type,time,dom){
	$.ajax({
		  url:"http://localhost:8888/Bilibili/opus/loadcount.do",
		  type:"post",
		  data:{"opusType":type,"time":time},
		  dataType:"json",
		  success:function(result){
			  var n=result.data;
			  dom.find(".dongtai").find("span").text(n+"条新动态");
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});	
}

var loadNewMsg=function(){
	var type=$(".vv").find(".type");
	var tl=type.length;
	var t;
	var dom;
	var time;
	for(var i=0;i<tl;i++){
		dom=$(".vv").eq(i);
		t=type.eq(i).text();
		time=dom.find(".time").text();
		newMsg(t,time,dom);	
	}
}
var id=setInterval(loadNewMsg,10000);




var loadWait=function(){
	$("#waitd").empty();
	var all_id=getId("id");
	var id;
	var li;
	for(var i=0;i<all_id.length&&i<4;i++){		
		id=all_id[i];
		$.ajax({
			  url:"http://localhost:8888/Bilibili/opus/loadopusbyid.do",
			  type:"post",
			  data:{"id":id},
			  dataType:"json",
			  success:function(result){
				  var opus=result.data;
				  var opus_title=opus[0].opusTitle;
				  var opus_id=opus[0].opusId;
				  li='<a href="../video.jsp?opus_id='
					  +opus_id+
					  '"><div>'
					  +opus_title+
					  '</div></a>';
				  $("#waitd").prepend(li);
			  },
			  error:function(){				
			  }
		});
	}
	li='<a href="../other.html"><div>更多</div></a>';
	$("#waitd").prepend(li);
}