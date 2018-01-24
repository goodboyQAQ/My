package com.service;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.util.RedisUtil;

@Service
public class LikeService {
	@Resource
	RedisService redisService;
	
	//��ȡϲ������
	public long getLikeCount(int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		return redisService.scard(likeKey);
	}
	//��ȡ��ϲ������
	public long getDisLikeCount(int entityType,int entityId){
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		return redisService.scard(disLikeKey);
	} 
	
	//��ȡ״̬ ϲ��1  ��ϲ��-1  ��״̬0
	public int getLikeStatus(int userId,int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		if(redisService.sisremember(likeKey,String.valueOf(userId))){
			return 1;
		}
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		return redisService.sisremember(disLikeKey, String.valueOf(userId))?-1:0;
	}
	
	//����
	public long like(int userId,int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		redisService.sadd(likeKey,String.valueOf(userId));
		
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		redisService.srem(disLikeKey,String.valueOf(userId));
		
		return redisService.scard(likeKey);
	}
	//ȡ������
	public long nolike(int userId,int entityType,int entityId){
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		redisService.srem(likeKey,String.valueOf(userId));
		return redisService.scard(likeKey);
	}
	//��
	public long disLike(int userId,int entityType,int entityId){
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		redisService.sadd(disLikeKey,String.valueOf(userId));
		
		String likeKey=RedisUtil.getLikeKey(entityType, entityId);
		redisService.srem(likeKey,String.valueOf(userId));
		
		return redisService.scard(disLikeKey);
	}
	//ȡ����
	public long nodisLike(int userId,int entityType,int entityId){
		String disLikeKey=RedisUtil.getDisLikeKey(entityType, entityId);
		redisService.srem(disLikeKey,String.valueOf(userId));
		return redisService.scard(disLikeKey);
	}
	
	
	
}
