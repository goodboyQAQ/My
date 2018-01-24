package com.dao;

import org.apache.ibatis.annotations.Param;

import com.entity.User;

public interface UserDao {
	public User login(@Param("name")String name,@Param("password")String password);
	public int save(User user);
	public User findById(@Param("userId")int userId);
	public User findByName(@Param("userName")String userName);
}
