package com.controller;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Results;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.MsgService;
import com.service.OpusService;

@Controller
@RequestMapping("/msg")
public class MsgController {
	
	@Resource
	private MsgService msgService;
	@RequestMapping("/add.do")
	@ResponseBody
	public Result execute(int toId,int fromId,int entityId,String msg,String type){
		Result result=msgService.add(toId, fromId, entityId, msg, type);
		return result;
	}
	
	@RequestMapping("/hasread.do")
	@ResponseBody
	public Result hasRead(int id){
		Result result=msgService.hasRead(id);
		return result;
	}
	
	@RequestMapping("/del.do")
	@ResponseBody
	public Result del(int id){
		Result result=msgService.del(id);
		return result;
	}
	
	@RequestMapping("/find.do")
	@ResponseBody
	public Result select(int toId){
		Result result=msgService.select(toId);
		return result;
	}
	
	@RequestMapping("/beforedel.do")
	@ResponseBody
	public Result beforeDel(int entityId,int fromId,String type){
		Result result=msgService.beforeDel(entityId, fromId, type);
		return result;
	}
	
	@RequestMapping("/findidbyuser.do")
	@ResponseBody
	public Result findIdByUser(int toId,int fromId,String type){
		Result result=msgService.findIdByUser(toId, fromId, type);
		return result;
	}
}
