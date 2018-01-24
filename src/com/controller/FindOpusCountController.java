package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.OpusService;

@Controller
@RequestMapping("/opus")
public class FindOpusCountController {
	
	@Resource
	private OpusService opusService;
	@RequestMapping("/loadcount.do")
	@ResponseBody
	public Result execute(String opusType,long time){
		Result result=opusService.findOpusCount(opusType,time);
		return result;
	}
}
