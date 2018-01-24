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
	 .hide{
	 	display:none;
	 }	
	 .show{
	 	display:block;
	 }
	 
	 #box{
			width:1160px;	
			margin:auto 0;	
			font-size:0;			
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
	 .page{
	 	font-size:13px;
	 	line-height:25px;
	 	float:right;
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
		width:705px;
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
		</style>
		<script type="text/javascript" src="js/jquery-1.11.1.js"></script> 
		<script type="text/javascript">
		$(function(){
			
			$(".reply1").click(function(){
				$(this).parents("#all_msg").find(".send_msg2,.send_msg3").removeClass("show").addClass("hide");
				$(this).parents(".msg").find(".send_msg2").removeClass("hide").addClass("show");
				location.href="#sm2";
				
			});
			$(".reply2").click(function(){
				$(this).parents("#all_msg").find(".send_msg2,.send_msg3").removeClass("show").addClass("hide");
				$(this).parents(".msg").find(".send_msg3").removeClass("hide").addClass("show");
				location.href="#sm3";
			});
			
			

		});
		
		function show_msg(){
			//获取当作品id
			var opus_id=<%= session.getAttribute("opusId")%>;
		}
		</script>   
  </head>  
  <body>
  		<div id="box">
  		<div id="comment">
  			<div class="title">22222&nbsp;条评论</div>
  			<div id="body">
  				<div id="top">
  					<div class="all_hot blue on"><b>全部评论</b></div>
  					<div class="all_hot blue"><b>按热度排序</b></div>
  					<div class="page">
  						<span>共13页</span>
  						<span>第2页</span>
  						<span>第3页</span>
  					</div>
  				</div>
  				<div class="send_msg">
  					<img src="./video/01.webp" class="headimg_b"/>
  					<textarea class="s1" rows="4" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动的言论。"></textarea>
  					<div class="send">发表评论</div>
  				</div>
		  		<div id="all_msg">
		  			<div class="show">

		  				<div class="msg">
		  					<img src="./video/01.webp" class="headimg_b"/>
		  					<div class="user_msg">
		  						<p><b class="blue" id="nick_name">nickname</b></p>
		  						<p>美伢恢复记忆的时候真的是特别感动！说实话，我觉得自从臼井仪人去世后蜡笔小新的剧场版就越来越商业化了没什么内涵。不过2016年的剧场版剧情还是蛮不错的。</p>
		  						<p id="more_msg">#9&nbsp;
		  						      时间&nbsp;
		  						   <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   <img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   <span class="blue gray_bg reply1">回复</span>
		  						</p>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg reply2">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					
		  					
		  					<div id="sm2" class="send_msg2 hide">
			  					<img src="./video/01.webp" class="headimg_b"/>
			  					<textarea class="s2" rows="4" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动的言论。"></textarea>
			  					<div class="send">发表评论</div>
	  						</div>
	  						
	  						<div id="sm3" class="send_msg3 hide">
			  					<img src="./video/01.webp" class="headimg_b"/>
			  					<textarea class="s2" rows="4" placeholder="@nickname"></textarea>
			  					<div class="send">发表评论</div>
	  						</div>
		  				</div>
		  				<div class="msg">
		  					<img src="./video/01.webp" class="headimg_b"/>
		  					<div class="user_msg">
		  						<p><b class="blue">nickname</b></p>
		  						<p>美伢恢复记忆的时候真的是特别感动！说实话，我觉得自从臼井仪人去世后蜡笔小新的剧场版就越来越商业化了没什么内涵。不过2016年的剧场版剧情还是蛮不错的。</p>
		  						<p id="more_msg">#9&nbsp;
		  						      时间&nbsp;
		  						   <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   <img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   <span class="blue gray_bg">回复</span>
		  						</p>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					
		  					
		  					<div class="send_msg hide">
			  					<img src="./video/01.webp" class="headimg_b"/>
			  					<textarea rows="4" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动的言论。"></textarea>
			  					<div class="send">发表评论</div>
	  						</div>
		  				</div>
					
	  				</div>
	  				<div class="hide">
		  				<div class="msg">
		  					<img src="./video/01.webp" class="headimg_b"/>
		  					<div class="user_msg">
		  						<p><b class="blue">nickname</b></p>
		  						<p>美伢恢复记忆的时候真的是特别感动！说实话，我觉得自从臼井仪人去世后蜡笔小新的剧场版就越来越商业化了没什么内涵。不过2016年的剧场版剧情还是蛮不错的。</p>
		  						<p id="more_msg">#9&nbsp;
		  						      时间&nbsp;
		  						   <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   <img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   <span class="blue gray_bg">回复</span>
		  						</p>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					<div class="to_user">
		  						<img src="./video/01.webp" class="headimg_s"/>
		  						<div class="to_user_msg">
		  							<p><b class="blue">nickname</b>&nbsp;叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽叽</p>
		  							<p id="more_msg">
		  						    	 时间&nbsp;
		  						  		 <img src="./img/agree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<img src="./img/disagree01.png" style="vertical-align:-1px;"/>1111&nbsp;
		  						   		<span class="blue gray_bg">回复</span>
		  							</p>
		  						</div>
		  					</div>
		  					
		  					
		  					<div class="send_msg hide">
			  					<img src="./video/01.webp" class="headimg_b"/>
			  					<textarea rows="4" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动的言论。"></textarea>
			  					<div class="send">发表评论</div>
	  						</div>
		  				</div>
		  								
	  				</div>
  					
  				</div>
  			</div>
  		</div>
  	</div>
  
  </body>
</html>
