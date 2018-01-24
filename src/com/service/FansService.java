package com.service;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.util.RedisUtil;

@Service
public class FansService {
	@Resource
	RedisService redisService;
	
	//��˿��ע�б�
	public Set<String> loadUser(String type,String userId){
		String key=type+":"+userId;
		return redisService.smember(key);
	}
	
	public long add(String userId,String userId2){
		//userId�ķ�˿��
		String key="fans:"+userId;
		//userId2�Ĺ�ע��
		String key2="follow:"+userId2;
		redisService.sadd(key2, userId);
		return redisService.sadd(key, userId2);
	}
	
	public long remove(String userId,String userId2){
		String key="fans:"+userId;
		String key2="follow:"+userId2;
		redisService.srem(key2,userId);
		return redisService.srem(key, userId2);
	}
	
	public boolean exist(String type,String userId,String userId2){
		String key=type+":"+userId;
		return redisService.sisremember(key, userId2);
	}
	
	 
}
