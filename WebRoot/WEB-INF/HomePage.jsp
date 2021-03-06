<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
 <!DOCTYPE html>
<html>
  <head>
  	<meta charset="utf-8"/>
		<style type="text/css">
		*{
			margin:0;
			padding:0;
			color:black;
		}
		p{	
			word-wrap:break-word;
		}
		a{
			 text-decoration:none;
		}
		img{
			border-radius:5px; 
		}
		body{
			width:100%;
			height:auto;
		}
		ul{
			list-style-type:none;
		}
		#bilibili{
			width:1900px;
			height:auto;
			margin:0 auto;
		}
		#top{
			width:1900px;
			height:170px;
			margin:0 auto 70px auto;
			background-image:url(./images/1.jpg);
			position:relative;
			z-index:1;
		}
		#mengban{
			width:1900px;
			height:40px;
			position:absolute;
			background-color: hsla(0,0%,100%,0.4);
			box-shadow:0 1px 2px rgba(0,0,0,.1);
			z-index:-1;
		}
		#mengban::after{
			content:"";
			left:0;
			right:0;
			top:0;
			bottom:0;
			margin:-20px 0 0 0;
			position:absolute;
			background-image:url(./images/1.jpg);
			filter:blur(10px);
			z-index:-1;
		}

		#nav_menu{			
			top:0;
			width:1160px;
			height:40px;
			margin:0 auto;
			text-align:center;
			position:relative;
			z-index:1;
			font-size:12px;
		}
		
		#nav_menu li{		
			float:left;
			line-height:40px;		
		}
		#nav_menu a{
			padding:0 10px;
		}
		#nav_menu img{
			width:30px;
			height:30px;
			margin:10px 0 0 0;
		}
		#menur{
			float:right;
		}
		#upload{
			height:48px;
			background-image:url(./img/03.png);
		}

		#menul i{
			display:inline-block;
			width:18px;
			height:16px;
			vertical-align:-3px;
			background-image:url(./img/01.png);
		}
		#gamed{
			width:400px;
			height:300px;
			padding:10px;
		}
		#userd{
			width:300px;
			height:300px;
			left:670px;
			z-index:-1;		
		}
		#waitd{
			width:300px;
			height:300px;		
			left:830px;			
		}
		#collectiond{
			width:300px;
			height:300px;		
			left:900px;	
		}
		#historyd{
			width:300px;
			height:300px;		
			left:930px;	
		}
		.navshow{
			box-shadow:1px 1px 1px rgba(0,0,0,.3);
			background-color:white;
			position:absolute;
			top:50px;
			opacity:0;
			display:none;		
		}
		
		#classify{
			width:1160px;
			height:50px;
			margin:130px auto 0 auto;
			padding:10px 0 0 0;
		}
		
		#classify li>a{
			width:48px;
			height:48px;
			display:inline-block;
			padding:0 9px 0 0;
			font-size:13px;
		}
		
		#classify li{
			float:left;
			text-align:center;
			font-size:15px;
			line-height:20px;
	
		}

		#classify span{
			font-size:10px;
			color:white;
			border-radius:5px;
			padding:0 5px;
			background-color:RGB(254,184,207);
		}
		.classify_show{
			width:200px;
			font-size:15px;	
			line-height:25px;
			box-shadow:1px 1px 1px rgba(0,0,0,.3);	
			display:none;
			position:absolute;
			text-align:left;
			background-color:white;		
		}
		.classify_show img{
			width:8px;
			height:10px;
			padding:0 10px 0 10px;
		}
		#right_ico{
			display:none;
		}
		#classify li:hover .classify_show{
			display:block;
		}
		.classify_show a{
		 display:block;
		}
		
		
		
		
		/*  图片轮播等等等   */
		
		#tbody{
			width:1160px;
			height:500px;
			margin:0 auto;
		}
		#first{
			width:1160px;
			height:220px;
			padding:0 0 40px 0;	
		}
		#first_l{
			width:440px;
			height:220px;
			float:left;
			position:relative;
			overflow:hidden;
		}
		#first_l_img{
			width:2200px;
			position:relative;
		}
		#first_l_mb{	    
			height:35px;
			width:440px;
			position:absolute;
			z-index:1;
			bottom:0;
		    background: -webkit-linear-gradient(bottom,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* Opera 11.1 - 12.0 */
			background: -o-linear-gradient(top,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* Firefox 3.6 - 15 */
			background: -moz-linear-gradient(top,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* 标准的语法 */
		    background: linear-gradient(to bottom,rgba(0, 0, 0, 0.1) 10%, rgba(0, 0, 0, 0.3) 35%, rgba(0, 0, 0, 0.5) 65%, rgba(0, 0, 0, 0.6)););
		}	
		#first_l_img img{
			float:left;
		}
		.img_msg{
			color:white;
			font-size:15px;
		    line-height:35px;
			padding:0 0 0 10px;
			display:none;
		}
		#first_l_ico{
			width:150px;
			height:30px;
			position:absolute;
			font-size:0;
			right:0;
			bottom:0;
			z-index:1;
		}
		.img_ico{
			width:20px;
			height:20px;
			display:inline-block;
			margin:0 5px 0 0;
		}
		#first_l_more{
			background-color:RGBA(0,0,0,0.5);
			padding:3px;
			border-radius:5px;
			position:absolute;
			right:10px;
			bottom:40px;
			z-index:1;
			display:none;
		}
		#first_l:hover #first_l_more{
			display:block;
		}
		
		
		#first_r{
			width:720px;
			height:220px;
			float:right;
			position:relative;
		}
		.video{
			width:160px;
			height:100px;
			margin:0 0 20px 20px;
			background-image:url(./video/01.webp);
			position:relative;
			float:left;
			overflow:hidden;
		}
		.jianbian{
			height:20px;
			width:160px;
			position:absolute;
			bottom:0;
			background: -webkit-linear-gradient(bottom,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* Opera 11.1 - 12.0 */
			background: -o-linear-gradient(top,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* Firefox 3.6 - 15 */
			background: -moz-linear-gradient(top,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* 标准的语法 */
		    background:linear-gradient(transparent,rgba(0,0,0,.1) 20%,rgba(0,0,0,.2) 35%,rgba(0,0,0,.6) 65%,rgba(0,0,0,.9))
		}
		.zhuti{
			height:40px;
			width:150px;
			position:absolute;
			bottom:-20px;
			color:white;
			font-size:12px;
			line-height:20px;
			padding:0 5px;
		}
		.video_mb{
			width:160px;
			height:100px;
			background-color:RGBA(0,0,0,0.7);
			display:none;
		}
		.video_mb div{
			position:absolute;
			bottom:5px;
			left:3px;
		}
		.video_mb p{
			color:RGB(140,120,80);
			font-size:13px; 
		}
		.video img{
			position:absolute;
			bottom:5px;
			right:5px;
			display:none;
		}
		
		
		
		#tuiguang{
			width:1160px;
			height:213px;
			padding:0 0 15px 0;
		}
		#tuiguang_l{
			width:900px;
			height:228px;
			float:left;
		}
		.headline{
			height:40px;
			width:900px;
			padding:0 0 20px 0;
		}
		.headline img{
			position:relative;
			top:5px;
		}
		.headline b{
			font-size:25px;
			margin:0 20px 0 0;
		}
		.headline span{
			font-size:13px;
			cursor:pointer;
		}
		.headline a span:hover{
			color:RGB(90,190,240);
		}
		
		.tuiguang_video{
			width:900px;
			height:168px;

		}
		.video_all{
			width:160px;
			height:148px;
			margin:0 20px 20px 0;
			float:left;
			position:relative;
			font-size:13px;
			overflow:hidden;
		}
		.video_top{
			width:160px;
			height:100px;
			margin:0 0 8px 0;
			background-image:url(./video/01.webp);
			position:relative;
		}
		.video_all p span{
			color:gray;
		}
		.video_all i{
			
		}
		.video_top_mb{
			width:160px;
			height:100px;
			background-color:RGBA(0,0,0,0.4);
			display:none;
		}
		.video_all>img{
			position:absolute;
			top:70px;
			right:5px;
			display:none;
		}
		.video_top span{
			position:absolute;
			bottom:5px;
			left:5px;
			color:white;
			display:none;
		}
		#tuiguang_r{
			width:260px;
			height:190px;
			float:right;
		}
		#tuiguang_r_top{
			width:260px;
			height:40px;
			margin:0 0 15px 0;
			background-color:RGB(230,230,240);
			font-size:10px;
			line-height:40px;
			border-radius:5px;
		}
		#tuiguang_r_top span{
			padding:0 20px;
		}

		.blue:hover span{
			color:RGB(90,190,240);
		}
		.headline div{
			height:20px;
			font-size:0;
			border:1px solid gray;
			border-radius:5px;
			line-height:20px;
			float:right;
			margin:20px 0 0 20px;
		}
		
		.dongtai{
			cursor:pointer;
		}
		.dongtai i{
			display:inline-block;
			width:20px;
			height:20px;
			background-image:url(./img/16.png);
			margin:0 0 0 5px;
		}
		.dongtai span{
			font-size:13px;
			vertical-align:top;
			margin:0 5px 0 0;
		}
		
		.gengduo{
			cursor:pointer;
			margin:20px 20px 0 20px !important;
		}
		.gengduo i{
			font-style:normal;
			font-size:15px;
			margin:0 8px 0 0;
		}
		.gengduo span{
			margin:0 0 0 8px;
		}
		.transform{
			transition:all 300ms linear 0s;
			transform:rotate(360deg);
		}
		.transform2{
			transition:all 300ms linear 0s;
			transform:rotate(0deg);
		}
		
		
		
		#zhibo{
			width:1160px;
			height:400px;
		}
		#zhibo_l{
			width:900px;
			float:left;
		}
		.zhibo_video{
			width:160px;
			height:148px;
			margin:0 20px 20px 0;
			float:left;		
			overflow:hidden;
		}
		#zhibo_img{
			width:160px;
			height:100px;
			margin:0 0 8px 0;
			background-image:url(./video/01.webp);
			position:relative;
			
		}
		#zhibo_img div{
			width:150px;
			height:20px;
			padding:0 5px;
			position:absolute;
			bottom:0;
			color:white;
			font-size:13px;
			 background: -webkit-linear-gradient(bottom,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* Opera 11.1 - 12.0 */
			background: -o-linear-gradient(top,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* Firefox 3.6 - 15 */
			background: -moz-linear-gradient(top,rgba(0,0,0,0.3),rgba(0,0,0,0));
			/* 标准的语法 */
		    background: linear-gradient(to bottom,rgba(0, 0, 0, 0.1) 10%, rgba(0, 0, 0, 0.3) 35%, rgba(0, 0, 0, 0.5) 65%, rgba(0, 0, 0, 0.6)););
		}
		#zhibo_img span{
			color:white;
			font-size:13px;
			float:right;
		}
		#zhibo_msg{
			width:160px;
			height:20px;
			font-size:12px;
			line-height:20px;
			overflow:hidden;
		}
		#zhibo_fenlei{
			width:160px;
			width:160px;
			height:20px;
			font-size:12px;
			line-height:20px;
			color:RGB(150,160,170);
		}
		#zhibo_r{
			width:260px;
			height:400px;
			float:right;
		}	
		#zhibo_r_t{
			width:260px;
			height:20px;
			margin:20px 0;
			font-size:0;
		}
		#zhibo_r_t span{
			display:inline-block;
			height:20px;
			line-height:20px;
			font-size:13px;
			margin:0 20px 0 0;
			cursor:pointer;
		}
		#zhibo_r_t span:hover{
			color:RGB(90,190,240);
		}
		#zhibo_three{
			width:260px;
			height:320px;
			overflow:hidden;
			position:relative;
		}
		#zhibo123{
			position:absolute;
			width:780px;
			height:320px;
			left:-520px;
		}
		#zhibo123>div{
			width:260px;
			height:320px;
			float:left;
		}
		.zhibopaihang{
			width:260px;
			height:40px;
			margin:0 0 15px 0;
			cursor:pointer;
		}
		.zhibopaihang>div{
			float:left;
			margin:0 10px 0 0;
		}
		
		.zb1{
			width:20px;
			height:20px;
			background-color:RGB(240,90,140);
			text-align:center;
			color:white;
			font-size:15px;
			line-height:20px;
			border-radius:5px;
		}
		.gray{
			background-color:gray;
		}
		.zb2 img{
			border-radius:90px;
		}
		.zb3{
			width:170px;
		}
		.zb3 p{
			font-size:13px;
			line-height:20px;
		}
		.zb3 img{
			border-radius:0;
			vertical-align:-2px;
		}
		.float_r{
			float:right;
		}
		
		
		#lunbo2{
			width:260px;
			height:248px;
			position:relative;
			overflow:hidden;
		}
		#lunbo_img{
			width:780px;
			height:248px;
		}
		.lunbo_img{
			position:absolute;
		}
		.lunbo_img img{
			float:left;
		}
		#lunbo_mb{
			height:50px;
			width:260px;
			background: linear-gradient(to bottom,rgba(0, 0, 0, 0.4) 50%,rgba(0, 0, 0, 0.7) 50%, rgba(0, 0, 0, 0.7)););
		}
		.lunbo_mb{
			position:absolute;
			bottom:0;
		}
		.lunbo_msg{
			position:absolute;
		}
		#lunbo_msg{
			bottom:30px;
		}
		.lunbo_msg div{
			padding:0 5px;
			color:white;
			font-size:12px;
			display:none;
		}
		#lunbo_ico{
			width:70px;
			height:25px;
			bottom:0;
			left:100px;
		}
		.lunbo_ico{
			position:absolute;
			z-index:2;
		}
		#lunbo_ico div{
			display:inline-block;
			width:10px;
			height:5px;
			border-radius:10px;
			background-color:white;
			transition:all 300ms linear 0s;
		}
		.lunbo_css{
			width:30px !important;
			background-color:RGB(240,90,140) !important;
		}
		#lunbo_b{
			padding:15px 0 0 0;
		}
		#lunbo_b img{
			float:left;
			width:125px;
			margin:0 5px 0 0;
		}
		
		.box{
			width:1160px;
			height:380px;
			margin:0 0 20px 0;
		}
		.video_box{
			display:none;
		}
		.left{
			width:900px;
			float:left;
		}
		.right{
			width:260px;
			float:right;
		}
		.right_t{
			height:20px;
			margin:20px 0 20px 0;
			line-height:20px;
		}
		.right_t span{
			font-size:12px;
			display:inline-block;
		}
		.right_t b{
			vertical-align:bottom;
			margin:0 20px 0 0;
		}
		.right_t select{
			float:right;
		}
		
		a.blue:hover b{
			color:RGB(90,190,240);
		}
		.sh:hover{
			color:RGB(90,190,240);
		}
		.click{
			color:RGB(90,190,240) !important;
			border-bottom:1px solid RGB(90,190,240) !important;
		}
		
		.ph{
			height:20px;
			margin:0 0 15px;
		}
		.ph_first{
			height:60px;
			margin:0 0 15px;
		}
		.four_gray{
			display:inline-block;
			width:20px;
			height:20px;
			line-height:20px;
			text-align:center;
			color:white;
			border-radius:5px;
			font-size:13px;
			background-color:RGB(200,210,210);
		}
		.three_red{
			display:inline-block;
			width:20px;
			height:20px;
			line-height:20px;
			text-align:center;
			color:white;
			border-radius:5px;
			font-size:13px;
			background-color:RGB(240,90,140) !important;
			vertical-align:top;
		}
		.three_red_img{
			display:inline-block;
			width:80px;
			height:50px;
		}
		.three_red_msg{
			float:right;
			height:50px;
			width:145px;
			padding:0 0 0 3px;		
		}
		.one_p{
			font-size:13px;
			line-height:16px;
			height:32px;
		}
		.three_red_msg span{
			color:RGB(200,200,240);
			font-size:13px;
			line-height:18px;
			height:18px;
			
		}
		.six_p{
			display:inline-block;
			line-height:20px;
			font-size:12px;
		}
		.ph_more{
			height:30px;
			margin:0 0 20px 0;
			font-size:15px;
			line-height:30px;
			background-color:RGB(230,230,240);
			text-align:center;
			border-radius:5px;
		}
		.ph_more:hover{
			background-color:RGB(200,210,210);
		}
		.seven_day{
			display:inline-block;
			width:640px;
			height:30px;
			font-size:0;
			line-height:30px;
			padding:0 0 4px 0;
		}
		
		#fanju{
			width:1160px;
			height:500px;
			margin:0 0 20px 0;
		}
		.fan{
			width:880px;
			height:30px;
			margin:0 0 20px;
		}
		.fan img{
			vertical-align:-5px;
		}
		.fan b{
			font-size:30px;
			
		}
		.seven_day span{
			display:inline-block;
			font-size:20px;
			width:80px;
			text-align:center;
			border-bottom:1px solid RGB(230,230,240);
			cursor:pointer;
		}
		#fan_box{
			width:880px;
			height:430px;
			font-size:0;
			overflow:auto;
		}
		#new_fan{
			float:right;
			border:1px solid RGB(240,90,140);
			font-size:15px;
			color:RGB(240,90,140);
			border-radius:5px;
			padding:5px 10px;
			margin:10px 0 0 0;
		}
		#new_fan:hover{		
			color:white;
			background-color:RGB(240,90,140);
		}
		.fan_all{
			width:180px;
			height:72px;
			padding:25px 34px 0 0;
			display:inline-block;			
		}
		.fan_img{
			
			margin:0 10px 0 0;
			float:left;
		}
		.fan_msg{
			float:right;
			width:98px;
			height:72px;
			font-size:13px;
			position:relative;
		}
		.fan_p{
			width:98px;
			height:32px;
			line-height:16px;
		}
		.fan_p2{
			position:absolute;
			line-height:16px;
			font-size:13px;
			bottom:0;
			color:RGB(170,170,170);
		}
		.fan_p2 span{
			background-color:RGB(240,90,140);
			padding:2px 5px;
			border-radius:10px;
			color:white;
		}
		.fan_p:hover{
		 	color:RGB(90,190,240);
		}
		.span_gray{
			margin:0 0 0 10px;
			color:RGB(170,170,170);
		}
		
		
		
		#lunbo3{
			width:260px;
			height:268px;
			position:relative;
			overflow:hidden;
		}
		#lunbo_img3{
			width:520px;
			height:268px;
		}
		#lunbo_mb3{
			height:30px;
			width:260px;
			background: linear-gradient(to bottom,rgba(0, 0, 0, 0.4) 50%,rgba(0, 0, 0, 0.7) 50%, rgba(0, 0, 0, 0.7)););
		}
		#lunbo_msg3{
			bottom:5px;
		}
		#lunbo_ico3{
			width:50px;
			height:25px;
			bottom:0;
			right:10px;
		}
		#lunbo_ico3 div{
			display:inline-block;
			width:10px;
			height:5px;
			border-radius:10px;
			background-color:white;
			transition:all 300ms linear 0s;
		}
		#guochuang{
			width:1160px;
			height:400px;
			margin:0 0 20px 0;
		}
		#fan_box2{
			width:880px;
			height:330px;
			font-size:0;
			overflow:auto;
		}
		
		
		#lunbo4{
			width:260px;
			height:90px;
			position:relative;
			overflow:hidden;
		}
		#lunbo_img4{
			width:520px;
			height:90px;
		}
		#lunbo_mb4{
			height:30px;
			width:260px;
			background: linear-gradient(to bottom,rgba(0, 0, 0, 0.1) 50%,rgba(0, 0, 0, 0.2)););
		}
		#lunbo_ico4{
			width:50px;
			height:25px;
			bottom:0;
			right:10px;
		}
		#lunbo_ico4 div{
			display:inline-block;
			width:10px;
			height:5px;
			border-radius:10px;
			background-color:white;
			transition:all 300ms linear 0s;
		}
		
		</style>
		<script type="text/javascript" src="js/jquery-1.11.1.js"></script> 
		<script type="text/javascript">
			$(function(){	
			  $("#nav_menu li").hover(
					function(){
						$(this).css("background-color","RGB(250,230,210)");
						$(this).find(".navshow").css("display","block").stop().animate({opacity:"1",top:"40px"},300);
					},function(){
						$(this).css("background-color","");
						$(this).find(".navshow").css("display","none").stop().animate({opacity:"0",top:"50px"},300);
					}
				);
				
				$("#user").hover(
					function(){
						$(this).css("background-color","");
						$(this).find("img").stop().animate({width:"60px",height:"60px",margin:"20px 0 0 0"},300).css("border","3px solid white");
					},function(){
						$(this).css("background-color","");
						$(this).find("img").stop().animate({width:"30px",height:"30px",margin:"10px 0 0 0"},300).css("border","");
					}
				);
				$(".classify_show a").hover(
					function(){
						$(this).css("background-color","RGB(229,233,239)");
						$(this).find("img").stop().animate({padding:"0 10px 0 15px"},200);
						$(this).find("#right_ico").stop().animate({margin:"5px 0 0 10px"},200).css("display","inline-block");
					},
					function(){
						$(this).css("background-color","");
						$(this).find("img").stop().animate({padding:"0 10px 0 10px"},300);
						$(this).find("#right_ico").stop().animate({margin:"5px 0 0 0"},200).css("display","none");
					}
				);
				$(".img_ico").hover(
					function(){
						if($(this).find("img").attr("src")!="./img/12.png"){
							$(this).find("img").attr("src","./img/14.png");
						}
					},
					function(){
						if($(this).find("img").attr("src")!="./img/12.png"){
							$(this).find("img").attr("src","./img/13.png");
						}
					}
				);
				
				
				var ico=$(".img_ico");
				var msg=$(".img_msg");
				var img=$("#first_l_img");
				var nowId=0;				
				var change=function(id){
					if(id+1){
						nextId=id;
					}else{
						nextId=(nowId+1)%5;
					}
						nowId=nextId;
						ico.find("img").attr("src","./img/13.png");
						$(ico[nowId]).find("img").attr("src","./img/12.png");
						msg.css("display","none");
						$(msg[nowId]).css("display","block");
						img.animate({left:"-"+440*nowId+"px"},500);
				}
				var intervalId=setInterval(change,5000);
				
				$.each(ico,function(index){
					$(this).click(function(){
						clearInterval(intervalId);
						change(index);
						intervalId=setInterval(change,5000);
					});
				});
				
				
				
				$(".video").hover(
					function(){
						$(this).find(".video_mb").css("display","block");
						$(this).find(".jianbian").css("display","none");
						$(this).find("img").css("display","block");
						$(this).find(".zhuti").css("bottom","50px");
					},
					function(){
						$(this).find(".video_mb").css("display","none");
						$(this).find(".jianbian").css("display","block");
						$(this).find("img").css("display","none");
						$(this).find(".zhuti").css("bottom","-20px");
					}
				);
				
				
				//稍后再看
				$(".wait_ico").click(function(){
					alert("稍后再看的点击事件");
				});
				
				$(".video_all").hover(
					function(){
						$(this).find(".video_top_mb").css("display","block");
						$(this).find(".wait_ico").css("display","block");
						$(this).find(".video_top span").css("display","block");
						$(this).find("p").css("color","RGB(90,190,240)").animate({height:"40px"},200);
					},
					function(){
						$(this).find(".video_top_mb").css("display","none");
						$(this).find(".wait_ico").css("display","none");
						$(this).find(".video_top span").css("display","none");
						$(this).find("p").css("color","").animate({height:"20px"},200);
					}
				);
				$(".dongtai").hover(
					function(){
						$(this).css("background-color","RGB(200,200,210)");
						$(this).find("i").removeClass("transform2").addClass("transform");
					},
					function(){
						$(this).css("background-color","");
						$(this).find("i").removeClass("transform").addClass("transform2");
					}
					
				);
				$(".gengduo").hover(
					function(){
						$(this).css("background-color","RGB(200,200,210)");
						$(this).find("i").stop().animate({margin:"0 5px 0 3px"},200);
						$(this).find("span").stop().animate({margin:"0 3px 0 5px"},200);
					},
					function(){
						$(this).css("background-color","");
						$(this).find("i").stop().animate({margin:"0 8px 0 0"},200);
						$(this).find("span").stop().animate({margin:"0 0 0 8px"},200);
					}
					
				);
				$(".zhibo_video").hover(
					function(){
						$(this).find("#zhibo_msg").css("color","RGB(90,190,240)").animate({height:"40px"},200);
						$(this).find("#zhibo_img").css("background-image","url(./video/02.webp)");
					},
					function(){
						$(this).find("#zhibo_msg").css("color","").animate({height:"20px"},200);
						$(this).find("#zhibo_img").css("background-image","url(./video/01.webp)");
					}
				);


				
				$.each($("#zhibo_r_t span"),function(index){
					$(this).click(function(){
						$("#zhibo123").animate({left:"-"+260*index+"px"},300);
						$("#zhibo_r_t span").removeClass("click");
						$(this).addClass("click");
					});
				});
				
				
				
				var ico2=$("#lunbo2 .lunbo_ico div");
				var msg2=$("#lunbo2 .lunbo_msg div");
				var img2=$("#lunbo2 .lunbo_img");
				var now=0;				
				var lunbo=function(id){
					if(id+1){
						next=id;
					}else{
						next=(now+1)%3;
					}
						now=next;
						msg2.css("display","none");
						$(msg2[now]).css("display","block");
						ico2.removeClass("lunbo_css");
						$(ico2[now]).addClass("lunbo_css");
						img2.animate({left:"-"+260*now+"px"},300);
						

				}
				var intervalId2=setInterval(lunbo,2000);
				
				$.each(ico2,function(index){
					$(this).hover(
						function(){
							clearInterval(intervalId2);
							lunbo(index);
							intervalId2=setInterval(lunbo,2000);
						},
						function(){
							
						}
					);
				});
				
				$(".blue_f").hover(
					function(){
						$(this).find(".blue").css("color","RGB(90,190,240)");
						
					},
					function(){
						$(this).find(".blue").css("color","");
					}
				
				);
				
				//有新动态 最新投稿的切换事件
				
				$.each($(".sh_f"),function(index){
					$.each($(this).find(".sh"),function(index2){
						$(this).click(function(){
						 	$($(".sh_f")[index]).find(".video_box").css("display","none");
						 	$($($(".sh_f")[index]).find(".video_box")[index2]).css("display","block");
						 	$(this).siblings().removeClass("click");
						 	$(this).addClass("click");
						});					
					});
					
				});		
				
				
				var ico3=$("#lunbo3 .lunbo_ico div");
				var msg3=$("#lunbo3 .lunbo_msg div");
				var img3=$("#lunbo3 .lunbo_img");
				var now3=0;				
				var lunbo3=function(id){
					if(id+1){
						next=id;
					}else{
						next=(now3+1)%2;
					}
						now3=next;
						msg3.css("display","none");
						$(msg3[now3]).css("display","block");
						ico3.removeClass("lunbo_css");
						$(ico3[now3]).addClass("lunbo_css");
						img3.animate({left:"-"+260*now3+"px"},300);
						

				}
				var intervalId3=setInterval(lunbo3,2000);
				
				$.each(ico3,function(index){
					$(this).hover(
						function(){
							clearInterval(intervalId3);
							lunbo3(index);
							intervalId3=setInterval(lunbo3,2000);
						},
						function(){
							
						}
					);
				});
				
				
				
				
				var ico4=$("#lunbo4 .lunbo_ico div");
				var img4=$("#lunbo4 .lunbo_img");
				var now4=0;				
				var lunbo4=function(id){
					if(id+1){
						next=id;
					}else{
						next=(now4+1)%2;
					}
						now4=next;
						ico4.removeClass("lunbo_css");
						$(ico4[now4]).addClass("lunbo_css");
						img4.animate({left:"-"+260*now3+"px"},300);
						

				}
				var intervalId4=setInterval(lunbo4,3000);
				
				$.each(ico4,function(index){
					$(this).hover(
						function(){
							clearInterval(intervalId4);
							lunbo4(index);
							intervalId4=setInterval(lunbo4,2000);
						},
						function(){
							
						}
					);
				});
							
			});
		</script>   
  </head>  
  <body>
  		<div id="bilibili">
	  		<div id="top">
	  			<div id="mengban"></div>
	  			<div id="nav_menu">
		  			<div id="menul">
			  			<ul>
			  				<li>
			  					<a href="">
				  					<i></i>
				  					主站
			  					</a>
			  				</li>
			  				<li><a href="">画友</a></li>
			  				<li>
			  					<a href="">游戏中心</a>
			  					<div id="gamed" class="navshow"></div>
			  				</li>
			  				<li><a href="">直播</a></li>
			  				<li><a href="">会员购</a></li>
			  				<li><a href="">周边</a></li>
			  				<li><a href="">移动端</a></li>
			  			</ul>
		  			</div>
		  			<div id="menur">
			  			<ul>
			  				<li id="user">
			  					<a href="./demo.html"><img src="./img/02.png" style="border-radius:90px"></a>
			  					<div id="userd" class="navshow"></div>	
			  				</li>
			  				<li><a href="">消息</a></li>
			  				<li><a href="">动态</a></li>
			  				<li><a href="">稍后再看</a>
			  					<div id="waitd" class="navshow"></div>
			  				</li>
			  				<li><a href="">收藏夹</a>
			  					<div id="collectiond" class="navshow"></div>	
			  				</li>
			  				<li><a href="">历史</a>
			  					<div id="historyd" class="navshow"></div>	
			  				</li>
			  				<li id="upload"><a href="" >投稿</a></li>
			  			</ul>
		  			</div>
	  			</div>
	  			<div id="classify">
	  				<ul>
	  					<li><a href="classify.html">
	  						<div><img src="./img/04.png" style="vertical-align:top"></div>
	  						<div>首页</div>
	  					</a>
	  					<div class="classify_show"></div>
	  					</li>
	  					<li><a>
	  						<span>99</span>
	  						<div>动画</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>MAD·AMV<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>MMD·3D<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>短片·手书·配音<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>综合<img id="right_ico" src="./img/11.png"/></p></a>
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>番剧</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>连载动画<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>完结动画<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>资讯<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>官方延伸<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>新番时间表<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>番剧索引<img id="right_ico" src="./img/11.png"/></p></a>
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999+</span>
	  						<div>国创</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>国产动画<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>国产原创相关<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>布袋戏<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>资讯<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>新番时间表<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>国产动画索引<img id="right_ico" src="./img/11.png"/></p></a>
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>音乐</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>原创音乐<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>翻唱<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>VOCALOID·UTAU<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>演奏<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>三次元音乐<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>OP/ED/OST<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>音乐选集<img id="right_ico" src="./img/11.png"/></p></a>						
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>舞蹈</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>宅舞<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>三次元舞蹈<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>舞蹈教程<img id="right_ico" src="./img/11.png"/></p></a>
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>游戏</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>单机游戏<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>电子竞技<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>手机游戏<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>网络游戏<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>桌牌棋游<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>GMV<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>音游<img id="right_ico" src="./img/11.png"/></p></a>	
	  						<a href="classify2.html"><p><img src="./img/10.png"/>Mugen<img id="right_ico" src="./img/11.png"/></p></a>											
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>科技</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>趣味科普人文<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>野生技术协会<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>演讲公开课<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>星海<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>数码<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>机械<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>汽车<img id="right_ico" src="./img/11.png"/></p></a>						
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>生活</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>搞笑<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>日常<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>美食园<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>动物园<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>手工<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>绘画<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>ASMR<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>运动<img id="right_ico" src="./img/11.png"/></p></a>						
	  						<a href="classify2.html"><p><img src="./img/10.png"/>其他<img id="right_ico" src="./img/11.png"/></p></a>												
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>鬼畜</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>鬼畜调教<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>音MAD<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>人力VOCALOID<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>教程演示<img id="right_ico" src="./img/11.png"/></p></a>					
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>时尚</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>美妆<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>服饰<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>健身<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>资讯<img id="right_ico" src="./img/11.png"/></p></a>
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>广告</div>
	  					</a>
	  					<div class="classify_show">
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>娱乐</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>综艺<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>明星<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>Korea相关<img id="right_ico" src="./img/11.png"/></p></a>					
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>影视</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>影视杂谈<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>影视剪辑<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>短片<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>预告·资讯<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>特摄<img id="right_ico" src="./img/11.png"/></p></a>					
	  					</div>
	  					</li>
	  					<li><a href="classify.html">
	  						<span>999</span>
	  						<div>放映厅</div>
	  					</a>
	  					<div class="classify_show">
	  						<a href="classify2.html"><p><img src="./img/10.png"/>纪录片<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>电影<img id="right_ico" src="./img/11.png"/></p></a>
	  						<a href="classify2.html"><p><img src="./img/10.png"/>电视剧<img id="right_ico" src="./img/11.png"/></p></a>				
	  					</div>
	  					</li>
	  					
	  					<li><a href="classify.html">
	  						<div><img src="./img/05.png"/></div>
	  						<div>专栏</div>
	  					</a>
	  					<div class="classify_show"></div>
	  					</li>
	  					<li><a href="classify.html">
	  						<div><img src="./img/08.png"/></div>
	  						<div>广场</div>
	  					</a>
	  					<div class="classify_show"></div>
	  					</li>
	  					<li><a href="classify.html">
	  						<div><img src="./img/06.png"/></div>
	  						<div>直播</div>
	  					</a>
	  					<div class="classify_show"></div>
	  					</li>
	  					<li><a href="classify.html">
	  						<div><img src="./img/07.png"/></div>
	  						<div>小黑屋</div>
	  					</a>
	  					<div class="classify_show"></div>
	  					</li>
	  				</ul>
	  				<img src="./gif/panada.gif" style="float:right;margin:-5px 0 0 0"/>
	  			</div>
	  		</div>
	  		<div id="tbody">
	  			<div id="first">
	  				<div id="first_l">
	  					<div id="first_l_img">
	  						<a href="./lunbo.html"><img src="./lunbo/1.webp"/></a>
	  						<a href="./lunbo.html"><img src="./lunbo/2.webp"/></a>
	  						<a href="./lunbo.html"><img src="./lunbo/3.webp"/></a>
	  						<a href="./lunbo.html"><img src="./lunbo/4.webp"/></a>
	  						<a href="./lunbo.html"><img src="./lunbo/5.webp"/></a>
	  					</div>
	  					<div id="first_l_mb">
	  						<a href="./lunbo.html"><div class="img_msg" style="display:block">是我，b站方文山</div></a>
	  						<a href="./lunbo.html"><div class="img_msg">你喜欢这个故事吗？</div></a>
	  						<a href="./lunbo.html"><div class="img_msg">诶嘿~</div></a>
	  						<a href="./lunbo.html"><div class="img_msg">黎明将至，春宵苦短</div></a>
	  						<a href="./lunbo.html"><div class="img_msg">(´ｰ∀ｰ`)</div></a>
	  					</div>
	  					<div id="first_l_ico">
	  						<div class="img_ico"><img src="./img/12.png"/></div>
	  						<div class="img_ico"><img src="./img/13.png"/></div>
	  						<div class="img_ico"><img src="./img/13.png"/></div>
	  						<div class="img_ico"><img src="./img/13.png"/></div>
	  						<div class="img_ico"><img src="./img/13.png"/></div>
	  					</div>
	  					<div id="first_l_more"><a href="./lunbo.html" style="color:white">更多></a></div>
	  				</div>
	  				<div id="first_r">
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  					<div class="video">
	  						<div class="jianbian"></div>
	  						<div class="zhuti">
	  							【Fate】我们罗马市民都是啊啊啊啊
	  						</div>
	  						<a href="./lunbo.html" title="【Fate】我们罗马市民都是"><div class="video_mb">
	  							<div>
	  								<p>up主：</p>
	  								<p>播放：</p>
	  							</div>
	  						</div></a>
	  						<img src="img/15.png" title="稍后再看" class="wait_ico"/>
	  					</div>
	  				</div>
	  			</div>
	  			
	  			<div id="tuiguang">
	  				<div id="tuiguang_l">
		  				<div class="headline">
		  					<img src="./headline/tuiguang.png"/>
		  					<b>推广</b>
		  					<a href="./tuiguang.html"><span>我喜欢篮球队的电视君</span></a>
		  				</div>
		  				<div class="tuiguang_video">
		  					
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p>【Fate说】奥利匹克之花尼禄</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p>【Fate说】奥利匹克之花尼禄</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p>【Fate说】奥利匹克之花尼禄</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p>【Fate说】奥利匹克之花尼禄</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p>【Fate说】奥利匹克之花尼禄</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>

		  				</div>
		  			</div>
		  			<div id="tuiguang_r">
		  				<div id="tuiguang_r_top">
		  					<a href="./other.html" class="blue"><span style="border-right:1px solid gray;">在线人数:111111</span></a>
		  					<a href="./other.html" class="blue"><span>最新投稿:-</span></a>
		  				</div>
		  				<img src="./guanggao/01.jpg"/>
		  			</div>
	  			</div>
	  			
	  			<div id="zhibo">
	  				<div id="zhibo_l">
	  					<div class="headline">
		  					<img src="./headline/zhibo.png"/>
		  					<b>正在直播</b>
		  					<span style="margin:0 20px 0 0;">当前共有<i style="color:RGB(90,190,240);font-style:normal;">33333</i>个在线直播</span>
		  					<a href="./tuiguang.html"><span><img src="./img/18.png" style="vertical-align:2px;"/>233秒居然！！！！</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				<a href="./other.html"><div class="zhibo_video">
		  					<div id="zhibo_img">
		  						<div>up主<span>2.2万</span></div>
		  					</div>						
		  					<div id="zhibo_msg">
		  						【坂本】直播穷三代 开播毁一生	
		  					</div>
		  					<div id="zhibo_fenlei">
		  						游戏分区 其他游戏
		  					</div>	  					
		  				</div></a>
		  				
		  			</div>
	  				<div id="zhibo_r">
	  					<div id="zhibo_r_t">
							<span>直播排行</span>
							<span>关注的主播</span>
							<span class="click">为你推荐</span>
	  					</div>
	  					<div id="zhibo_three">
		  					<div id="zhibo123">
			  					<div>
			  						<a href="./other.html"><div class="zhibopaihang blue_f">
			  							<div class="zb1">1</div>
			  							<div class="zb2"><img src="./touxiang/01.webp"/></div>
			  							<div class="zb3">
			  								<p><span class="blue">风教主解说</span><span  style="color:gray" class="float_r"><i><img src="./img/20.png"></i>2.7万</span></p>
			  								<p style="color:gray">不能场均12杀，吃什么鸡</p>
			  							</div>
			  						</div>
			  						</a>
			  						<a href="./other.html"><div class="zhibopaihang blue_f">
			  							<div class="zb1">2</div>
			  							<div class="zb2"><img src="./touxiang/01.webp"/></div>
			  							<div class="zb3">
			  								<p><span class="blue">风教主解说</span><span  style="color:gray" class="float_r"><i><img src="./img/20.png"></i>2.7万</span></p>
			  								<p style="color:gray">不能场均12杀，吃什么鸡</p>
			  							</div>
			  						</div>
			  						</a>
			  						<a href="./other.html"><div class="zhibopaihang blue_f">
			  							<div class="zb1">3</div>
			  							<div class="zb2"><img src="./touxiang/01.webp"/></div>
			  							<div class="zb3">
			  								<p><span class="blue">风教主解说</span><span  style="color:gray" class="float_r"><i><img src="./img/20.png"></i>2.7万</span></p>
			  								<p style="color:gray">不能场均12杀，吃什么鸡</p>
			  							</div>
			  						</div>
			  						</a>
			  						<a href="./other.html"><div class="zhibopaihang blue_f">
			  							<div class="zb1 gray">4</div>
			  							<div class="zb2"><img src="./touxiang/01.webp"/></div>
			  							<div class="zb3">
			  								<p><span class="blue">风教主解说</span><span  style="color:gray" class="float_r"><i><img src="./img/20.png"></i>2.7万</span></p>
			  								<p style="color:gray">不能场均12杀，吃什么鸡</p>
			  							</div>
			  						</div>
			  						</a>
			  						<a href="./other.html"><div class="zhibopaihang blue_f">
			  							<div class="zb1 gray">5</div>
			  							<div class="zb2"><img src="./touxiang/01.webp"/></div>
			  							<div class="zb3">
			  								<p><span class="blue">风教主解说</span><span  style="color:gray" class="float_r"><i><img src="./img/20.png"></i>2.7万</span></p>
			  								<p style="color:gray">不能场均12杀，吃什么鸡</p>
			  							</div>
			  						</div>
			  						</a>
			  						<a href="./other.html"><div class="zhibopaihang blue_f">
			  							<div class="zb1 gray">6</div>
			  							<div class="zb2"><img src="./touxiang/01.webp"/></div>
			  							<div class="zb3">
			  								<p><span class="blue">风教主解说</span><span  style="color:gray" class="float_r"><i><img src="./img/20.png"></i>2.7万</span></p>
			  								<p style="color:gray">不能场均12杀，吃什么鸡</p>
			  							</div>
			  						</div>
			  						</a>
			  						
			  					</div>
			  					<div></div>
			  					<div>
				  					<div id="lunbo2">
				  						<div id="lunbo_img" class="lunbo_img">
				  							<a href="./other.html"><img src="./lunbo/01.webp"/></a>
				  							<a href="./other.html"><img src="./lunbo/02.webp"/></a>
				  							<a href="./other.html"><img src="./lunbo/03.webp"/></a>
				  						</div>
				  						<div id="lunbo_mb" class="lunbo_mb"></div>
				  						<div id="lunbo_msg" class="lunbo_msg">
				  							<div style="display:block;">女装直播</div>
				  							<div>听说哔哩哔哩谷上线啦？</div>
				  							<div>bilibili相簿 画友千万奖励扶持来嘞</div>
				  						</div>
				  						<div id="lunbo_ico" class="lunbo_ico">
				  							<div class="lunbo_css"></div>
				  							<div></div>
				  							<div></div>
				  						</div>
				  					</div>
				  					<div id="lunbo_b">
				  						<a href="./other.html"><img src="./lunbo/21.webp"/></a>
				  						<a href="./other.html"><img src="./lunbo/22.webp"/></a>
				  					</div>
				  				</div>
			  				</div>
			  			</div>
	  				</div>
	  			</div>
	  		
	  			<div id="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/donghua.png"/>
		  					<a href="./other.html" class="blue"><b>动画</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>2017年十月精彩作画集锦</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	  				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  			
	  			
	  			<div id="fanju">
	  				<div class="left sh_f">
	  					<div class="fan">
		  					<img src="./headline/fanju.png"/>
		  					<a href="./other.html" class="blue"><b>番剧</b></a>	
		  					<div class="seven_day">
		  						<span class="sh click">最新</span>
		  						<span class="sh">一</span>
		  						<span class="sh">二</span>
		  						<span class="sh">三</span>
		  						<span class="sh">四</span>
		  						<span class="sh">五</span>
		  						<span class="sh">六</span>
		  						<span class="sh">日</span>
		  					</div>
		  					<a href="./other.html"><div id="new_fan">新番时间表</div></a>				
		  				</div>
		  				<div id="fan_box" class="video_box" style="display:block">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				
	  				</div>
	  				<div class="right">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">1</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">8</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">9</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">10</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  			
	  			<div id="fanjudongtai" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/donghua.png"/>
		  					<a href="./other.html" class="blue"><b>番剧动态</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>2017年十月精彩作画集锦</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right">
	 					<div class="right_t">
	  						<b>特别推荐</b>
	  					</div>
	  					<div id="lunbo3">
				  			<div id="lunbo_img3" class="lunbo_img">
				  				<a href="./other.html"><img src="./lunbo/04.webp"/></a>
				  				<a href="./other.html"><img src="./lunbo/05.webp"/></a>
				  			</div>
				  			<div id="lunbo_mb3" class="lunbo_mb"></div>
				  			<div id="lunbo_msg3" class="lunbo_msg">
				  				<div style="display:block;">我买脆皮股！</div>
				  				<div>和绝望和睦相处了吗</div>
				  			</div>
				  			<div id="lunbo_ico3" class="lunbo_ico">
				  				<div class="lunbo_css"></div>
				  				<div></div>
				  			</div>
				  		</div>
	 				</div>
	  			</div>
	  		
	  			<div id="guochuang">
	  				<div class="left sh_f">
	  					<div class="fan">
		  					<img src="./headline/fanju.png"/>
		  					<a href="./other.html" class="blue"><b>国创</b></a>	
		  					<div class="seven_day">
		  						<span class="sh click">最新</span>
		  						<span class="sh">一</span>
		  						<span class="sh">二</span>
		  						<span class="sh">三</span>
		  						<span class="sh">四</span>
		  						<span class="sh">五</span>
		  						<span class="sh">六</span>
		  						<span class="sh">日</span>
		  					</div>
		  					<a href="./other.html"><div id="new_fan">新番时间表</div></a>				
		  				</div>
		  				<div id="fan_box2" class="video_box" style="display:block">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				<div id="fan_box2" class="video_box">
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  					<div class="fan_all">
			  					<a href="./other.html"><div class="fan_img"><img src="./fan/01.webp"></div></a>
			  					<div class="fan_msg">
			  						<a href="./other.html"><p class="fan_p">舞动青春一二三四五</p></a>
			  						<p class=fan_p2>更新至 <span>5话</span></p>
			  					</div>
		  					</div>
		  				</div>
		  				
	  				</div>
	  				<div class="right">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">1</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀<span class="span_gray">更新至第3话</span></p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
							<div id="lunbo4">
				  			<div id="lunbo_img4" class="lunbo_img">
				  				<a href="./other.html"><img src="./lunbo/06.webp"/></a>
				  				<a href="./other.html"><img src="./lunbo/07.webp"/></a>
				  			</div>
				  			<div id="lunbo_mb4" class="lunbo_mb"></div>
				  			<div id="lunbo_ico4" class="lunbo_ico">
				  				<div class="lunbo_css"></div>
				  				<div></div>
				  			</div>
				  		</div>
	  					</div>
	  				</div>
	  			</div>
	  		
	  			<div id="guochuangxg" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/donghua.png"/>
		  					<a href="./other.html" class="blue"><b>国产原创相关</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>同人绘画大赛</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  			
	  			<div id="music" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/music.png"/>
		  					<a href="./other.html" class="blue"><b>音乐</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>emoj表情的魔性应用</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  			
	  			<div id="dance" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/dance.png"/>
		  					<a href="./other.html" class="blue"><b>舞蹈</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>胡萝卜到底辣不辣</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  			
	  			<div id="game" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/game.png"/>
		  					<a href="./other.html" class="blue"><b>游戏</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>刺客信条的起源原因是？</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>

	  		    <div id="science" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/science.png"/>
		  					<a href="./other.html" class="blue"><b>科学</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>安静会让你抓狂吗</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="guichu" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/guichu.png"/>
		  					<a href="./other.html" class="blue"><b>鬼畜</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>我就是要在鬼畜区唱豫剧</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="shishang" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/shishang.png"/>
		  					<a href="./other.html" class="blue"><b>时尚</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>巧克力混血妆</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="life" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/life.png"/>
		  					<a href="./other.html" class="blue"><b>生活</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>好吃到爆衣的中华小吃</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="guanggao" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/guanggao.png"/>
		  					<a href="./other.html" class="blue"><b>广告</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>撩妹技术哪家强</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="yule" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/yule.png"/>
		  					<a href="./other.html" class="blue"><b>娱乐</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>华晨宇戴面具惊艳献唱</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="dianying" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/dianying.png"/>
		  					<a href="./other.html" class="blue"><b>电影</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>《你的名字》免费放送</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>

				<div id="dianshiju" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/dianshiju.png"/>
		  					<a href="./other.html" class="blue"><b>电视剧</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>《猎场》上线了</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>

	  		    <div id="yingshi" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/yingshi.png"/>
		  					<a href="./other.html" class="blue"><b>影视</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>一场伟大的谋杀!</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    <div id="jilupian" class="box">
	  				<div class="left sh_f">
	  					<div class="headline">
		  					<img src="./headline/jilupian.png"/>
		  					<a href="./other.html" class="blue"><b>纪录片</b></a>
		  					<span class="sh click">有新动态</span>
		  					<span class="sh">最新投稿</span>
		  					<a href="./tuiguang.html"><span style="margin:0 0 0 20px"><img src="./img/18.png" style="vertical-align:2px;"/>biu！可爱担当上线</span></a>
		  					<div class="gengduo">
		  						<span>更多</span>
		  						<i>></i>
		  					</div>
		  					<div class="dongtai">
		  						<i></i>
		  						<span>1988条新动态</span>
		  					</div>
		  				</div>
	  					<div class="video_box" style="display:block">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  					<div class="video_box">
	  						<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">虎虎虎虎虎虎虎虎虎</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>1.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>0.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
		  					<div class="video_all">
		  					<a href="./tuiguang.html">
		  						<div class="video_top">
		  							<div class="video_top_mb"></div>
		  							<span>time</span>
		  						</div>
		  						<p style="height:20px;overflow:hidden;line-height:20px;">【Fate说】奥利匹克之花尼禄啊啊啊</p>
		  						<p style="line-height:20px;">
		  							<span><i><img src="./img/23.png" style="vertical-align:-2px;"></i>4.1万</span> 
		  							<span class="float_r"><i style="vertical-align:-2px;"><img src="./img/24.png"></i>3.6万</span>
		  						</p>
		  					</a>
		  					<img src="img/15.png" title="稍后再看" class="wait_ico"/>
		  					</div>
	  					</div>
	  				</div>
	 				<div class="right sh_f">
	  					<div class="right_t">
	  						<b>排行</b>
	  						<span class="sh click">全部</span>
	  						<span class="sh">原创</span>
	  						<select>
	  							<option value="day">三日</option>
	  							<option value="week">一周</option>
	  						</select>
	  					</div>
	  					<div class="video_box" style="display:block;">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  					<div class="video_box">
		  					<a href="./other.html"><div class="ph_first blue_f">
		  							<div class="three_red">1</div>
		  							<div class="three_red_img"><img src="./video/001.webp"/></div>
		  							<div class="three_red_msg">
		  								<p class="one_p blue">22还有这种操作,三分钟讲完火影忍者</p>
		  								<span>综合评分：35分</span>
		  							</div>
		  					</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">2</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="three_red">3</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">4</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">5</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">6</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
	  						<a href="./other.html"><div class="ph blue_f">
	  							<div  class="four_gray">7</div>
	  							<p class="six_p blue">蜡笔小新嘀嘀嘀嘀嘀嘀</p>
	  						</div></a>
							<a href="./other.html"><div class="ph_more">查看更多</div></a>
	  					</div>
	  				</div>
	  			</div>
	  		    
	  		    
	  		    
	  		</div>
  		</div>
  </body>
</html>