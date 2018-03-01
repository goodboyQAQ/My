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
	body{
		position:relative;
		width:100%;
	}
	a{
		text-decoration:none;
		color:black;
	}
	
	 .blue{
	 	cursor:pointer;
	 }
	 .blue:hover{
	 	color:RGB(0,160,210);
	 }
	 .gray_bg{
	 	padding:5px;
	 }
	 .gray_bg:hover{
	 	background-color:RGB(230,230,240);
	 }
	 .on{
	 	color:RGB(0,160,210);
	 	border-bottom:1px solid RGB(0,160,210);
	 }
	 .page_on{
	 	color:RGB(0,160,210);
	 	cursor:pointer;
	 }
	 .page_on2{
	 	color:RGB(0,160,210);
	 	cursor:pointer;
	 }
	 
	 .hide{
	 	display:none;
	 }	
	 .show{
	 	display:block;
	 }
	 
	 #box{
			width:1160px;
			margin:0 auto;	
			font-size:0;
			position:relative;			
	 }
	 .title{
	 	font-size:20px;
	 }
	 #comment{
	 	width:900px;
	 	
	 }
	 #top{
	 	height:25px;
	 	border-bottom:1px solid RGB(230,230,240);
	 	margin:20px 0 0 0;
	 }
	 .all_hot{
	 	font-size:15px;
	 	display:inline-block;
	 	margin:0 20px 0 0;
	 	line-height:25px;	
	 }
	 
	 .send_msg{
	 	width:900px;
	 	margin:20px 0 40px 0;
	 }
	 .headimg_b{
	 	border-radius:50px;
	 	width:50px;
	 	height:50px;
	 	float:left;
	 	margin:15px 30px 0 0;
	 }
	 .s1{
	 	vertical-align:middle;
		border:1px solid RFB(230,230,240);
		background-color:RGB(244,245,247);
		width:690px;
		display:inline-block;
		padding:5px 10px;
		border-radius:5px;
	 }
	 .send{
	 	font-size:15px;
	 	line-height:15px;
	 	background-color:gray;
	 	width:30px;
	 	height:30px;
	 	display:inline-block;
	 	vertical-align:middle;
	 	padding:20px;
	 	color:white;
	 	background-color:RGB(0,160,210);
	 	margin:0 0 0 20px;
	 	border-radius:5px;
	 }
	 .msg{
	 	width:900px;
	 	margin:0 0 20px 0;
	 	border-bottom:1px solid RGB(230,230,240);
	 }
	 .user_msg{
	 	width:820px;
	 	font-size:15px;
	 	display:inline-block;
	 }
	 #more_msg{
	 	color:RGB(160,170,170);
	 	margin:0 0 20px 0;
	 }
	 .to_user{
	 	font-size:15px;
	 	margin:0 0 20px 85px;
	 }
	 .headimg_s{
	 	border-radius:50px;
	 	width:30px;
	 	height:30px;
	 	float:left;
	 	margin:0 10px 0 0;
	 }
	 .send_msg2{
	 	width:800px;
	 	margin:20px 0 40px 80px;
	 }
	 .s2{
	 	vertical-align:middle;
		border:1px solid RFB(230,230,240);
		background-color:RGB(244,245,247);
		width:605px;
		display:inline-block;
		padding:5px 10px;
		border-radius:5px;
	 }
	 .send_msg3{
	 	width:800px;
	 	margin:20px 0 40px 80px;
	 }
	 .report{
	 	float:right;
	 }
	 #alert{
		width:100%;
	 	position:absolute;
	 	left:0;
	 	top:0;
	 	bottom:0;
	 	height:100%;
	 	z-index:2;
	 	background-color:RGBA(110,100,110,0.4);
	 	display:none;
	 }

	 
	</style> 
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script> 
	<script type="text/javascript" src="js/cookieUtil.js"></script>
	<script type="text/javascript" src="js/myJs.js"></script>
	<script type="text/javascript" src="js/timestamp14.js"></script> 
	<script type="text/javascript" src="js/loadDicuss.js"></script>
	<script type="text/javascript" src="js/agree.js"></script>   
	<script type="text/javascript">
		$(function(){
			var userId=getCookie("userId");
			var nickName=getCookie("nickName");
			var userImg=getCookie("userImg");
			if(userImg==null){
				userImg="headimg/noface.gif";
			}
			var opusId=getUrlId();
			var num=loadCount(opusId);
			$(".title").text(num+"条评论");
			loadUpdicuss(opusId,1);
			loadMaxdicuss(opusId,1);
			//加载点赞数
			loadAgree(userId);
			 
			
			
			//点赞事件		
			$("#all_msg").on("click",".tolike",function(){
				//未点赞状态   点赞会对踩造成影响  
				if($(this).attr("src")=="/img/agree01.png"){
					if(userId!=null){
						alert(userId);
						//1.改变点赞
						$(this).attr("src","/img/agree03.png");
						var dicussId=$(this).parents(".user_msg,.to_user").find(".dicussId").text();
						var n=tolike(userId,dicussId);
						$(this).parents(".user_msg,.to_user").find(".like").text(n);
						//2.如果处于踩状态就改变踩的样式
						var dislike=$(this).parents(".more_msg").find(".todislike");
						if(dislike.attr("src")=="/img/disagree03.png"){
							dislike.attr("src","/img/disagree01.png");
							var n2=parseInt($(this).parents(".user_msg,.to_user").find(".dislike").text())-1;
							$(this).parents(".user_msg,.to_user").find(".dislike").text(n2);
						}
					}else{
						//没有登陆
						window.location.href="login.html";
					}
				}
				//处于点赞状态  点击不会对踩造成影响
				else{
					 if(userId!=null){
					    $(this).attr("src","/img/agree01.png");
				   	    var dicussId=$(this).parents(".user_msg,.to_user").find(".dicussId").text();
						var n=nolike(userId,dicussId);
						$(this).parents(".user_msg,.to_user").find(".like").text(n);
					}else{
						window.location.href="login.html";
					}
				}
			});
			//踩事件
			$("#all_msg").on("click",".todislike",function(){ 
				if($(this).attr("src")=="/img/disagree01.png"){
					if(userId!=null){
						alert(userId);
						$(this).attr("src","/img/disagree03.png");
						var dicussId=$(this).parents(".user_msg,.to_user").find(".dicussId").text();
						var n=todislike(userId,dicussId);
						$(this).parents(".user_msg,.to_user").find(".dislike").text(n);
						
						var like=$(this).parents(".more_msg").find(".tolike");
						if(like.attr("src")=="/img/agree03.png"){
							like.attr("src","/img/agree01.png");
							var n2=parseInt($(this).parents(".user_msg,.to_user").find(".like").text())-1;
							$(this).parents(".user_msg,.to_user").find(".like").text(n2);
						}
					}else{
						//没有登陆
						window.location.href="login.html";
					}
				}
				//处于点赞状态  点击不会对踩造成影响
				else{
					 if(userId!=null){
					    $(this).attr("src","/img/disagree01.png");
				   	    var dicussId=$(this).parents(".user_msg,.to_user").find(".dicussId").text();
						var n=nodislike(userId,dicussId);
						$(this).parents(".user_msg,.to_user").find(".dislike").text(n);
					}else{
						window.location.href="login.html";
					}
				}
			});
			
			
			
			
			
			
			$("#all_msg").on({
					mouseenter:function(){
						$(this).find(".report").css("display","inline-block");
					},
					mouseleave:function(){
					    $(this).find(".report").css("display","none");
					}					
				},".to_user_msg");
		
			//切换热评和最近评论
			$(".all_hot").click(function(){
				var a=$(this).index(".all_hot");
				$(this).addClass("on");
				$(this).siblings().removeClass("on");
				$(".sh").eq(a).removeClass("hide").addClass("show");
				$(".sh").eq(a).siblings().removeClass("show").addClass("hide");				
			});	
			
			//举报alert框
			$("#all_msg").on("click",".report",function(){
				$("#alert").css("display","block");
				$("#alert").load("alert/report.html");
			});
			$("#alert").on("click",".back",function(){
				$("#alert").empty();
				$("#alert").css("display","none");
			});	
			//其他单选框出现输入框
			$("#alert").on("click","input",function(){
				if(document.getElementById("other").checked){
					$(".reason_other").css("display","block");
				}else{
					$(".reason_other").css("display","none");
				}
			});
			//投诉请求
			$("#alert").on("click","#ok",function(){
				$("#alert").empty();
				alert("假装投诉成功");
				$("#alert").css("display","none");				
			});
			
			$(".all_hot").click(function(){
				$(this).addClass("on");
				$(this).siblings().removeClass("on");
			});
			
			
			//给页码添加事件
			$(".sh").eq(0).on("click",".page.page_on",function(){
				var nowPage=parseInt($(this).text());
				loadUpdicuss(opusId,nowPage);
			});
			$(".sh").eq(0).on("click",".homepage",function(){
				loadUpdicuss(opusId,1);
			});
			$(".sh").eq(0).on("click",".prev",function(){
				var nowPage=parseInt($(".current").eq(0).text())-1;
				alert(nowPage);
				loadUpdicuss(opusId,nowPage);
			});
			$(".sh").eq(0).on("click",".next",function(){
				var nowPage=parseInt($(".current").eq(0).text())+1;
				alert(nowPage);
				loadUpdicuss(opusId,nowPage);
			});
			$(".sh").eq(0).on("click",".last",function(){
				var nowPage=parseInt($(".total").eq(0).text());
				alert(nowPage);
				loadUpdicuss(opusId,nowPage);
			});
			
			$(".sh").eq(1).on("click",".page.page_on",function(){
				var nowPage=parseInt($(this).text());
				loadMaxdicuss(opusId,nowPage);
			});
			$(".sh").eq(1).on("click",".homepage",function(){
				loadMaxdicuss(opusId,1);
			});
			$(".sh").eq(1).on("click",".prev",function(){
				var nowPage=parseInt($(".current").eq(1).text())-1;
				loadMaxdicuss(opusId,nowPage);
			});
			$(".sh").eq(1).on("click",".next",function(){
				var nowPage=parseInt($(".current").eq(1).text())+1;
				loadMaxdicuss(opusId,nowPage);
			});
			$(".sh").eq(1).on("click",".last",function(){
				var nowPage=parseInt($(".total").eq(1).text());
				loadMaxdicuss(opusId,nowPage);
			});
			
			//给回复页码添加事件
			$(".sh").on("click",".page.page_on2",function(){
				var dom=$(this).parents(".msg");
				var sendFloor=dom.find(".floor").text();
				var nowPage=$(this).text();
				loadDownreply(opusId,sendFloor,nowPage,dom);
			});
			$(".sh").on("click",".prev2",function(){			
				var dom=$(this).parents(".msg");
				var sendFloor=dom.find(".floor").text();
				var nowPage=parseInt(dom.find(".current2").text())-1;
				loadDownreply(opusId,sendFloor,nowPage,dom);
			});
			$(".sh").on("click",".next2",function(){
				var dom=$(this).parents(".msg");
				var sendFloor=dom.find(".floor").text();
				var nowPage=parseInt(dom.find(".current2").text())+1;
				loadDownreply(opusId,sendFloor,nowPage,dom);
			});
			
			//给回复添加事件生成输入框
			//需要   user_id   nick_name     user_img   opus_id  
			//     send_type     send_floor    to_user    to_nickname
			//发送时获取          send_time     msg    			
			$(".sh").on("click",".reply1",function(){
				//1.消除所有输入框			
				$(".send_msg2").remove();
				//2.生成输入框
				var li='<div id="sm2" class="send_msg2"><img src="/'
						+userImg+
						'" class="headimg_b"/><textarea class="s2" rows="4" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动的言论。">'+
						'</textarea><div class="send send1">发表评论</div></div>';
				//添加输出框
				$(this).parents(".msg").append(li);
				//3.给当前回复对象加标记以方便获取信息
				$(".reply1,.reply2").removeClass("sending");
				$(this).addClass("sending");			
			});
			
			$(".sh").on("click",".reply2",function(){
				var to_nickname=$(this).parents(".to_user").find(".nick_name").text();
				$(".send_msg2").remove();
				var li='<div id="sm2" class="send_msg2"><img src="/'
						+userImg+
						'" class="headimg_b"/><textarea class="s2" rows="4" placeholder="@'
						+to_nickname+
						'"></textarea><div class="send send2">发表评论</div></div>';
				//添加输出框
				$(this).parents(".msg").append(li);
				//给当前回复对象加标记以方便获取信息
				$(".reply1,.reply2").removeClass("sending");
				$(this).addClass("sending");
			});
			
			//发表评论
			$(".send0").click(function(){
				var sendType=0;
				alert(opusId);
				var sendFloor=findFloor(opusId);
				alert(sendFloor);
				var msg=$(".s1").val();
				if(msg.length<1){
					alert("请输入评论");
					return;
				}
				addDicuss(userId,nickName,userImg,opusId,sendType,sendFloor,msg);
				
			});
			
			$(".sh").on("click",".send1",function(){
				var sendType=1;
				var sendFloor=$(this).parents(".msg").find(".floor").text();
				var msg=$(".s2").val();
				if(msg.length<1){
					alert("请输入评论");
					return;
				}
				addDicuss(userId,nickName,userImg,opusId,sendType,sendFloor,msg);
			});
			$(".sh").on("click",".send2",function(){
				var sendType=1;
				var sendFloor=$(this).parents(".msg").find(".floor").text();
				var msg=$(".s2").val();
				if(msg.length<1){
					alert("请输入评论");
					return;
				} 
				var toUser=$(".sending").parents(".to_user").find(".user_id").text();
				var toNickName=$(".sending").parents(".to_user").find(".nick_name").text();
				addDicuss(userId,nickName,userImg,opusId,sendType,sendFloor,msg,toUser,toNickName);
			});
			
			
			
			
			
			
			
		}); 
		
	</script>
		
  </head>  
  <body>
	<div id="box">
  		<video src="./movie/1.webm" controls="controls" width="800" height="400">
		</video>
  		
  		<div id="comment">
  			<div class="title">0&nbsp;条评论</div>
  			<div id="body">
  				<div id="top">
  					<div class="all_hot blue on"><b>全部评论</b></div>
  					<div class="all_hot blue"><b>按热度排序</b></div>
  				</div>
  				<div class="send_msg">
  					<img src="/headimg/noface.gif" class="headimg_b"/>
  					<textarea class="s1" rows="4" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动的言论。"></textarea>
  					<div class="send send0">发表评论</div>
  				</div>
		  		<div id="all_msg">
		  			<div class="sh show">

		  				
		  				
			  			<div class="page_div" style="font-size:20px;">
			  				  <span>共X页</span>
			  				  <span hidden="hidden" class="current">page</span>
			  				  <span class="homepage page_on">首页</span>
			  				  <span class="prev page_on">上一页</span>
			  				  <span class="page page_on">1</span>
			  				  <span class="page page_on">2</span>
			  				  <span class="page page_on">3</span>
			  				  <span class="next page_on">下一页</span>
			  				  <span class="last page_on">末页</span>
			  			</div>	
	  				</div>
	  				<div class="sh hide">
		  				
		  								
	  				</div>
  				
  				</div>
  			</div>
  		</div>

  		
  	</div>
  	<div id="alert"></div>
  </body>
</html>