package com.service;


import com.entity.Result;

public interface MsgService {
	public Result add(int toId,int fromId,int entityId,String msg,String type);
	public Result hasRead(int id);
	public Result del(int id);
	public Result select(int toId);
	public Result beforeDel(int entityId,int fromId,String type);
	public Result findIdByUser(int toId,int fromId,String type);
}
