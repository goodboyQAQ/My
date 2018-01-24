package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.OpusService;

@Controller
@RequestMapping("/opus")
public class FindOpusByIdController {
	
	@Resource
	private OpusService opusService;
	@RequestMapping("/loadopusbyid.do")
	@ResponseBody
	public Result execute(int id){
		Result result=opusService.findOpusById(id);
		return result;
	}
}
