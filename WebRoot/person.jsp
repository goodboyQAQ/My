<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
  	<meta charset="utf-8"/>
	<style type="text/css">
	 .follow{
	 	background-color:RGB(0,160,200);
	 	color:white;
	 	padding:5px 10px;
	 	border-radius:5px;
	 	font-size:15px;
	 }
	 .gray{
	 	background-color:gray;
	 	color:white;
	 }
	 .blue{
	 	background-color:RGB(0,160,200);
	 	color:white;
	 }
	.img{
	 	width:160px;
	 }
	 img{
		border-radius:5px;
	 	width:160px;
	 	height:110px;
	 }
	 .msg{
	 	width:160px;
	 	line-height:20px;
		font-size:15px;
 		height:40px;
		overflow:hidden;
	 }
	 .opus{
	 	float:left;
	 	margin:0 20px 20px 0;
	 }
	 .headImg{
	 	height:50px;
	 	width:50px;
	 	border-radius:50px;
	 }
	</style>
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/cookieUtil.js"></script> 
	<script type="text/javascript" src="js/myJs.js"></script> 
	<script type="text/javascript">
		$(function(){
		alert("ok");
		  var userId=getUrlId();
		  var userId2=getCookie("userId");
		  if(userId!=null){
		  	$.ajax({
		   		url:"http://localhost:8888/Bilibili/user/findbyid.do",
		    	type:"post",
		   	    data:{"userId":userId},
		   	    dataType:"json",
		   	    success:function(result){
		 		  var user=result.data;
		 		  var nickName=user.nickName;
		 		  var userImg=user.userImg;
		 		  if(userImg!=null){
		 		  	alert("userImg部位空"+userImg);
		 		  	$(".headImg").attr("src","/"+userImg);
		 		  }
		 		  alert("nickName"+nickName);
		 		  $(".nickName").text(nickName);
		        },
		        error:function(){
			      alert("查找楼层失败");
		  	    }
	    	});
	    	//加载用户的作品
	    	$.ajax({
		   		url:"http://localhost:8888/Bilibili/opus/findbyuser.do",
		    	type:"post",
		   	    data:{"userId":userId},
		   	    dataType:"json",
		   	    success:function(result){
		 		  var opus=result.data;
		 		  if(opus!=null){
		 		  	$(".all").empty();
		 		  	for(var i=0;i<opus.length;i++){
		 		  		var opusId=opus[i].opusId;
		 		  		var opusImg=opus[i].opusImg;
		 		  		var opusTitle=opus[i].opusTitle;
		 		  		var li='<div class="opus"><a href="video.jsp?opusId='
		 		  				+opusId+
		 		  				'"><div class="img"><img src="/'
		 		  				+opusImg+
		 		  				'"></div><div class="msg">'
		 		  				+opusTitle+
		 		  				'</div></a></div>';
		 		  		$(".all").prepend(li);
		 		  	}
		 		  }
		        },
		        error:function(){
			      alert("查找楼层失败");
		  	    }
	    	});
		  }
		  if(userId!=null && userId2!=null){
		  	//查询访问者对用户的关注情况
	    	$.ajax({
		   		url:"http://localhost:8888/Bilibili/fans/exist.do",
		    	type:"post",
		   	    data:{"type":"fans","userId":userId,"userId2":userId2},
		   	    dataType:"json",
		   	    success:function(result){
		 		  var user=result;
		 		  if(user==true){
		 		  	alert(user);
		 		  	$(".follow").removeClass("blue").addClass("gray");
		 		  }else{
		 		  	alert(user);
		 		  }
		        },
		        error:function(){
			      alert("查找关注情况失败");
		  	    }
	    	});
		  }
		  
		  
		  $(".box").on("click",".blue",function(){
		  	if(userId2!=null&&userId!=null){
		  		alert("userId2不为空"+userId2);
		  		var dom=$(this);
		  		$.ajax({
		   		url:"http://localhost:8888/Bilibili/fans/add.do",
		   	    data:{"userId":userId,"userId2":userId2},
		   	    dataType:"json",
		   	    success:function(result){
		 		  if(result==1){
		 		  	dom.removeClass("blue").addClass("gray");
		 		  }else{
		   	    		alert("粉丝列表添加失败");
		   	    	}
		        },
		        error:function(){
			      alert("ajax失败");
		  	    }
	    		});
	    			    		
		  	}else{
		  		window.location.href="login.html";
		  	}
		  });
		  
		  
		  
		  $(".box").on("click",".gray",function(){
		  	if(userId2!=null&&userId!=null){
		  		var dom=$(this)
		  		$.ajax({
		   		url:"http://localhost:8888/Bilibili/fans/remove.do",
		    	type:"post",
		   	    data:{"userId":userId,"userId2":userId2},
		   	    dataType:"json",
		   	    success:function(result){
		 		  if(result==1){
		 		  	dom.removeClass("gray").addClass("blue");
		 		  	alert("取消关注");		 		  
		 		  }else{
		   	    		alert("粉丝列表删除失败");
		   	    	}
		        },
		        error:function(){
			      alert("ajax失败");
		  	    }
	    		});	    		
		  	}else{
		  		window.location.href="login.html";
		  	}
		  });
		  
		  
	   });
	</script>
	
  </head>  
  <body>
  	<div class="box">
  		<div><b>个人主页</b></div>
  		<br/>
  		<div><img class="headImg" src="/headimg/noface.gif"/></div>
  		<div style="font-size:20px;"><b class="nickName">nickName</b> &nbsp;<span class="follow blue">关注</span></div>
  		<br/>
  		<div><b>他的作品</b></div>
  		<div class="all">无</div>
  	</div>
  </body>
</html>