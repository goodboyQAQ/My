package com.service;

import com.entity.Result;

public interface DicussService {
	public Result addDicuss(int userId,String nickName,String userImg,int opusId,String sendType,int sendFloor,String msg,Integer toUser,String toNickName);
	public Result findCount(int opusId,String opusType,String sendFloor);
	public Result updicuss0(int opusId,int n);
	public Result maxdicuss0(int opusId,int n);
	public Result downreply(int opusId,int sendFloor,int n);
	public Result floor(Integer opusId);
	public Result findById(int dicussId);
	public Result findByFloor(int opusId,int sendFloor);
}
