package com.service;


import com.entity.Result;

public interface UserService {
	public Result login(String name,String password);
	public Result regist(String username,String password,String tel);
	public Result findByName(String username);
	public Result findById(int userId);
}
