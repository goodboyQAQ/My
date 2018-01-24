package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;
	
	
	@RequestMapping("/add.do")
	@ResponseBody
	public Result execute(String userName,String password,String tel){
		Result result=userService.regist(userName, password, tel);
		return result;
	}
	
	@RequestMapping("/login.do")
	@ResponseBody
	public Result login(String name,String password){
		Result result=userService.login(name, password);
		return result;
	}
	
	@RequestMapping("/findbyid.do")
	@ResponseBody
	public Result execute3(int userId){
		Result result=userService.findById(userId);
		return result;
	}
	
	@RequestMapping("/findbyname.do")
	@ResponseBody
	public Result execute4(String username){
		Result result=userService.findByName(username);
		return result;
	}
}
