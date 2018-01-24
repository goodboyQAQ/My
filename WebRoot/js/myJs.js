var getUrlId=function(){
	var url = location.search; //获取url中"?"符后的字串

	if(url.indexOf("?") != -1) {    //判断是否有参数
	    var str = url.substr(1); //从第一个字符开始 因为第0个是?号 获取所有除问号的所有符串
	    var strs = str.split("=");   //用等号进行分隔 （因为知道只有一个参数 所以直接用等号进分隔 如果有多个参数 要用&号分隔 再用等号进行分隔）
	      return strs[1];                   //直接弹出第一个参数 （如果有多个参数 还要进行循环的）
	}
	return ;
}


//分页显示
var paging=function(page,nowPage){
	var li;
	//2-5页
	if(1<page&page<6){
		//第一页没有上一页
		if(nowPage==1){
			li='<div class="page_div" style="font-size:20px;">共<span class="total">'+page+
			'</span>页<span hidden="hidden" class="current">'+nowPage+
			'</span><span class="homepage page_on">首页</span>';
		}else{
			li='<div class="page_div" style="font-size:20px;">共<span class="total">'+page+
			'</span>页<span hidden="hidden" class="current">'+nowPage+
			'</span><span class="homepage page_on">首页</span>'+
			'<span class="prev page_on">上一页</span>';
		}
		
		for(var i=1;i<=page;i++){
			if(i==nowPage){
				li+='<span class="page">'+i+'</span>';
			}else{
				li+='<span class="page page_on">'+i+'</span>';
			}
			
		}
		if(nowPage!=page){
			li+='<span class="next page_on">下一页</span><span class="last page_on">末页</span>';
		}else{
			li+='<span class="last page_on">末页</span>';
		}
		
	}
	//6页以上
	if(page>5){
		if(nowPage==1){
			li='<div class="page_div" style="font-size:20px;">共<span class="total">'+page+
			'</span>页<span hidden="hidden" class="current">'+nowPage+
			'</span><span class="homepage page_on">首页</span>';
		}else{
			li='<div class="page_div" style="font-size:20px;">共<span class="total">'+page+
			'</span>页<span hidden="hidden" class="current">'+nowPage+
			'</span><span class="homepage page_on">首页</span>'+
			'<span class="prev page_on">上一页</span>';
		}
		//当前页小于4 就按 1 2 3 4 5 ...显示
		if(nowPage<4){
			for(var i=1;i<=5;i++){
				if(i==nowPage){
					li+='<span class="page">'+i+'</span>';
				}else{
					li+='<span class="page page_on">'+i+'</span>';
				}
			}
			li+='<span class="page">...</span>';
		}
		//当前页大于3页就按  ... 2 3 4 5 6.....
		if(nowPage>=4){
			
			if(nowPage+2>=page){
				if(page-4>1){
					li+='<span class="page">...</span>';
				}
				for(var i=page-4;i<=page;i++){
					if(i==nowPage){
						li+='<span class="page">'+i+'</span>';
					}else{
						li+='<span class="page page_on">'+i+'</span>';
					}
				}
			}else{
				li+='<span class="page">...</span>';
				for(var i=nowPage-2;i<=nowPage+2;i++){
					if(i==nowPage){
						li+='<span class="page">'+i+'</span>';
					}else{
						li+='<span class="page page_on">'+i+'</span>';
					}
				}
				li+='<span class="page">...</span>';
			}
				
		}
		if(nowPage!=page){
			li+='<span class="next page_on">下一页</span><span class="last page_on">末页</span>';
		}else{
			li+='<span class="last page_on">末页</span>';
		}
	}
	return li;
}


//分页显示
var paging2=function(page,nowPage){
	var li;
	//2-5页
	if(1<page&page<6){
		//第一页没有上一页
		if(nowPage==1){
			li='<div class="page_div2" style="font-size:13px;"><span class="total2" hidden="hidden">'+page+
			'</span><span hidden="hidden" class="current2">'+nowPage+
			'</span>';
		}else{
			li='<div class="page_div2" style="font-size:13px;"><span class="total2" hidden="hidden">'+page+
			'</span><span hidden="hidden" class="current2">'+nowPage+
			'</span>'+
			'<span class="prev2 page_on2">上一页</span>';
		}
		
		for(var i=1;i<=page;i++){
			if(i==nowPage){
				li+='<span class="page">'+i+'</span>';
			}else{
				li+='<span class="page page_on2">'+i+'</span>';
			}
			
		}
		if(nowPage!=page){
			li+='<span class="next2 page_on2">下一页</span>';
		}else{
			li+='';
		}
		
	}
	//6页以上
	if(page>5){
		if(nowPage==1){
			li='<div class="page_div2" style="font-size:13px;"><span class="total2" hidden="hidden">'+page+
			'</span><span hidden="hidden" class="current2">'+nowPage+
			'</span>';
		}else{
			li='<div class="page_div2" style="font-size:13px;"><span class="total2" hidden="hidden">'+page+
			'</span><span hidden="hidden" class="current2">'+nowPage+
			'</span>'+
			'<span class="prev2 page_on2">上一页</span>';
		}
		//当前页小于4 就按 1 2 3 4 5 ...显示
		if(nowPage<4){
			for(var i=1;i<=5;i++){
				if(i==nowPage){
					li+='<span class="page">'+i+'</span>';
				}else{
					li+='<span class="page page_on2">'+i+'</span>';
				}
			}
			li+='<span class="page">...</span>';
		}
		//当前页大于3页就按  ... 2 3 4 5 6.....
		if(nowPage>=4){
			
			if(nowPage+2>=page){
				if(page-4>1){
					li+='<span class="page">...</span>';
				}
				for(var i=page-4;i<=page;i++){
					if(i==nowPage){
						li+='<span class="page">'+i+'</span>';
					}else{
						li+='<span class="page page_on2">'+i+'</span>';
					}
				}
			}else{
				li+='<span class="page">...</span>';
				for(var i=nowPage-2;i<=nowPage+2;i++){
					if(i==nowPage){
						li+='<span class="page">'+i+'</span>';
					}else{
						li+='<span class="page page_on2">'+i+'</span>';
					}
				}
				li+='<span class="page">...</span>';
			}
				
		}
		if(nowPage!=page){
			li+='<span class="next2 page_on2">下一页</span>';
		}else{
			li+='';
		}
	}
	return li;
}



