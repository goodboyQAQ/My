package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Result;
import com.service.LikeService;
import com.service.MsgService;

@Controller
@RequestMapping("/dicuss")
public class LikeController {
	
	@Resource
	LikeService likeService;
	
	@RequestMapping("/like.do")
	@ResponseBody
	public long like(int entityType,int entityId){
		long n=likeService.getLikeCount(entityType, entityId);
		return n;
	}
	
	@RequestMapping("/dislike.do")
	@ResponseBody
	public long dislike(int entityType,int entityId){
		long n=likeService.getDisLikeCount(entityType, entityId);
		return n;
	}
	
	@RequestMapping("/tolike.do")
	@ResponseBody
	public long tolike(int userId,int entityType,int entityId){
		long n=likeService.like(userId,entityType, entityId);
		return n;
	}
	
	@RequestMapping("/todislike.do")
	@ResponseBody
	public long todislike(int userId,int entityType,int entityId){
		long n=likeService.disLike(userId,entityType, entityId);
		return n;
	}
	
	@RequestMapping("/status.do")
	@ResponseBody
	public long status(int userId,int entityType,int entityId){
		long n=likeService.getLikeStatus(userId, entityType, entityId);
		return n;
	}
	
	@RequestMapping("/nolike.do")
	@ResponseBody
	public long nolike(int userId,int entityType,int entityId){
		long n=likeService.nolike(userId, entityType, entityId);
		return n;
	}
	
	@RequestMapping("/nodislike.do")
	@ResponseBody
	public long nodislike(int userId,int entityType,int entityId){
		long n=likeService.nodisLike(userId, entityType, entityId);
		return n;
	}
	
}
