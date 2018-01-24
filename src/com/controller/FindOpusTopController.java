package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.OpusService;

@Controller
@RequestMapping("/opus")
public class FindOpusTopController {
	
	@Resource
	private OpusService opusService;
	@RequestMapping("/loadtop.do")
	@ResponseBody
	public Result execute(String opusType,String time,String original){
		Result result=opusService.findOpusTop(opusType,time,original);
		return result;
	} 
}
