package com.service;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.util.RedisUtil;

@Service
public class LikeService {
	@Resource
	RedisService redisService;
	
	//获取喜欢数量
	public long getLikeCount(int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		return redisService.scard(likeKey);
	}
	//获取不喜欢数量
	public long getDisLikeCount(int entityType,int entityId){
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		return redisService.scard(disLikeKey);
	} 
	
	//获取状态 喜欢1  不喜欢-1  无状态0
	public int getLikeStatus(int userId,int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		if(redisService.sisremember(likeKey,String.valueOf(userId))){
			return 1;
		}
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		return redisService.sisremember(disLikeKey, String.valueOf(userId))?-1:0;
	}
	
	//点赞
	public long like(int userId,int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		redisService.sadd(likeKey,String.valueOf(userId));
		
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		redisService.srem(disLikeKey,String.valueOf(userId));
		
		return redisService.scard(likeKey);
	}
	//取消点赞
	public long nolike(int userId,int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		redisService.srem(likeKey,String.valueOf(userId));
		return redisService.scard(likeKey);
	}
	//踩
	public long disLike(int userId,int entityType,int entityId){
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		redisService.sadd(disLikeKey,String.valueOf(userId));
		
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		redisService.srem(likeKey,String.valueOf(userId));
		
		return redisService.scard(disLikeKey);
	}
	//取消踩
	public long nodisLike(int userId,int entityType,int entityId){
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		redisService.srem(disLikeKey,String.valueOf(userId));
		return redisService.scard(disLikeKey);
	}
	
	
	
}
