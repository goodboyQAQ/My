package com.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.MsgDao;
import com.entity.Msg;
import com.entity.Result;

@Service
public class MsgServiceImpl implements MsgService{

	@Resource
	MsgDao msgDao;
	
	public Result add(int toId, int fromId,int entityId,String msg, String type) {
		Msg message=new Msg();
		message.setToId(toId);
		message.setFromId(fromId);
		message.setEntityId(entityId);
		message.setMsg(msg);
		message.setType(type);
		msgDao.save(message);
		int id=message.getId();
		Result result=new Result();
		result.setMsg("已添加");
		result.setStatus(0);
		result.setData(id);
		return result;
	}

	public Result hasRead(int id) {
		msgDao.hasRead(id);
		Result result=new Result();
		result.setMsg("已读");
		result.setStatus(0);
		return result;
	}

	public Result select(int toId) {
		List<Map> list=msgDao.select(toId);
		Result result=new Result();
		result.setData(list);
		result.setStatus(0);
		result.setMsg("已查看");
		return result;
	}

	public Result del(int id) {
		msgDao.del(id);
		Result result=new Result();
		result.setMsg("取消点赞");
		result.setStatus(0);
		return result;
	}

	public Result beforeDel(int entityId, int fromId, String type) {
		Msg msg=msgDao.beforeDel(entityId, fromId, type);
		Result result=new Result();
		result.setMsg("验证点赞存在");
		result.setStatus(0);
		result.setData(msg);
		return result;
	}

	public Result findIdByUser(int toId, int fromId, String type) {
		Msg msg=msgDao.findIdByUser(toId, fromId, type);
		Result result=new Result();
		result.setMsg("点赞消息成功");
		result.setStatus(0);
		result.setData(msg);
		return result;
	}

}
