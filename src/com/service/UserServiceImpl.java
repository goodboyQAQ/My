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

@Service	//ɨ��Service���
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao; //ע��
	
	
	public Result login(String name,String pw){
		System.out.print("��ʼ��½");
		Result result=new Result();
		User user=userDao.findByName(name);
		if(user==null){
			result.setStatus(1);
			result.setMsg(name+"�û�������");
			return result;
		}
		//���û������pwd����
		String md5_pwd = null;
		try {
			md5_pwd = NoteUtil.md5(pw);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if(!user.getPassword().equals(md5_pwd)){
			result.setStatus(2);
			result.setMsg("���벻��ȷ");
			return result;
		}
		result.setStatus(0);
		result.setMsg("�û���������ȷ");
		result.setData(user);
		return result;
	}
	
	
	
	public Result regist(String username,String password,String tel){
		Result result=new Result();
		//����û����Ƿ�ռ��
		User has_user=userDao.findByName(username);
		if(has_user!=null){
			result.setStatus(1);
			result.setMsg("�û����ѱ�ռ��");
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
		//����userDao����
		userDao.save(user);
		result.setStatus(0);
		result.setMsg("ע��ɹ�");
		return result;
	}
	
	//���
	public Result findByName(String username) {
		User user=userDao.findByName(username);
		Result result=new Result();
		if(user==null){
			result.setMsg("�û�������");	
			result.setData(user);
			result.setStatus(0);			
		}else{
			result.setStatus(1);
			result.setData(user);
			result.setMsg("�û��Ѵ���");
		}
		return result;
	}
	public Result findById(int userId) {
		User user=userDao.findById(userId);
		Result result=new Result();
		result.setData(user);
		result.setMsg("��ѯ�ɹ�");
		result.setStatus(0);
		return result;
	}
}

