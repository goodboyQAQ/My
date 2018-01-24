package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.OpusService;

@Controller
@RequestMapping("/opus")
public class FindNewOpusController {
	
	@Resource
	private OpusService opusService;
	@RequestMapping("/loadnewopus.do")
	@ResponseBody
	public Result execute(String opusType){
		Result result=opusService.findNewOpus(opusType);
		return result;
	}
}
