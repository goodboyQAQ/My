package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.OpusService;

@Controller
@RequestMapping("/opus")
public class OpusController {
	
	@Resource
	private OpusService opusService;
	@RequestMapping("/addopus.do")
	@ResponseBody
	public Result execute(){
		Result result=opusService.addOpus();
		return result;
	}
	
	
	@RequestMapping("/findbyuser.do")
	@ResponseBody
	public Result findByUser(int userId){
		Result result=opusService.findOpusByUser(userId);
		return result;
	}
}
