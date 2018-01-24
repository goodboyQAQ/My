var like=function(id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/like.do",
		  type:"post",
		  data:{"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}

var dislike=function(id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/dislike.do",
		  type:"post",
		  data:{"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}

var tolike=function(userId,id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/tolike.do",
		  type:"post",
		  data:{"userId":userId,"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}

var todislike=function(userId,id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/todislike.do",
		  type:"post",
		  data:{"userId":userId,"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}

var loadstatus=function(userId,id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/status.do",
		  type:"post",
		  data:{"userId":userId,"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}

var nolike=function(userId,id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/nolike.do",
		  type:"post",
		  data:{"userId":userId,"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}

var nodislike=function(userId,id){
	var n;
	$.ajax({
		  url:"http://localhost:8888/Bilibili/dicuss/nodislike.do",
		  type:"post",
		  data:{"userId":userId,"entityType":0,"entityId":id},
		  dataType:"json",
		  async:false,
		  success:function(result){
			 n=result; 
		  },
		  error:function(){
			alert("查询新动态数量错误");
		  }
	});
	return n;
}