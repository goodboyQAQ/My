var loadCount=function(opusId,sendType,sendFloor){
	var num;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/count.do",
		  type:"post",
		  data:{"opusId":opusId,"sendType":sendType,"sendFloor":sendFloor},
		  dataType:"json",
		  async:false,
		  success:function(result){
			num=result.data;
		  },
		  complete:function(XHR,TS){
			  XHR = null 
		  },
		  error:function(){
			alert("加载评论错误");
		  }
	});
	return num;
}





var loadUpdicuss=function(opusId,nowPage){
	var n=8*nowPage-8;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/updicuss.do",
		  type:"post",
		  data:{"opusId":opusId,"n":n},
		  dataType:"json",
		  async:false,
		  success:function(result){
			var dicuss=result.data;
			$(".sh").eq(0).empty();
			for(var i=0;i<dicuss.length;i++){
				var userId=dicuss[i].userId;
				var userImg=dicuss[i].userImg;
				var nickname=dicuss[i].nickName;
				var msg=dicuss[i].msg;
				var sendFloor=dicuss[i].sendFloor;
				var sendTime=dicuss[i].sendTime;
				sendTime=myTime(sendTime);
				var dicussId=dicuss[i].id;
				var li='<div class="msg"><div class="user_msg"><div class="dicussId" hidden="hidden">'
						+dicussId+
						'</div><a href="./person.jsp?user_id='
						+userId+
						'"><img src="/'
						+userImg+
						'" class="headimg_b"/></a><p><a href="./person.jsp?user_id='
						+userId+
						'"><b class="blue">'
						+nickname+
						'</b></a></p><p>'
						+msg+
						'</p><p class="more_msg">#<span class="floor">'
						+sendFloor+
						'</span>&nbsp;'
						+sendTime+
						'&nbsp;<img class="tolike" src="/img/agree01.png" style="vertical-align:-1px;"/><span class="like">0</span>&nbsp;'+
						'<img class="todislike" src="/img/disagree01.png" style="vertical-align:-1px;"/><span class="dislike">0</span>&nbsp;'+
						'<span class="blue gray_bg reply1">回复</span>'+
						'<span class="report blue">投诉</span></p></div></div>';
				$(".sh").eq(0).append(li);	
			}
		  },
		  complete:function(XHR,TS){
			  XHR = null 
		  },
		  error:function(){
			alert("加载评论错误");
		  }
		});
	//加载评论
	var all=$(".sh").eq(0).find(".msg");
	for(var i=0;i<all.length;i++){
		var dom=all.eq(i);
		var sendFloor=dom.find(".floor").text();
		loadDownreply(opusId,sendFloor,1,dom);
	}
	var num=loadCount(opusId,0);
	var page=num/8;
	page=Math.ceil(page);
	var li=paging(page,nowPage);
	$(".sh").eq(0).append(li);
}

var loadMaxdicuss=function(opusId,nowPage){
	var n=8*nowPage-8;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/maxdicuss.do",
		  type:"post",
		  data:{"opusId":opusId,"n":n},
		  dataType:"json",
		  async:false,
		  success:function(result){
			  var dicuss=result.data;
				$(".sh").eq(1).empty();
				for(var i=0;i<dicuss.length;i++){
					var userId=dicuss[i].userId;
					var userImg=dicuss[i].userImg;
					var nickname=dicuss[i].nickName;
					var msg=dicuss[i].msg;
					var sendFloor=dicuss[i].sendFloor;
					var sendTime=dicuss[i].sendTime;
					sendTime=myTime(sendTime);
					var dicussId=dicuss[i].id;
					var li='<div class="msg"><div class="user_msg"><div class="dicussId" hidden="hidden">'
							+dicussId+
							'</div><a href="./person.jsp?user_id='
							+userId+
							'"><img src="/'
							+userImg+
							'" class="headimg_b"/></a><p><a href="./person.jsp?user_id='
							+userId+
							'"><b class="blue">'
							+nickname+
							'</b></a></p><p>'
							+msg+
							'</p><p class="more_msg">#<span class="floor">'
							+sendFloor+
							'</span>&nbsp;'
							+sendTime+
							'&nbsp;<img class="tolike" src="/img/agree01.png" style="vertical-align:-1px;"/><span class="like">0</span>&nbsp;'+
							'<img class="todislike" src="/img/disagree01.png" style="vertical-align:-1px;"/><span class="dislike">0</span>&nbsp;'+
							'<span class="blue gray_bg reply1">回复</span>'+
							'<span class="report blue">投诉</span></p></div></div>';
					$(".sh").eq(1).append(li);					
				}
		  },
		  error:function(){
			alert("加载评论错误");
		  }
		  
		});
	//加载评论
	var all=$(".sh").eq(1).find(".msg");
	for(var i=0;i<all.length;i++){
		var dom=all.eq(i);
		var sendFloor=dom.find(".floor").text();
		loadDownreply(opusId,sendFloor,1,dom);		
	}
	var num=loadCount(opusId,0);
	var page=num/8;
	page=Math.ceil(page);
	var li=paging(page,nowPage);
	$(".sh").eq(1).append(li);
}


var loadDownreply=function(opusId,sendFloor,nowPage,dom){
	var n=5*nowPage-5;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/downreply.do",
		  type:"post",
		  data:{"opusId":opusId,"sendFloor":sendFloor,"n":n},
		  dataType:"json",
		  async:false,
		  success:function(result){
			  var dicuss=result.data;
			  dom.find(".to_user").remove();
				for(var i=0;i<dicuss.length;i++){
					var userId=dicuss[i].userId;
					var userImg=dicuss[i].userImg;
					var nickname=dicuss[i].nickName;
					var msg=dicuss[i].msg;
					var sendTime=dicuss[i].sendTime;
					var dicussId=dicuss[i].id;
					sendTime=myTime(sendTime);
					var toUser=dicuss[i].toUser;
					var toNickName=dicuss[i].toNickName;
					console.log(toUser);
					var li='<div class="to_user"><div class="dicussId" hidden="hidden">'+dicussId+'</div><a href="./person.jsp?userId=' 
						+userId+
						'"><img src="/'
						+userImg+
						'" class="headimg_s"/></a><div class="to_user_msg"><p><a href="./person.jsp?userId='
						+userId+
						'"><b class="blue nick_name">'
						+nickname+
						'</b><div class="user_id" hidden="hidden">'+userId+'</div></a>&nbsp;'
					if(toUser!=null){
						li+='<a href="./person.jsp?user_id='+toUser+'">回复&nbsp;<span style="color:RGB(0,160,210)">@'+toNickName+':</span></a>';
					}
					li+= msg+
						'</p><p class="more_msg">'
						+sendTime+
						'&nbsp;<img class="tolike" src="/img/agree01.png" style="vertical-align:-1px;"/><span class="like">0</span>&nbsp;'+
						'<img class="todislike" src="/img/disagree01.png" style="vertical-align:-1px;"/><span class="dislike">0</span>&nbsp;'+
						'<span class="blue gray_bg reply2">回复</span>'+
						'<span class="report blue" style="display:none">投诉</span></p></div></div>';				
					dom.append(li);
				}     
		  },
		  error:function(){
			alert("加载回复错误lllllllllll");
		  }
		});
	var num=loadCount(opusId,1,sendFloor);
	var page=num/5;
	page=Math.ceil(page);
	dom.find(".page_div2").remove();
	var li=paging2(page,nowPage);
	dom.append(li);
}

//添加评论
var addDicuss=function(userId,nickName,userImg,opusId,sendType,sendFloor,msg,toUser,toNickName){
	if(userImg==null){
		userImg="headimg/noface.gif";
	}
	if(userId==null){
		alert("去登陆");
		window.location.href="login.html";
	}
	if(userId!=null){
		$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/add.do",
		  type:"post",
		  data:{"userId":userId,"nickName":nickName,"userImg":userImg,"opusId":opusId,"sendType":sendType,"sendFloor":sendFloor,"msg":msg,"toUser":toUser,"toNickName":toNickName},
		  dataType:"json",
		  success:function(result){
			  $(".myMsg").remove();
			  var li='<div class="msg myMsg"><div class="user_msg"><a href="./person.jsp?user_id='
					+userId+
					'"><img src="/'
					+userImg+
					'" class="headimg_b"/></a><p><a href="./person.jsp?user_id='
					+userId+
					'"><b class="blue">'
					+nickName+
					'</b></a></p><p>'
					+msg+
					'</p><p class="more_msg">刚刚&nbsp;'+
					'<img src="/img/agree01.png" style="vertical-align:-1px;"/>0&nbsp;'+
					'<img src="/img/disagree01.png" style="vertical-align:-1px;"/>0&nbsp;'+
					'</p></div></div>';
			  $(".sh").prepend(li);
			
		  },
		  error:function(){
			 alert("添加失败");
		  }
		});
	}
}



var findFloor=function(opusId){
	var n
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/floor.do",
		  type:"post",
		  data:{"opusId":opusId},
		  dataType:"json",
		  async:false,
		  success:function(result){
			n=result.data;
			if(n!=null){
				n=parseInt(n)+1;
			}else{
				n=1;
			}
		  },
		  error:function(){
			 alert("查找楼层失败");
		  }
	});
	return n;
}




//加载每条评论的点赞
var loadAgree=function(userId){
	var dicussId=$(".dicussId");
	for(var i=0;i<dicussId.length;i++){
		//每一条评论的id
		var id=dicussId.eq(i).text();
		var n=like(id);
		var n2=dislike(id);
		$(".more_msg").eq(i).find(".like").text(n);
		$(".more_msg").eq(i).find(".dislike").text(n2);
		if(userId!=null){
			var a=loadstatus(userId,id);
			if(a==-1){      //踩
				$(".more_msg").eq(i).find(".todislike").attr("src","/img/disagree03.png");
			}else if(a==1){ //赞
				$(".more_msg").eq(i).find(".tolike").attr("src","/img/agree03.png");
			}
		}
	}

	
}
