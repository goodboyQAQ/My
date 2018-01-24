package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.DicussService;
import com.service.OpusService;

@Controller
@RequestMapping("/dicuss")
public class DicussController {
	
	@Resource
	private DicussService dicussService;
	@RequestMapping("/count.do")
	@ResponseBody
	public Result execute(int opusId,String sendType,String sendFloor){
		Result result=dicussService.findCount(opusId,sendType,sendFloor);
		return result;
	}
	
	//≤È’“
	@RequestMapping("/updicuss.do")
	@ResponseBody
	public Result execute1(int opusId,int n){
		Result result=dicussService.updicuss0(opusId, n);
		return result;
	}
	
	
	@RequestMapping("/maxdicuss.do")
	@ResponseBody
	public Result execute2(int opusId,int n){
		Result result=dicussService.maxdicuss0(opusId, n);
		return result;
	}
	
	
	@RequestMapping("/downreply.do")
	@ResponseBody
	public Result execute3(int opusId,int sendFloor,int n){
		Result result=dicussService.downreply(opusId,sendFloor, n);
		return result;
	}

	@RequestMapping("/add.do")
	@ResponseBody
	public Result execute4(int userId,String nickName,String userImg,int opusId,String sendType,int sendFloor,String msg,Integer toUser,String toNickName){
		Result result=dicussService.addDicuss(userId, nickName, userImg, opusId, sendType, sendFloor, msg, toUser, toNickName);
		return result;
	}
	
	@RequestMapping("/floor.do")
	@ResponseBody
	public Result execute5(Integer opusId){
		Result result=dicussService.floor(opusId);
		return result;
	}
	
	
}


