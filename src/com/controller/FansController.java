package com.controller;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.FansService;
import com.service.LikeService;

@Controller
@RequestMapping("/fans")
public class FansController {
	
	@Resource
	private FansService fansService;
	
	
	@RequestMapping("/add.do")
	@ResponseBody
	public long add(String userId,String userId2){
		return fansService.add(userId,userId2);
	}
	
	@RequestMapping("/remove.do")
	@ResponseBody
	public long remove(String userId,String userId2){
		return fansService.remove(userId,userId2);
	}
	
	@RequestMapping("/loadUser.do")
	@ResponseBody
	public Set<String> loadUser(String type,String userId){
		return fansService.loadUser(type, userId);
	}
	
	@RequestMapping("/exist.do")
	@ResponseBody
	public boolean exist(String type,String userId,String userId2){
		return fansService.exist(type, userId,userId2);
	}
	
}
