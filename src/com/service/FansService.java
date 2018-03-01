 package com.service;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.async.EventModel;
import com.async.EventProducer;
import com.async.EventType;
import com.util.RedisUtil;

@Service
public class FansService {
	@Resource
	RedisService redisService;
	@Resource
	EventProducer eventProducer;
	
	//粉丝关注列表
	public Set<String> loadUser(String type,String userId){
		String key=type+":"+userId;
		return redisService.smember(key);
	}
	
	public long add(String userId,String userId2){
		//userId的粉丝表
		String key="fans:"+userId;
		//userId2的关注表
		String key2="follow:"+userId2;
		redisService.sadd(key2, userId);
		
		Integer user=Integer.parseInt(userId);
		Integer user2=Integer.parseInt(userId2);
		eventProducer.fireEvent(new EventModel(EventType.FOLLOW).setActorId(user2).setEntityOwnerId(user));
		
		return redisService.sadd(key, userId2);
	}
	
	public long remove(String userId,String userId2){
		String key="fans:"+userId;
		String key2="follow:"+userId2;
		redisService.srem(key2,userId);
		
		Integer user=Integer.parseInt(userId);
		Integer user2=Integer.parseInt(userId2);
		eventProducer.fireEvent(new EventModel(EventType.NOFOLLOW).setActorId(user2).setEntityOwnerId(user));
		
		return redisService.srem(key, userId2);
	}
	
	public boolean exist(String type,String userId,String userId2){
		String key=type+":"+userId;
		return redisService.sisremember(key, userId2);
	}
	
	 
}
