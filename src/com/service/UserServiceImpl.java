package com.service;

import java.security.NoSuchAlgorithmException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.Result;
import com.entity.User;
import com.util.NoteUtil;

@Service	//扫描Service组件
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao; //注入
	
	
	public Result login(String name,String pw){
		System.out.print("开始登陆");
		Result result=new Result();
		User user=userDao.findByName(name);
		if(user==null){
			result.setStatus(1);
			result.setMsg(name+"用户不存在");
			return result;
		}
		//将用户输入的pwd加密
		String md5_pwd = null;
		try {
			md5_pwd = NoteUtil.md5(pw);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if(!user.getPassword().equals(md5_pwd)){
			result.setStatus(2);
			result.setMsg("密码不正确");
			return result;
		}
		result.setStatus(0);
		result.setMsg("用户名密码正确");
		result.setData(user);
		return result;
	}
	
	
	
	public Result regist(String username,String password,String tel){
		Result result=new Result();
		//检测用户名是否被占用
		User has_user=userDao.findByName(username);
		if(has_user!=null){
			result.setStatus(1);
			result.setMsg("用户名已被占用");
			result.setData(has_user);
			return result;
		}
		
		User user=new User();
		try {
			password=NoteUtil.md5(password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		user.setUserName(username);
		user.setNickName(username);
		user.setPassword(password);
		user.setTel(tel);
		//调用userDao保存
		userDao.save(user);
		result.setStatus(0);
		result.setMsg("注册成功");
		return result;
	}
	
	//检测
	public Result findByName(String username) {
		User user=userDao.findByName(username);
		Result result=new Result();
		if(user==null){
			result.setMsg("用户名可用");	
			result.setData(user);
			result.setStatus(0);			
		}else{
			result.setStatus(1);
			result.setData(user);
			result.setMsg("用户已存在");
		}
		return result;
	}
	public Result findById(int userId) {
		User user=userDao.findById(userId);
		Result result=new Result();
		result.setData(user);
		result.setMsg("查询成功");
		result.setStatus(0);
		return result;
	}
}

