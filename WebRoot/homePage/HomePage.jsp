<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="utf-8"/>
		<link href="../css/HomePage.css" rel="stylesheet" type="text/css" /> 
		<script type="text/javascript" src="../js/jquery-1.11.1.js"></script>
		<script type="text/javascript" src="../js/cookieUtil.js"></script>
		<script type="text/javascript" src="../js/timestamp14.js"></script> 	
		<script type="text/javascript" src="../js/HomePage.js"></script>	
		<script type="text/javascript" src="../js/loadHomePage.js"></script>
		<script type="text/javascript">
			$(function(){
				var type=$(".vv").find(".type");
				var t;
				var dom;
				var tl=type.length;
				for(var i=0;i<tl;i++){
				dom=$(".vv").eq(i);
				t=type.eq(i).text();
				loadHome(t,dom);
				loadWait();					
				}
			});
		</script>
  </head>  
  <body>
  		<div id="bilibili">
  			<%@ include file="top.jsp" %>
	  		<div id="tbody">
	  			<%@ include file="first.jsp" %>
	  			<%@ include file="tuiguang.jsp" %>
	  			<%@ include file="donghua.jsp" %>
	  			<%@ include file="music.jsp" %>
	  			<%@ include file="dance.jsp" %>
	  			<%@ include file="game.jsp" %>
	  			<%@ include file="science.jsp" %>
	  			<%@ include file="life.jsp" %>
	  			<%@ include file="dianying.jsp" %>
	  			<%@ include file="dianshiju.jsp" %>
	  			<%@ include file="yingshi.jsp" %>
	  			
  			</div>
	  		
  		</div>
  </body>
</html>
