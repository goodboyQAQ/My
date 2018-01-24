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
						if($(this).find("img").attr("src")!="/img/12.png"){
							$(this).find("img").attr("src","/img/14.png");
						}
					},
					function(){
						if($(this).find("img").attr("src")!="/img/12.png"){
							$(this).find("img").attr("src","/img/13.png");
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
						ico.find("img").attr("src","/img/13.png");
						$(ico[nowId]).find("img").attr("src","/img/12.png");
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
				
				$(".video_box").on("click",".wi1",function(){
					$(this).css("display","none");
					$(this).siblings().css("display","inline-block");
					var a=$(this).parents(".video_all").find(".waitId").text();
					addId("id",a,"1");
					loadWait();
					
					
				});
				$(".video_box").on("click",".wi2",function(){
					$(this).css("display","none");
					$(this).siblings().css("display","inline-block");
					var a=$(this).parents(".video_all").find(".waitId").text();
					deleteId("id",a,"1");
					loadWait();
					
				});
				
				
				$(".video_box").on({
					mouseenter:function(){
						$(this).find(".video_top_mb").css("display","block");
						$(this).find(".wait_ico").css("display","block");
						$(this).find(".video_top span").css("display","block");
						$(this).find("p").css("color","RGB(90,190,240)").animate({height:"40px"},200);
					},
					mouseleave:function(){
						$(this).find(".video_top_mb").css("display","none");
						$(this).find(".wait_ico").css("display","none");
						$(this).find(".video_top span").css("display","none");
						$(this).find("p").css("color","").animate({height:"20px"},200);    
					}					
				},".video_all");
				
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
						$(this).find("#zhibo_img").css("background-image","url(/video/02.webp)");
					},
					function(){
						$(this).find("#zhibo_msg").css("color","").animate({height:"20px"},200);
						$(this).find("#zhibo_img").css("background-image","url(/video/01.webp)");
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
				
				
				$(".video_box").on({
					mouseenter:function(){
						$(this).find(".blue").css("color","RGB(90,190,240)");
					},
					mouseleave:function(){
						$(this).find(".blue").css("color","");
					}					
				},".blue_f");
				
				
				
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
				
				$(".s_top").change(function(){
					var type=$(this).parents(".vv").find(".type").text();
					var v=$(this).find("option:checked").val();
					var dom=$(this).parents(".vv");
					if(v=="day"){
						loadTop(type,"3",dom);
						loadTop0(type,"3","0",dom);
					}else{
						loadTop(type,"7",dom);
						loadTop0(type,"7","0",dom);
					}
				});
				
				$(".dongtai").click(function(){
					var dom=$(this).parents(".vv");
					var type=dom.find(".type").text();
					loadHome(type,dom);
					$(this).find("span").text("0条新动态");
					$(this).parents(".vv").find(".sh").eq(1).removeClass("click");
					$(this).parents(".vv").find(".sh").eq(0).addClass("click");
					$(this).parents(".vv").find(".va1").css("display","block");
					$(this).parents(".vv").find(".va2").css("display","none");
					
				});
				
							
			});



	
